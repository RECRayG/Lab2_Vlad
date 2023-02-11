package ru.schedule.lab2.gui;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.Groups;
import ru.schedule.lab2.gui.add.GroupAddPanel;
import ru.schedule.lab2.gui.error.infoMessage;
import ru.schedule.lab2.gui.search.model.rowFilter;
import ru.schedule.lab2.gui.search.searchPanel;
import ru.schedule.lab2.map.GroupsMap;

import javax.swing.*;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.image.BufferedImage;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static java.sql.Types.NULL;
import static ru.schedule.lab2.constants.CONST.*;

public class GroupPanel extends BasePanel {
    private final GroupsMap map = new GroupsMap();

    private JButton add;
    private JButton edit;
    private JButton delete;
    private JButton search;
    private JButton searchClear;
    private JPanel buttonPanel;

    private JButton apply;
    private JButton cancel;
    private JPanel buttonPanelEdit;
    private boolean isFilter = false;
    private final Map<Integer, Groups> rowToGroup = new HashMap<>();
    private JFrame mainWindow;
    private SchedulePanel schedulePanel;
    private TableRowSorter<AbstractTableModel> rowSorterGroups;

    private JLabel filterMainLabel;
    private JLabel filterMainLabelText;
    private JLabel filterRequireLabel;

    public GroupPanel(JFrame mainWindow, SchedulePanel schedulePanel) {
        super();
        // Загрузить данные в модель таблицы
        fillData();

        this.mainWindow = mainWindow;
        this.schedulePanel = schedulePanel;

        rowSorterGroups = new TableRowSorter<>(this.tableModel);
        this.table.setRowSorter(rowSorterGroups);
    }

    private void fillDataEdit() {
        int rowCount = tableModelEdit.getRowCount();
        for (int i = 0; i < rowCount; i++) tableModelEdit.removeRow(i);

        Groups group;
        // Если фильтр не применён
        if(!isFilter) {
            group = rowToGroup.get(table.getSelectedRow());
        } // Если фильтр применён
        else {
            group = rowToGroup.get(table.convertRowIndexToModel(table.getSelectedRow()));
        }

        if(tableEdit.getColumnCount() == 0) tableModelEdit.setColumnIdentifiers(new Object[]{GROUP_NAME});
        Object[] temp = new Object[] {
                group.getGroupName()
        };

        tableModelEdit.addRow(temp);

        tableModelEdit.addTableModelListener(new TableModelListener() {
            @Override
            public void tableChanged(TableModelEvent e) {
                apply.setEnabled(true);
            }
        });
    }

