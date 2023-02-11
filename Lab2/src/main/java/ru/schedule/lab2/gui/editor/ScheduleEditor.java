package ru.schedule.lab2.gui.editor;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.*;
import ru.schedule.lab2.gui.SchedulePanel;
import ru.schedule.lab2.map.*;

import javax.swing.*;
import java.awt.*;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import static java.sql.Types.NULL;
import static ru.schedule.lab2.constants.CONST.*;

public class ScheduleEditor extends JDialog {
    protected Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();

    private JFrame mainWindow;

    private SchedulePanel schedulePanel;

    private JTable table;

    private GrSchIdentity grSchIdentity;

    private Schedules schedule;

    private JPanel addPanel;
    private JScrollPane addPanelScroll;
    private JButton addButton;
    private JButton cancelButton;

    private JLabel subjectLabel = new JLabel(SUBJECT + "*: ");
    private JComboBox<String> subjectComboBox;
    private JLabel subjectNewLabel = new JLabel(SUBJECT + " (Новый): ");
    private JTextField subjectNewText = new JTextField();

    private JLabel auditoryLabel = new JLabel(AUDITORY + "*: ");
    private JComboBox<String> auditoryComboBox;
    private JLabel auditoryNewLabel = new JLabel(AUDITORY + " (Новая): ");
    private JTextField auditoryNewText = new JTextField();

    private JLabel professorLabel = new JLabel(PROFESSOR + "*: ");
    private JComboBox<String> professorComboBox;

    private JLabel typeLabel = new JLabel(TYPE + "*: ");
    private JComboBox<String> typeComboBox;

    private JLabel notScheduleData = new JLabel(ERROR_ALL_NEED_DATA);

    private int gap = 115;

    private SubjectsMap subjectsMap = new SubjectsMap();
    private AuditoriesMap auditoriesMap = new AuditoriesMap();
    private TypesMap typesMap = new TypesMap();
    private ProfessorsMap professorsMap = new ProfessorsMap();
    private SchedulesMap schedulesMap = new SchedulesMap();

