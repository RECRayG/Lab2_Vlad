package ru.schedule.lab2.gui.search;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.gui.error.infoMessage;
import ru.schedule.lab2.gui.search.model.rowFilter;

import javax.swing.*;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;
import java.awt.*;
import java.util.Vector;

import static ru.schedule.lab2.constants.CONST.*;

public class searchPanel extends JDialog {
    private Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
    private Vector<String> filter;
    private JPanel searchPanel;
    private JScrollPane scrollSearchPanel;
    private JLabel textLabel;
    private JTextField searchTextField;
    private JButton searchButton;
    private JLabel choiceLabel;
    private JComboBox columnNames;
    private JButton search;
    private JButton searchClear;
    private JTable table;
    private JLabel filterRequireLabel;
    private JLabel filterMainLabelText;
    private TableModel tableModel;
    private TableRowSorter<AbstractTableModel> rowSorter;
    private JFrame mainFrame;

    public searchPanel(JFrame mainFrame, JButton search, JButton searchClear,
                       JLabel filterMainLabelText, JLabel filterRequireLabel,
                       TableRowSorter<AbstractTableModel> rowSorter, TableModel tableModel, JTable table) {
        super(mainFrame, SEARCH, true);

        this.search = search;
        this.searchClear = searchClear;
        this.table = table;
        this.tableModel = tableModel;
        this.rowSorter = rowSorter;
        this.mainFrame = mainFrame;
        this.filterMainLabelText = filterMainLabelText;
        this.filterRequireLabel = filterRequireLabel;

        // Формирование видов фильтров
        filter = new Vector();
        for(int i = 0; i < tableModel.getColumnCount(); i++) {
            filter.add(tableModel.getColumnName(i));
        }
        filter.add(ALL_SEARCH);

        columnNames = new JComboBox(filter);
        columnNames.setFocusable(false);
        columnNames.setSelectedIndex(tableModel.getColumnCount());

        searchPanel = new JPanel();
        searchPanel.setBackground(new Color(255,255,255));
        searchPanel.setLayout(new MigLayout());

        scrollSearchPanel = new JScrollPane(searchPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        searchTextField = new JTextField();
        searchTextField.setBounds(0,0, 350,100);

        textLabel = new JLabel("Введите значение: ");
        choiceLabel = new JLabel("Выберите столбец для поиска: ");

        searchButton = new JButton("Найти");
        searchButton.addActionListener(actionEvent -> {
            for(int i = 0; i < filter.size(); i++) {
                if(columnNames.getSelectedIndex() == i) {
                    if(searchTextField.getText().trim().equals("")) {
                        new infoMessage(this.mainFrame, "Вы пытаетесь найти пустую строку!", "Ошибка поиска");
                        searchTextField.setText("");
                        return;
                    }

                    this.filterRequireLabel.setText(searchTextField.getText().trim());

                    if(i == this.tableModel.getColumnCount()) {
                        this.filterMainLabelText.setText("всем столбцам: ");
                        this.rowSorter.setRowFilter(new rowFilter(searchTextField.getText().trim(), i, this.tableModel).regexFilter("(?iu)" + searchTextField.getText().trim())); // "(?iu)" - игнор регистра
                    } else {
                        this.filterMainLabelText.setText(columnNames.getSelectedItem() + " :");
                        this.rowSorter.setRowFilter(new rowFilter(searchTextField.getText().trim(), i, this.tableModel).regexFilter("(?iu)" + searchTextField.getText().trim(), i)); // "(?iu)" - игнор регистра
                    }
                    break;
                }
            }

            this.search.setEnabled(false);
            this.searchClear.setEnabled(true);
            this.dispose();
            this.table.clearSelection();
        });

        searchPanel.add(choiceLabel, "split 2");
        searchPanel.add(columnNames, "al center, wrap 15");
        searchPanel.add(textLabel, "split 2");
        searchPanel.add(searchTextField, "growx, pushx, al center, wrap push");
        searchPanel.add(searchButton, "span 2 1, al center");

        addRegistryAddWindow(scrollSearchPanel, (int)(screenSize.getWidth()), (int)(screenSize.getHeight()));
    }

    private void addRegistryAddWindow(JScrollPane _panel, int width, int height)
    {
        this.setBounds(0, 0, width / 2, (int) (height / 3)); // Устанавливаем оптимальные размеры окна, учитывая размеры экрана
        //this.setExtendedState(this.MAXIMIZED_BOTH); // Растяжение на весь экран
        this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE); // При нажатии на X ничего не произойдёт
        this.setFocusable(true); // Фокус на окне
        this.setResizable(false); // Запрет на изменение размеров окна - нет
        //this.setModal(true); // Модальное окно
        this.setLocationRelativeTo(null); // Расположение окна ровно по центру
        //this.setTitle("ОШИБКА!!!"); // Заголовок окна
        this.setLayout(new MigLayout());
        this.add(_panel, "grow, push");
        this.setVisible(true); // Делаем окно видимым
    }
}
