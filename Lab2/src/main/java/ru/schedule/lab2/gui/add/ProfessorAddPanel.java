package ru.schedule.lab2.gui.add;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.gui.ProfessorsPanel;
import ru.schedule.lab2.gui.error.infoMessage;
import ru.schedule.lab2.map.ProfessorsMap;

import javax.swing.*;
import java.awt.*;

import static java.sql.Types.NULL;
import static ru.schedule.lab2.constants.CONST.*;

public class ProfessorAddPanel extends JDialog {
    protected Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
    private JFrame mainWindow;
    private ProfessorsPanel professorsPanel;
    private JTable table;
    private JPanel addPanel;
    private JScrollPane addPanelScroll;
    private JButton addButton;
    private JButton cancelButton;

    private JLabel lastNameProfessorLabel = new JLabel(PROFESSORS_LASTNAME + "*: ");
    private JLabel firstNameProfessorLabel = new JLabel(PROFESSORS_FIRSTNAME + "*: ");
    private JLabel middleNameProfessorLabel = new JLabel(PROFESSORS_MIDDLENAME + ": ");

    private JTextField lastNameProfessorText = new JTextField();
    private JTextField firstNameProfessorText = new JTextField();
    private JTextField middleNameProfessorText = new JTextField();

    private JLabel notProfessorData = new JLabel(ERROR_ALL_NEED_DATA);

    private int gap = 85;

    private ProfessorsMap professorsMap;

    public ProfessorAddPanel(JFrame mainWindow, ProfessorsPanel professorsPanel, JTable table) {
        super(mainWindow, true);

        professorsMap = new ProfessorsMap();

        this.mainWindow = mainWindow;
        this.professorsPanel = professorsPanel;
        this.table = table;

        addButton = new JButton(ADD);
        cancelButton = new JButton(CANCEL);
        cancelButton.addActionListener(actionEvent -> {
            this.dispose();
        });
        addButton.addActionListener(actionEvent -> {
            if(!lastNameProfessorText.getText().equals("") && !firstNameProfessorText.getText().equals("")) {
                if(professorsMap.getIdProfessorByValue(lastNameProfessorText.getText().trim() + " " +
                        firstNameProfessorText.getText().trim() + " " +
                        middleNameProfessorText.getText().trim()) != NULL) {
                    new infoMessage(this.mainWindow, "Введённй профессор уже существует", "Ошибка");
                    return;
                }

                Professors professor = new Professors();
                professor.setLastName(lastNameProfessorText.getText());
                professor.setFirstName(firstNameProfessorText.getText());
                if(!middleNameProfessorText.getText().trim().equals(""))
                    professor.setMiddleName(middleNameProfessorText.getText());

                // Операция в БД
                professorsMap.save(professor);

                // Снять выделение
                this.table.clearSelection();
                // Перерисовать основную таблицу, захватывая данные из БД
                professorsPanel.update();
                // Применить перерисовку
                this.table.revalidate();

                notProfessorData.setVisible(false);
                this.dispose();
            } else {
                notProfessorData.setText(ERROR_ALL_NEED_DATA);
                notProfessorData.setVisible(true);
            }
        });

        notProfessorData.setForeground(new Color(230,50,50));
        notProfessorData.setVisible(false);

        addPanel = new JPanel();
        addPanel.setLayout(new MigLayout());

        addPanel.add(lastNameProfessorLabel, "gapleft " + gap + ", gaptop 50, al right");
        addPanel.add(lastNameProfessorText, "w 250!, wrap");
        addPanel.add(firstNameProfessorLabel, "gapleft " + gap + ", al right");
        addPanel.add(firstNameProfessorText, "w 250!, wrap");
        addPanel.add(middleNameProfessorLabel, "gapleft " + gap + ", al right");
        addPanel.add(middleNameProfessorText, "w 250!, wrap 40");

        addPanel.add(notProfessorData, "gapleft (" + gap + " + 40), span 2 1, al center, wrap 25");

        addPanel.add(addButton, "gapleft (" + gap + " + 30), al center, span 2 1, split 2");
        addPanel.add(cancelButton, "gapleft 20, al center");

        addPanelScroll = new JScrollPane(addPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        addRegistryAddWindow(addPanelScroll, (int)(screenSize.getWidth()), (int)(screenSize.getHeight()));
    }

    private void addRegistryAddWindow(JScrollPane _panel, int width, int height)
    {
        this.setBounds(0, 0, width / 2, (int) (height / 1.8)); // Устанавливаем оптимальные размеры окна, учитывая размеры экрана
        //this.setExtendedState(this.MAXIMIZED_BOTH); // Растяжение на весь экран
        this.setTitle(ADD_PROFESSOR); // Заголовок окна
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