    public ScheduleEditor(JFrame mainWindow, SchedulePanel schedulePanel, JTable table, GrSchIdentity grSchIdentity, Schedules schedule) {
        super(mainWindow, true);

        this.mainWindow = mainWindow;
        this.schedulePanel = schedulePanel;
        this.table = table;
        this.grSchIdentity = grSchIdentity;
        this.schedule = schedule;

        addButton = new JButton(APPLY_BUTTON);
        cancelButton = new JButton(CANCEL);
        cancelButton.addActionListener(actionEvent -> {
            this.dispose();
        });
        addButton.addActionListener(actionEvent -> {
            if(schedule.getSubjectsByIdSubject() == null) {
                schedule.setSubjectsByIdSubject(new Subjects());
                schedule.setProfessorsByIdProfessor(new Professors());
                schedule.setAuditoriesByIdAuditory(new Auditories());
                schedule.setTypesByIdType(new Types());
            }
            // Алгоритм добавления предмета, если его не было, или выбора существующего
            if(subjectComboBox.getItemCount() > 0) {
                if(subjectNewText.getText().trim().equals("")) {
                    schedule.getSubjectsByIdSubject().setIdSubject(subjectsMap.getIdSubjectByValue(String.valueOf(subjectComboBox.getSelectedItem())));
                    schedule.getSubjectsByIdSubject().setSubject(String.valueOf(subjectComboBox.getSelectedItem()));
                } else {
                    int tempId = subjectsMap.getIdSubjectByValue(subjectNewText.getText().trim());
                    if (tempId == NULL) {
                        Subjects subject = new Subjects();
                        subject.setSubject(subjectNewText.getText().trim());
                        subjectsMap.save(subject);
                        schedule.getSubjectsByIdSubject().setIdSubject(subjectsMap.getIdSubjectByValue(subjectNewText.getText().trim()));
                    } else {
                        schedule.getSubjectsByIdSubject().setIdSubject(tempId);
                        schedule.getSubjectsByIdSubject().setSubject(subjectNewText.getText().trim());
                    }
                }
            } else {
                if(subjectNewText.getText().trim().equals("")) {
                    notScheduleData.setVisible(true);
                    return;
                } else {
                    schedule.getSubjectsByIdSubject().setIdSubject(subjectsMap.getIdSubjectByValue(subjectNewText.getText().trim()));
                    schedule.getSubjectsByIdSubject().setSubject(subjectNewText.getText().trim());
                }
            }

            // Алгоритм добавления аудитории, если её не было, или выбора существующей
            if(auditoryComboBox.getItemCount() > 0) {
                if(auditoryNewText.getText().trim().equals("")) {
                    schedule.getAuditoriesByIdAuditory().setIdAuditory(auditoriesMap.getIdAuditoryByValue(String.valueOf(auditoryComboBox.getSelectedItem())));
                    schedule.getAuditoriesByIdAuditory().setAuditory(String.valueOf(auditoryComboBox.getSelectedItem()));
                } else {
                    int tempId = auditoriesMap.getIdAuditoryByValue(auditoryNewText.getText().trim());
                    if (tempId == NULL) {
                        Auditories auditory = new Auditories();
                        auditory.setAuditory(auditoryNewText.getText().trim());
                        auditoriesMap.save(auditory);
                        schedule.getAuditoriesByIdAuditory().setIdAuditory(auditoriesMap.getIdAuditoryByValue(auditoryNewText.getText().trim()));
                    } else {
                        schedule.getAuditoriesByIdAuditory().setIdAuditory(tempId);
                        schedule.getAuditoriesByIdAuditory().setAuditory(auditoryNewText.getText().trim());
                    }
                }
            } else {
                if(auditoryNewText.getText().trim().equals("")) {
                    notScheduleData.setVisible(true);
                    return;
                } else {
                    schedule.getAuditoriesByIdAuditory().setIdAuditory(auditoriesMap.getIdAuditoryByValue(auditoryNewText.getText().trim()));
                    schedule.getAuditoriesByIdAuditory().setAuditory(auditoryNewText.getText().trim());
                }
            }

            if(professorComboBox.getItemCount() > 0) {
                schedule.setProfessorsByIdProfessor(professorsMap.getProfessorByValue(String.valueOf(professorComboBox.getSelectedItem())));
            } else {
                notScheduleData.setVisible(true);
                return;
            }

            if(typeComboBox.getItemCount() > 0) {
                schedule.setTypesByIdType(typesMap.getTypeByValue(String.valueOf(typeComboBox.getSelectedItem())));
            } else {
                notScheduleData.setVisible(true);
                return;
            }

            // Операция в БД
            schedulesMap.edit(schedule);
            // Снять выделение
            this.table.clearSelection();
            // Перерисовать основную таблицу, захватывая данные из БД
            schedulePanel.update(false);
            // Применить перерисовку
            this.table.revalidate();

            notScheduleData.setVisible(false);
            this.dispose();
        });

        addPanel = new JPanel();
        addPanel.setLayout(new MigLayout());

        Vector<String> vector = new Vector<>();
        vector.addAll(subjectsMap.getAllSubjects());
        subjectComboBox = new JComboBox<>(vector);
        subjectComboBox.setSelectedIndex(0);
        subjectComboBox.setFocusable(false);

        Vector<String> vector2 = new Vector<>();
        vector2.addAll(auditoriesMap.getAllAuditories());
        auditoryComboBox = new JComboBox<>(vector2);
        auditoryComboBox.setSelectedIndex(0);
        auditoryComboBox.setFocusable(false);

        Vector<String> vector3 = new Vector<>();
        vector3.addAll(professorsMap.getAllProfessors());
        professorComboBox = new JComboBox<>(vector3);
        professorComboBox.setSelectedIndex(0);
        professorComboBox.setFocusable(false);

        Vector<String> vector4 = new Vector<>();
        vector4.addAll(typesMap.getAllTypes());
        typeComboBox = new JComboBox<>(vector4);
        typeComboBox.setSelectedIndex(0);
        typeComboBox.setFocusable(false);

        notScheduleData.setForeground(new Color(230,50,50));
        notScheduleData.setVisible(false);

        addPanel.add(professorLabel, "gapleft" + gap + ", gaptop 50, al right");
        addPanel.add(professorComboBox, "w 250!, wrap");

        addPanel.add(subjectLabel, "gapleft " + gap + ", al right");
        addPanel.add(subjectComboBox, "w 300!, wrap");
        addPanel.add(subjectNewLabel, "gapleft " + gap + ", al right");
        addPanel.add(subjectNewText, "w 300!, wrap");

        addPanel.add(typeLabel, "gapleft" + gap + ", gaptop 50, al right");
        addPanel.add(typeComboBox, "w 250!, wrap");

        addPanel.add(auditoryLabel, "gapleft " + gap + ", al right");
        addPanel.add(auditoryComboBox, "w 300!, wrap");
        addPanel.add(auditoryNewLabel, "gapleft " + gap + ", al right");
        addPanel.add(auditoryNewText, "w 300!, wrap 40");

        addPanel.add(notScheduleData, "gapleft (" + gap + " + 40), span 2 1, al center, wrap 25");

        addPanel.add(addButton, "gapleft (" + gap + " + 30), al center, span 2 1, split 2");
        addPanel.add(cancelButton, "gapleft 20, al center");

        addPanelScroll = new JScrollPane(addPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        addScheduleWindow(addPanelScroll, (int)(screenSize.getWidth()), (int)(screenSize.getHeight()));
    }

    private void addScheduleWindow(JScrollPane _panel, int width, int height)
    {
        this.setBounds(0, 0, (int) (width / 2), (int) (height / 1.1)); // Устанавливаем оптимальные размеры окна, учитывая размеры экрана
        //this.setExtendedState(this.MAXIMIZED_BOTH); // Растяжение на весь экран
        this.setTitle(SCHEDULE_EDIT); // Заголовок окна
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