package ru.schedule.lab2.gui;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.Groups;
import ru.schedule.lab2.entity.NumberOfWeeks;
import ru.schedule.lab2.map.GroupsMap;
import ru.schedule.lab2.map.NumberOfWeeksMap;

import javax.swing.*;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.util.List;
import java.util.Vector;

import static ru.schedule.lab2.constants.CONST.*;

public abstract class BasePanel extends JPanel {
    protected Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize(); // Создаём переменную, в которой хранится размер экрана
    protected final DefaultTableModel tableModel = new DefaultTableModel(new Object[][]{}, new Object[]{}) {
        @Override
        public boolean isCellEditable(int row, int column) {
            return false;
        }
    };

    protected DefaultTableModel tableModelEdit = new DefaultTableModel(new Object[][]{}, new Object[]{});

    protected final JTable table = new JTable(tableModel);
    protected JTable tableEdit;

    protected DefaultTableCellRenderer centerRend = new DefaultTableCellRenderer();
    protected JScrollPane scrollTable;
    protected JScrollPane scrollTableEdit;

    protected JLabel chooseGroupLabel = new JLabel(GROUP + ": ");
    protected JComboBox<Groups> chooseGroupComboBox;

    protected JLabel chooseWeekLabel = new JLabel(WEEK + ": ");
    protected JComboBox<NumberOfWeeks> chooseWeekComboBox;

    protected JPanel container = new JPanel();
    protected JPanel containerEdit = new JPanel();
    CardLayout cardLayout = new CardLayout();

    private NumberOfWeeksMap numberOfWeeksMap = new NumberOfWeeksMap();
    private GroupsMap groupsMap = new GroupsMap();
    public BasePanel() {
        container.setLayout(new MigLayout());
        containerEdit.setLayout(new MigLayout());

        tableEdit = new JTable(tableModelEdit);

        // Выровнять значение колонки по центру
        centerRend.setHorizontalAlignment(JLabel.CENTER);
        table.setDefaultRenderer(Object.class, centerRend);
        tableEdit.setDefaultRenderer(Object.class, centerRend);

        // Добавление скролла (основная таблица)
        table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        scrollTable = new JScrollPane(table, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        table.setColumnSelectionAllowed(false);
        table.getTableHeader().setReorderingAllowed(false); // Запрет на перестановку столбцов
        // Добавление скролла (редактируемая таблица)
        tableEdit.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        scrollTableEdit = new JScrollPane(tableEdit, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        tableEdit.setColumnSelectionAllowed(false);
        tableEdit.getTableHeader().setReorderingAllowed(false); // Запрет на перестановку столбцов

        container.add(scrollTable, "width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/1.2 + ", wrap");
        containerEdit.add(scrollTableEdit, "width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/1.2 + ", wrap");

        //scrollButtonPanel = new JScrollPane(getMenu(), JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        container.add(getMenu(), "span, width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/3);
        containerEdit.add(getMenuEdit(), "span, width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/3);


        setLayout(cardLayout);
        add(container, "mainPanel");
        add(containerEdit, "editPanel");
        cardLayout.show(this, "mainPanel");
    }

    public BasePanel(String scheduleName) {
        container.setLayout(new MigLayout());
        containerEdit.setLayout(new MigLayout());

        tableEdit = new JTable(tableModelEdit);

        // Выровнять значение колонки по центру
        centerRend.setHorizontalAlignment(JLabel.CENTER);
        table.setDefaultRenderer(Object.class, centerRend);
        tableEdit.setDefaultRenderer(Object.class, centerRend);

        // Добавление скролла (основная таблица)
        table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        scrollTable = new JScrollPane(table, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        table.setColumnSelectionAllowed(false);
        table.getTableHeader().setReorderingAllowed(false); // Запрет на перестановку столбцов
        // Добавление скролла (редактируемая таблица)
        tableEdit.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        scrollTableEdit = new JScrollPane(tableEdit, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        tableEdit.setColumnSelectionAllowed(false);
        tableEdit.getTableHeader().setReorderingAllowed(false); // Запрет на перестановку столбцов

        Vector vectorGroup = new Vector<>();
        vectorGroup.addAll(groupsMap.getAllGroups());
        chooseGroupComboBox = new JComboBox<>(vectorGroup);

        Vector vectorWeek = new Vector<>();
        vectorWeek.addAll(numberOfWeeksMap.getAllWeeks());
        chooseWeekComboBox = new JComboBox<>(vectorWeek);

        container.add(chooseGroupLabel, "gapleft 10, split 4");
        container.add(chooseGroupComboBox, "w 150!");

        container.add(chooseWeekLabel, "gapleft 50");
        container.add(chooseWeekComboBox, "w 100!, wrap");

        container.add(scrollTable, "width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/1.2 + ", wrap");
        containerEdit.add(scrollTableEdit, "width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/1.2 + ", wrap");

        //scrollButtonPanel = new JScrollPane(getMenu(), JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        container.add(getMenu(), "span, width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/3);
//        containerEdit.add(getMenuEdit(), "span, width " + screenSize.getWidth() + ", height " + screenSize.getHeight()/3);

        setLayout(cardLayout);
        add(container, "mainPanel");
        add(containerEdit, "editPanel");
        cardLayout.show(this, "mainPanel");
    }

    protected abstract JPanel getMenu();
    protected abstract JPanel getMenuEdit();
    protected abstract void update();
}
