package ru.schedule.lab2.gui;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.entity.Schedules;
import ru.schedule.lab2.gui.add.ProfessorAddPanel;
import ru.schedule.lab2.gui.error.infoMessage;
import ru.schedule.lab2.gui.search.model.rowFilter;
import ru.schedule.lab2.gui.search.searchPanel;
import ru.schedule.lab2.map.GroupsMap;
import ru.schedule.lab2.map.ProfessorsMap;
import ru.schedule.lab2.map.SchedulesMap;

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

public class ProfessorsPanel extends BasePanel {

    private final ProfessorsMap map = new ProfessorsMap();

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
    private final Map<Integer, Professors> rowToProfessor = new HashMap<>();
    private JFrame mainWindow;
    private SchedulePanel schedulePanel;
    private TableRowSorter<AbstractTableModel> rowSorterProfessors;

    private JLabel filterMainLabel;
    private JLabel filterMainLabelText;
    private JLabel filterRequireLabel;

    private SchedulesMap schedulesMap = new SchedulesMap();

    public ProfessorsPanel(JFrame mainWindow, SchedulePanel schedulePanel) {
        super();
        // Загрузить данные в модель таблицы
        fillData();

        this.mainWindow = mainWindow;
        this.schedulePanel = schedulePanel;

        rowSorterProfessors = new TableRowSorter<>(this.tableModel);
        this.table.setRowSorter(rowSorterProfessors);
    }