    private void fillData() {
        int rowCount = tableModel.getRowCount();
        for (int i = 0; i < rowCount; i++) tableModel.removeRow(0);
        List<Groups> groups = map.findAll("Select G From " + map.getTableName() + " G");
        List<Object[]> all = groups.stream().map(group -> new Object[] {
                group.getGroupName()
        }).collect(Collectors.toList());
        tableModel.setColumnIdentifiers(new Object[]{GROUP_NAME});
        for (int i = 0; i < groups.size(); i++) {
            tableModel.addRow(all.get(i));
            rowToGroup.put(i, groups.get(i));
        }

        TableColumnModel tcm = table.getColumnModel();
        Enumeration<TableColumn> e = tcm.getColumns();

        BufferedImage img = new BufferedImage(1,1, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2d = img.createGraphics();
        FontMetrics fm = g2d.getFontMetrics();

        while(e.hasMoreElements()) {
            TableColumn column = e.nextElement();
            column.setMinWidth(fm.stringWidth(tableModel.getColumnName(0) + "    "));
        }

        // Настройка модели выбора элементов из таблицы
        table.setSelectionModel(new DefaultListSelectionModel() // Модель выбора для удобного интерфейса
        {
            @Override
            public void setSelectionInterval(int startIndex, int endIndex) {
                if (startIndex == endIndex) // Если выбран один элемент
                {
                    if (getMinSelectionIndex() != getMaxSelectionIndex())
                    {
                        clearSelection(); // Убрать выделение
                        edit.setEnabled(false);
                        delete.setEnabled(false);
                    }
                    if (isSelectedIndex(startIndex))
                    {
                        clearSelection(); // Убрать выделение
                        edit.setEnabled(false);
                        delete.setEnabled(false);
                    }
                    else {
                        super.setSelectionInterval(startIndex, endIndex); // Добавить выделение
                        edit.setEnabled(true);
                        delete.setEnabled(true);
                    }
                }
            }
        });

        table.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.getKeyCode() == KeyEvent.VK_LEFT) {
                    table.getSelectionModel().clearSelection();
                }
                if (e.getKeyCode() == KeyEvent.VK_RIGHT) {
                    table.getSelectionModel().clearSelection();
                }
                if (e.getKeyCode() == KeyEvent.VK_UP) {
                    table.getSelectionModel().clearSelection();
                }
                if (e.getKeyCode() == KeyEvent.VK_DOWN) {
                    table.getSelectionModel().clearSelection();
                }
            }
        });
    }

    @Override
    protected JPanel getMenu() {
        add = new JButton(ADD_BUTTON);
        add.addActionListener(this::onAdd);
        //add.setPreferredSize(new Dimension(200, 100));

        edit = new JButton(EDIT_BUTTON);
        edit.setEnabled(false);
        edit.addActionListener(this::onEdit);
        //edit.setPreferredSize(new Dimension(200, 100));

        delete = new JButton(DELETE_BUTTON);
        delete.setEnabled(false);
        delete.addActionListener(this::onDelete);
        //delete.setPreferredSize(new Dimension(200, 100));

        search = new JButton(SEARCH_BUTTON);
        search.addActionListener(this::onSearch);

        searchClear = new JButton(CLEAR_SEARCH_BUTTON);
        searchClear.addActionListener(this::onSearchClear);
        searchClear.setEnabled(false);

        filterMainLabel = new JLabel("Поиск по");
        filterMainLabelText = new JLabel();
        filterRequireLabel = new JLabel();

        filterMainLabel.setVisible(false);
        filterMainLabelText.setVisible(false);
        filterRequireLabel.setVisible(false);

        buttonPanel = new JPanel();
        buttonPanel.setLayout(new MigLayout());
        buttonPanel.add(add, "cell 0 0, split 5");
        buttonPanel.add(edit, "cell 1 0");
        buttonPanel.add(delete, "cell 2 0");
        buttonPanel.add(search, "cell 3 0");
        buttonPanel.add(searchClear, "cell 4 0, wrap 20");
        buttonPanel.add(filterMainLabel, "al left, split 2");
        buttonPanel.add(filterMainLabelText, "al left, wrap");
        buttonPanel.add(filterRequireLabel, "al left");
        return buttonPanel;
    }

    private void onSearchClear(ActionEvent actionEvent) {
        rowSorterGroups.setRowFilter(new rowFilter("", 0, this.tableModel).regexFilter(""));
        search.setEnabled(true);
        searchClear.setEnabled(false);
        table.clearSelection();
        edit.setEnabled(false);
        delete.setEnabled(false);
        add.setEnabled(true);
        isFilter = false;
    }

    private void onSearch(ActionEvent actionEvent) {
        new searchPanel(mainWindow, search, searchClear, filterMainLabelText, filterRequireLabel, rowSorterGroups, tableModel, table);
        table.clearSelection();
        edit.setEnabled(false);
        delete.setEnabled(false);
        add.setEnabled(false);
        isFilter = true;
    }

    private void onDelete(ActionEvent actionEvent) {
        // Кнопка удаления не активна, потому что снимается выделение
        delete.setEnabled(false);
        edit.setEnabled(false);

        Groups group;
        // Если фильтр не применён
        if(!isFilter) {
            group = rowToGroup.get(table.getSelectedRow());
            rowToGroup.remove(table.getSelectedRow());
        } // Если фильтр применён
        else {
            group = rowToGroup.get(table.convertRowIndexToModel(table.getSelectedRow()));
            rowToGroup.remove(table.convertRowIndexToModel(table.getSelectedRow()));
        }

        map.delete(group);
        // Снять выделение
        this.table.clearSelection();
        // Перерисовать основную таблицу, захватывая данные из БД
        update();
        // Применить перерисовку
        table.revalidate();

        schedulePanel.update();
        schedulePanel.table.revalidate();
    }

    private void onEdit(ActionEvent actionEvent) {
        cardLayout.show(this, "editPanel");
        apply.setEnabled(false);
        this.tableEdit.clearSelection();

        fillDataEdit();
    }

    private void onAdd(ActionEvent actionEvent) {
        new GroupAddPanel(mainWindow, this, table, this.schedulePanel);
    }

    @Override
    protected JPanel getMenuEdit() {
        apply = new JButton(APPLY_BUTTON);
        apply.setEnabled(false);
        apply.addActionListener(this::onApply);
        //add.setPreferredSize(new Dimension(200, 100));

        cancel = new JButton(CANCEL_BUTTON);
        cancel.addActionListener(this::onCancel);
        //edit.setPreferredSize(new Dimension(200, 100));

        buttonPanelEdit = new JPanel();
        buttonPanelEdit.setLayout(new MigLayout());
        buttonPanelEdit.add(apply, "cell 0 0");
        buttonPanelEdit.add(cancel, "cell 1 0");
        return buttonPanelEdit;
    }

    private void onApply(ActionEvent actionEvent) {
        // Проверка на валидность данных
        if(tableEdit.getValueAt(tableEdit.getSelectedRow(), 0).toString().trim().equals("")) {
            new infoMessage(mainWindow, ERROR_PROFESSOR_LASTNAME, ERROR_PROFESSOR);
            return;
        }

        // Кнопка редактирования не активна, потому что снимается выделение
        edit.setEnabled(false);
        delete.setEnabled(false);

        // Получение профессора из редактируемого ряда
        Groups group = getGroupFromSelectedRow(tableEdit, tableModelEdit);
        // Обновление профессора в коллекции
        Groups tempGroup;
        // Если фильтр не применён
        if(!isFilter) {
            tempGroup = rowToGroup.get(table.getSelectedRow());
            group.setIdGroup(tempGroup.getIdGroup());
            rowToGroup.put(table.getSelectedRow(), group);
        } // Если фильтр применён
        else {
            tempGroup = rowToGroup.get(table.convertRowIndexToModel(table.getSelectedRow()));
            group.setIdGroup(tempGroup.getIdGroup());
            rowToGroup.put(table.convertRowIndexToModel(table.getSelectedRow()), group);
        }

        GroupsMap groupsMap = new GroupsMap();
        if(groupsMap.getIdGroupByValue(group.getGroupName()) != NULL) {
            new infoMessage(this.mainWindow, "Введённая группа уже существует", "Ошибка");
            return;
        }

        // Операция в БД
        map.edit(group);
        // Снять выделение
        this.table.clearSelection();
        // Перерисовать основную таблицу, захватывая данные из БД
        update();
        // Применить перерисовку
        table.revalidate();

        schedulePanel.update();
        schedulePanel.table.revalidate();

        // Кнопка применить неактивна, потому что снимается выделение в редактируемой таблице
        apply.setEnabled(false);
        // Показать основное окно
        cardLayout.show(this, "mainPanel");
    }

    private void onCancel(ActionEvent actionEvent) {
        edit.setEnabled(false);
        apply.setEnabled(false);
        delete.setEnabled(false);
        this.table.clearSelection();

        // Обновление редактированной таблицы
        tableModelEdit = new DefaultTableModel();
        tableEdit.setModel(tableModelEdit);
        tableEdit.revalidate();

        cardLayout.show(this, "mainPanel");
    }

    public Groups getGroupFromSelectedRow(JTable tempTable, DefaultTableModel tempTableModel) {
        // Получение группы из редактируемого ряда
        Groups group = new Groups();
        for(int i = 0; i < tempTable.getColumnCount(); i++) {
            switch (i) {
                case 0:
                    group.setGroupName(String.valueOf(tempTableModel.getValueAt(tempTable.getSelectedRow(), i)));
                    break;
            }
        }

        return group;
    }

    @Override
    public void update() {
        fillData();
    }
}
