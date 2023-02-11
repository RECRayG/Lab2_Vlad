package ru.schedule.lab2.gui.add;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.*;
import ru.schedule.lab2.gui.GroupPanel;
import ru.schedule.lab2.gui.ProfessorsPanel;
import ru.schedule.lab2.gui.SchedulePanel;
import ru.schedule.lab2.gui.error.infoMessage;
import ru.schedule.lab2.map.*;

import javax.swing.*;
//import java.awt.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

import static java.sql.Types.NULL;
import static ru.schedule.lab2.constants.CONST.*;

public class GroupAddPanel extends JDialog {
    protected Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
    private JFrame mainWindow;
    private GroupPanel groupPanel;
    private JTable table;
    private JPanel addPanel;
    private JScrollPane addPanelScroll;
    private JButton addButton;
    private JButton cancelButton;

    private JLabel nameGroupLabel = new JLabel(GROUP_NAME + "*: ");

    private JTextField nameGroupText = new JTextField();

    private JLabel notGroupData = new JLabel(ERROR_ALL_NEED_DATA);

    private int gap = 85;

    private GroupsMap groupsMap;
    private DaysMap daysMap;
    private NumberOfWeeksMap numberOfWeeksMap;
    private GrSchIdentityMap grSchIdentityMap;
    private TimesMap timesMap;

    private SchedulesMap schedulesMap;
    private SchedulePanel schedulePanel;

    public GroupAddPanel(JFrame mainWindow, GroupPanel groupPanel, JTable table, SchedulePanel schedulePanel) {
        super(mainWindow, true);

        groupsMap = new GroupsMap();
        daysMap = new DaysMap();
        numberOfWeeksMap = new NumberOfWeeksMap();
        grSchIdentityMap = new GrSchIdentityMap();
        timesMap = new TimesMap();
        schedulesMap = new SchedulesMap();

        this.mainWindow = mainWindow;
        this.groupPanel = groupPanel;
        this.table = table;
        this.schedulePanel = schedulePanel;

        addButton = new JButton(ADD);
        cancelButton = new JButton(CANCEL);
        cancelButton.addActionListener(actionEvent -> {
            this.dispose();
        });
        addButton.addActionListener(actionEvent -> {
            if(!nameGroupText.getText().trim().equals("")) {
                if(groupsMap.getIdGroupByValue(nameGroupText.getText().trim()) != NULL) {
                    new infoMessage(this.mainWindow, "Введённая группа уже существует", "Ошибка");
                    return;
                }

                Groups group = new Groups();
                group.setGroupName(nameGroupText.getText());

                // Операция в БД
                groupsMap.save(group);


                int countNumberOfWeeks = numberOfWeeksMap.getCountNumberOfWeeks();
                int countTimes = timesMap.getCountTimes();

                if(countNumberOfWeeks == NULL) {
                    for(int i = 0; i < 18; i++) {
                        NumberOfWeeks numberOfWeeks = new NumberOfWeeks();
                        numberOfWeeks.setNumberWeek(i + 1);
                        numberOfWeeks.setGrSchIdentitiesByIdNumberOfWeek(new ArrayList<>());
                        numberOfWeeksMap.save(numberOfWeeks);
                    }
                }

//                if(countTimes == NULL) {
//                    for(int i = 0; i < 6; i++) {
//                        Times times = new Times();
//                        times.setDaysByIdDay(dayMonday);
//                        times.setTimeOfLessonsByIdBegin();
//                        times.setTimeOfLessonsByIdEnd();
//                    }
//                }

                // Заполнение базы привязанными пустыми значениями для дальнейшего редактирования
                List<GrSchIdentity> grSchIdentityList = new ArrayList<>();
                for(int i = 0; i < countNumberOfWeeks; i++) {
                    NumberOfWeeks numberOfWeeks = numberOfWeeksMap.getNumberOfWeekById(numberOfWeeksMap.getIdByValue(i + 1));

                    for(int j = 0; j < countTimes; j++) {
                        /// Сделать добавление для каждого дня недели по 8 занятий с разными временами!!!
                        List<Times> times = new ArrayList<>();
                        switch(j) {
                            case 0:
                                times = timesMap.getTimesByWeek("Понедельник");
                                break;
                            case 1:
                                times = timesMap.getTimesByWeek("Вторник");
                                break;
                            case 2:
                                times = timesMap.getTimesByWeek("Среда");
                                break;
                            case 3:
                                times = timesMap.getTimesByWeek("Четверг");
                                break;
                            case 4:
                                times = timesMap.getTimesByWeek("Пятница");
                                break;
                            case 5:
                                times = timesMap.getTimesByWeek("Суббота");
                                break;
                        }

                        for(int k = 0; k < times.size(); k++) {
                            Schedules schedules = new Schedules();
                            schedules.setTypesByIdType(null);
                            schedules.setAuditoriesByIdAuditory(null);
                            schedules.setProfessorsByIdProfessor(null);
                            schedules.setTypesByIdType(null);
                            schedules.setSubjectsByIdSubject(null);
                            int idSchedule = schedulesMap.saveNull(schedules);
                            schedules = schedulesMap.getSchedulesById(idSchedule);


                            GrSchIdentity grSchIdentity = new GrSchIdentity();
                            grSchIdentity.setGroupsByIdGroup(group);
                            grSchIdentity.setSchedulesByIdSchedule(schedules);
                            grSchIdentity.setNumberOfWeeksByIdNumberOfWeek(numberOfWeeks);


                            grSchIdentity.setTimesByIdTime(times.get(k));

                            grSchIdentityMap.save(grSchIdentity);
                        }

                    }
                }

                // Снять выделение
                this.table.clearSelection();
                // Перерисовать основную таблицу, захватывая данные из БД
                groupPanel.update();
                // Применить перерисовку
                this.table.revalidate();

                this.schedulePanel.update();
                this.schedulePanel.revalidate();

                notGroupData.setVisible(false);
                this.dispose();
            } else {
                notGroupData.setText(ERROR_ALL_NEED_DATA);
                notGroupData.setVisible(true);
            }
        });

        notGroupData.setForeground(new Color(230,50,50));
        notGroupData.setVisible(false);

        addPanel = new JPanel();
        addPanel.setLayout(new MigLayout());

        addPanel.add(nameGroupLabel, "gapleft " + gap + ", gaptop 50, al right");
        addPanel.add(nameGroupText, "w 250!, wrap 40");

        addPanel.add(notGroupData, "gapleft (" + gap + " + 40), span 2 1, al center, wrap 25");

        addPanel.add(addButton, "gapleft (" + gap + " + 30), al center, span 2 1, split 2");
        addPanel.add(cancelButton, "gapleft 20, al center");

        addPanelScroll = new JScrollPane(addPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        addRegistryAddWindow(addPanelScroll, (int)(screenSize.getWidth()), (int)(screenSize.getHeight()));
    }

    private void addRegistryAddWindow(JScrollPane _panel, int width, int height)
    {
        this.setBounds(0, 0, width / 2, (int) (height / 1.8)); // Устанавливаем оптимальные размеры окна, учитывая размеры экрана
        //this.setExtendedState(this.MAXIMIZED_BOTH); // Растяжение на весь экран
        this.setTitle(ADD_GROUP); // Заголовок окна
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