    private void fillDataEdit() {
        int rowCount = tableModelEdit.getRowCount();
        for (int i = 0; i < rowCount; i++) tableModelEdit.removeRow(i);

        Professors professor;
        // Если фильтр не применён
        if(!isFilter) {
            professor = rowToProfessor.get(table.getSelectedRow());
        } // Если фильтр применён
        else {
            professor = rowToProfessor.get(table.convertRowIndexToModel(table.getSelectedRow()));
        }

        if(tableEdit.getColumnCount() == 0) tableModelEdit.setColumnIdentifiers(new Object[]{PROFESSORS_LASTNAME, PROFESSORS_FIRSTNAME, PROFESSORS_MIDDLENAME});
        Object[] temp = new Object[] {
                professor.getLastName(),
                professor.getFirstName(),
                professor.getMiddleName()
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
        List<Professors> professors = map.findAll("Select P From " + map.getTableName() + " P");
        List<Object[]> all = professors.stream().map(professor -> new Object[] {
                professor.getLastName(), professor.getFirstName(), professor.getMiddleName()
        }).collect(Collectors.toList());
        tableModel.setColumnIdentifiers(new Object[]{PROFESSORS_LASTNAME, PROFESSORS_FIRSTNAME, PROFESSORS_MIDDLENAME});
        for (int i = 0; i < professors.size(); i++) {
            tableModel.addRow(all.get(i));
            rowToProfessor.put(i, professors.get(i));
        }

        TableColumnModel tcm = table.getColumnModel();
        Enumeration<TableColumn> e = tcm.getColumns();

        BufferedImage img = new BufferedImage(1,1, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2d = img.createGraphics();
        FontMetrics fm = g2d.getFontMetrics();

        int i = 0;
        while(e.hasMoreElements()) {
            TableColumn column = e.nextElement();
            column.setMinWidth(fm.stringWidth(tableModel.getColumnName(i) + "    "));
            i++;
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
        rowSorterProfessors.setRowFilter(new rowFilter("", 0, this.tableModel).regexFilter(""));
        search.setEnabled(true);
        searchClear.setEnabled(false);
        table.clearSelection();
        edit.setEnabled(false);
        delete.setEnabled(false);
        add.setEnabled(true);
        isFilter = false;
    }

    private void onSearch(ActionEvent actionEvent) {
        new searchPanel(mainWindow, search, searchClear, filterMainLabelText, filterRequireLabel, rowSorterProfessors, tableModel, table);
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

        Professors professor;
        // Если фильтр не применён
        if(!isFilter) {
            professor = rowToProfessor.get(table.getSelectedRow());
            rowToProfessor.remove(table.getSelectedRow());
        } // Если фильтр применён
        else {
            professor = rowToProfessor.get(table.convertRowIndexToModel(table.getSelectedRow()));
            rowToProfessor.remove(table.convertRowIndexToModel(table.getSelectedRow()));
        }

        // Обнулить все расписания, касающиеся данного профессора
        List<Schedules> schedulesList = schedulesMap.getSchedulesByProfessor(professor);
        for(int i = 0; i < schedulesList.size(); i++) {
            schedulesList.get(i).setTypesByIdType(null);
            schedulesList.get(i).setAuditoriesByIdAuditory(null);
            schedulesList.get(i).setProfessorsByIdProfessor(null);
            schedulesList.get(i).setTypesByIdType(null);
            schedulesList.get(i).setSubjectsByIdSubject(null);

            schedulesMap.edit(schedulesList.get(i));
        }

        map.delete(professor);
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
        new ProfessorAddPanel(mainWindow, this, table);
    }

    @Override
    public JPanel getMenuEdit() {
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
        if(tableEdit.getValueAt(tableEdit.getSelectedRow(), 1).toString().trim().equals("")) {
            new infoMessage(mainWindow, ERROR_PROFESSOR_FIRSTNAME, ERROR_PROFESSOR);
            return;
        }

        // Кнопка редактирования не активна, потому что снимается выделение
        edit.setEnabled(false);
        delete.setEnabled(false);

        // Получение профессора из редактируемого ряда
        Professors professor = getProfessorFromSelectedRow(tableEdit,tableModelEdit);
        // Обновление профессора в коллекции
        Professors tempProfessor;
        // Если фильтр не применён
        if(!isFilter) {
            tempProfessor = rowToProfessor.get(table.getSelectedRow());
            professor.setIdProfessor(tempProfessor.getIdProfessor());
            rowToProfessor.put(table.getSelectedRow(), professor);
        } // Если фильтр применён
        else {
            tempProfessor = rowToProfessor.get(table.convertRowIndexToModel(table.getSelectedRow()));
            professor.setIdProfessor(tempProfessor.getIdProfessor());
            rowToProfessor.put(table.convertRowIndexToModel(table.getSelectedRow()), professor);
        }

        ProfessorsMap professorsMap = new ProfessorsMap();
        if(professorsMap.getIdProfessorByValue(professor.getLastName() + " " + professor.getFirstName() + " " + professor.getMiddleName()) != NULL) {
            new infoMessage(this.mainWindow, "Введённый профессор уже существует", "Ошибка");
            return;
        }

        // Операция в БД
        map.edit(professor);
        // Снять выделение
        this.table.clearSelection();
        // Перерисовать основную таблицу, захватывая данные из БД
        update();
        // Применить перерисовку
        table.revalidate();

        this.schedulePanel.update();
        this.schedulePanel.revalidate();

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

    public Professors getProfessorFromSelectedRow(JTable tempTable, DefaultTableModel tempTableModel) {
        // Получение профессора из редактируемого ряда
        Professors professor = new Professors();
        for(int i = 0; i < tempTable.getColumnCount(); i++) {
            switch (i) {
                case 0:
                    professor.setLastName(String.valueOf(tempTableModel.getValueAt(tempTable.getSelectedRow(), i)));
                    break;
                case 1:
                    professor.setFirstName(String.valueOf(tempTableModel.getValueAt(tempTable.getSelectedRow(), i)));
                    break;
                case 2:
                    professor.setMiddleName(String.valueOf(tempTableModel.getValueAt(tempTable.getSelectedRow(), i)));
                    break;
            }
        }

        return professor;
    }

    @Override
    public void update() {
        fillData();
    }
}
