package ru.schedule.lab2.gui;

import net.miginfocom.swing.MigLayout;
import ru.schedule.lab2.entity.*;
import ru.schedule.lab2.gui.editor.ScheduleEditor;
import ru.schedule.lab2.map.*;

import javax.swing.*;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;

import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

import static ru.schedule.lab2.constants.CONST.*;

public class SchedulePanel extends BasePanel {
    private final SchedulesMap map = new SchedulesMap();
    private final GrSchIdentityMap grSchIdentityMap = new GrSchIdentityMap();
    private List<Object[]> grSchIdentityData = new ArrayList<>();
    private final Map<Integer, List<GrSchIdentity>> rowToGrSchIdentity = new HashMap<>();

    private JButton edit;
    private JButton delete;
    private JPanel buttonPanel;

    private JFrame mainWindow;
    private Boolean isFocused = false;

    private TimeOfLessonsMap timeOfLessonsMap = new TimeOfLessonsMap();

    private GroupsMap groupsMap = new GroupsMap();
    private NumberOfWeeksMap numberOfWeeksMap = new NumberOfWeeksMap();
    private SchedulesMap schedulesMap = new SchedulesMap();

    public SchedulePanel(JFrame mainWindow) {
        // Подготовить общую основую панель для отображения
        super(SCHEDULE_ALL);

        // Заполнение таблицы из базы данных
        fillData();

        this.mainWindow = mainWindow;
    }

    // Обновление данных в таблице по данным из БД
    private void fillData() {
        int rowCount = tableModel.getRowCount();
        for (int i = 0; i < rowCount; i++) tableModel.removeRow(0);
        if (chooseWeekComboBox.getItemCount() > 0 && chooseGroupComboBox.getItemCount() > 0) {
            Integer numberOfWeeks = (Integer) chooseWeekComboBox.getSelectedItem();
            String group = (String) chooseGroupComboBox.getSelectedItem();
            List<GrSchIdentity> grSchIdentities;
//            List<TimeOfLessons> timeOfLessons;
            int countLessons = timeOfLessonsMap.getCountTimeOfLessons();
            Object[] allTemp = new Object[countLessons];

            List<GrSchIdentity> tempGrSchIdentityList = new ArrayList<>();

//            // Алгоритм получения данных для построчного представления в таблице для нужной группы и нужной недели
//            int countLessons = timeOfLessonsMap.getCountTimeOfLessons();
//            tableModel.setColumnIdentifiers(new Object[]{SCHEDULE_NUMBER_LESSON, SCHEDULE_TIME, SCHEDULE_MONDAY, SCHEDULE_TUESDAY, SCHEDULE_WEDNESDAY, SCHEDULE_THURSDAY, SCHEDULE_FRIDAY, SCHEDULE_SATURDAY});
//            for(int i = 0; i < countLessons; i++) {
//                timeOfLessons = timeOfLessonsMap.getTimeOfLessonsByTablePos(i + 1);
//                grSchIdentities = grSchIdentityMap.findAll("Select GSCH\n" +
//                        "From GrSchIdentity GSCH\n" +
//                        "Where GSCH.numberOfWeeksByIdNumberOfWeek.numberWeek = " + numberOfWeeks +
//                        "And GSCH.timesByIdTime.timeOfLessonsByIdBegin.timeLesson = '" + timeOfLessons.get(0).getTimeLesson().toString() + "'" +
//                        "And GSCH.timesByIdTime.timeOfLessonsByIdEnd.timeLesson = '" + timeOfLessons.get(1).getTimeLesson().toString() + "'" +
//                        "And GSCH.groupsByIdGroup.groupName = '" + group + "'");
//
//                final int numberOfRow = i + 1;
//                grSchIdentityData =
//                        grSchIdentities.stream().map(grSchIdentity -> new Object[] {
//                                // Номер занятия
//                                numberOfRow,
//                                // Время
//                                grSchIdentity.getTimesByIdTime().getTimeOfLessonsByIdBegin().getTimeLesson().toString() + "-" + grSchIdentity.getTimesByIdTime().getTimeOfLessonsByIdEnd().getTimeLesson().toString(),
//                                // Информация о занятии, либо пусто
//                                grSchIdentity.getSchedulesByIdSchedule().getSubjectsByIdSubject() == null ? "" : grSchIdentity.getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
//                                                                                                                 grSchIdentity.getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentity.getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentity.getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
//                                                                                                                 grSchIdentity.getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
//                                                                                                                 grSchIdentity.getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory(),
//                                // День недели
//                                grSchIdentity.getTimesByIdTime().getDaysByIdDay().getDay()
//                        }).collect(Collectors.toList());
//
//                // grSchIdentityData.size() = Кол-ву недель
//                for(int j = 0; j < grSchIdentityData.size(); j++) {
//                    if(j == 0) {
//                        // Номер занятия (у всех элементов одинаковое)
//                        allTemp[0] = grSchIdentityData.get(j)[0];
//                    }
//                    if(j == 1) {
//                        // Время (у всех элементов одинаковое)
//                        allTemp[1] = grSchIdentityData.get(j)[1];
//                    }
//
//                    if ("Понедельник".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[2] = grSchIdentityData.get(j)[2];
//                    } else if ("Вторник".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[3] = grSchIdentityData.get(j)[2];
//                    } else if ("Среда".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[4] = grSchIdentityData.get(j)[2];
//                    } else if ("Четверг".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[5] = grSchIdentityData.get(j)[2];
//                    } else if ("Пятница".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[6] = grSchIdentityData.get(j)[2];
//                    } else if ("Суббота".equals(grSchIdentityData.get(j)[3])) {
//                        allTemp[7] = grSchIdentityData.get(j)[2];
//                    }
//                }
//
//                tableModel.addRow(allTemp);
//                rowToGrSchIdentity.put(i, grSchIdentities);
//            }


            // Алгоритм получения данных для построчного представления в таблице для нужной группы и нужной недели
            grSchIdentities = grSchIdentityMap.findAll("Select GSCH\n" +
                                                            "From GrSchIdentity GSCH\n" +
                                                            "Where GSCH.numberOfWeeksByIdNumberOfWeek.numberWeek = " + numberOfWeeks +
                                                            "And GSCH.groupsByIdGroup.groupName = '" + group + "'");
            tableModel.setColumnIdentifiers(new Object[]{SCHEDULE_NUMBER_LESSON, SCHEDULE_TIME, SCHEDULE_MONDAY, SCHEDULE_TUESDAY, SCHEDULE_WEDNESDAY, SCHEDULE_THURSDAY, SCHEDULE_FRIDAY, SCHEDULE_SATURDAY});
            for(int i = 0; i < countLessons; i++) {
                // Номер занятия (у всего ряда одинаковое)
                allTemp[0] = i + 1;
                for(int j = i; j < grSchIdentities.size(); j = j + countLessons) {
                    // Время (у всего ряда одинаковое)
                    if(j == i) {
                        allTemp[1] = grSchIdentities.get(j).getTimesByIdTime().getTimeOfLessonsByIdBegin().getTimeLesson().toString() + "-" + grSchIdentities.get(j).getTimesByIdTime().getTimeOfLessonsByIdEnd().getTimeLesson().toString();
                    }

                    switch(grSchIdentities.get(j).getTimesByIdTime().getDaysByIdDay().getDay()) {
                        case "Понедельник":
                            allTemp[2] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                        case "Вторник":
                            allTemp[3] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                        case "Среда":
                            allTemp[4] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                        case "Четверг":
                            allTemp[5] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                        case "Пятница":
                            allTemp[6] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                        case "Суббота":
                            allTemp[7] = grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor() == null ? "" :
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getSubjectsByIdSubject().getSubject() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getLastName() + " " + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getFirstName().substring(0, 1) + "." + grSchIdentities.get(j).getSchedulesByIdSchedule().getProfessorsByIdProfessor().getMiddleName().substring(0,1) + "." + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getTypesByIdType().getType() + " · " +
                                    grSchIdentities.get(j).getSchedulesByIdSchedule().getAuditoriesByIdAuditory().getAuditory();
                            break;
                    }

                    tempGrSchIdentityList.add(grSchIdentities.get(j));
                }

                tableModel.addRow(allTemp);
                rowToGrSchIdentity.put(i, new ArrayList<>(tempGrSchIdentityList));
                tempGrSchIdentityList.clear();
            }

            TableColumnModel tcm = table.getColumnModel();
            Enumeration<TableColumn> e = tcm.getColumns();

            BufferedImage img = new BufferedImage(1,1, BufferedImage.TYPE_INT_ARGB);
            Graphics2D g2d = img.createGraphics();
            FontMetrics fm = g2d.getFontMetrics();

            int i = 0;
            while(e.hasMoreElements()) {
                TableColumn column = e.nextElement();
                switch(i) {
                    case 0:
                        column.setMinWidth(fm.stringWidth(tableModel.getColumnName(0)));
                        break;
                    case 1:
                        column.setMinWidth(fm.stringWidth(tableModel.getColumnName(1) + "       "));
                        break;
                    default:
                        column.setMinWidth(fm.stringWidth("                                                                 "));
                        break;
                }

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

                            if(table.getSelectedColumn() >= 2) {
                                edit.setEnabled(true);
                                delete.setEnabled(true);
                            }
                        }
                    }
                }
            });

            table.addKeyListener(new KeyAdapter() {
                @Override
                public void keyPressed(KeyEvent e) {
                    if (e.getKeyCode() == KeyEvent.VK_LEFT) {
                        table.getSelectionModel().clearSelection();
                        isFocused = true;
                        if(table.getSelectedColumn() >= 2 && !isFocused) {
                            edit.setEnabled(true);
                            delete.setEnabled(true);
                        } else {
                            edit.setEnabled(false);
                            delete.setEnabled(false);
                            isFocused = false;
                        }
                    }
                    if (e.getKeyCode() == KeyEvent.VK_RIGHT) {
                        table.getSelectionModel().clearSelection();
                        isFocused = true;
                        if(table.getSelectedColumn() >= 2 && !isFocused) {
                            edit.setEnabled(true);
                            delete.setEnabled(true);
                        } else {
                            edit.setEnabled(false);
                            delete.setEnabled(false);
                            isFocused = false;
                        }
                    }
                    if (e.getKeyCode() == KeyEvent.VK_UP) {
                        table.getSelectionModel().clearSelection();
                        isFocused = true;
                        if(table.getSelectedColumn() >= 2  && !isFocused) {
                            edit.setEnabled(true);
                            delete.setEnabled(true);
                        } else {
                            edit.setEnabled(false);
                            delete.setEnabled(false);
                            isFocused = false;
                        }
                    }
                    if (e.getKeyCode() == KeyEvent.VK_DOWN) {
                        table.getSelectionModel().clearSelection();
                        isFocused = true;
                        if(table.getSelectedColumn() >= 2  && !isFocused) {
                            edit.setEnabled(true);
                            delete.setEnabled(true);
                        } else {
                            edit.setEnabled(false);
                            delete.setEnabled(false);
                            isFocused = false;
                        }
                    }
                }
            });

            chooseWeekComboBox.addItemListener(new ItemListener() {
                @Override
                public void itemStateChanged(ItemEvent e) {
                    table.clearSelection();
                    edit.setEnabled(false);
                    delete.setEnabled(false);
                    fillData();
                }
            });

            chooseGroupComboBox.addItemListener(new ItemListener() {
                @Override
                public void itemStateChanged(ItemEvent e) {
                    table.clearSelection();
                    edit.setEnabled(false);
                    delete.setEnabled(false);
                    fillData();
                }
            });
        }
    }

    @Override
    protected JPanel getMenu() {
        edit = new JButton(EDIT_BUTTON);
        edit.setEnabled(false);
        edit.addActionListener(this::onEdit);

        delete = new JButton(DELETE_BUTTON);
        delete.setEnabled(false);
        delete.addActionListener(this::onDelete);

        buttonPanel = new JPanel();
        buttonPanel.setLayout(new MigLayout());
        buttonPanel.add(delete, "cell 0 0, split 2");
        buttonPanel.add(edit, "cell 1 0");
        return buttonPanel;
    }

    private void onDelete(ActionEvent actionEvent) {
        // Кнопка удаления не активна, потому что снимается выделение
        delete.setEnabled(false);
        edit.setEnabled(false);

        int r = table.getSelectedRow();
        int c = table.getSelectedColumn() - 2;

        // Зануление полей, потому что удаление происходит только при удалении группы
        List<GrSchIdentity> scheduleRow = rowToGrSchIdentity.get(r);
        Schedules schedules = schedulesMap.getSchedulesById(scheduleRow.get(c).getSchedulesByIdSchedule().getIdSchedule());
        schedules.setTypesByIdType(null);
        schedules.setAuditoriesByIdAuditory(null);
        schedules.setProfessorsByIdProfessor(null);
        schedules.setTypesByIdType(null);
        schedules.setSubjectsByIdSubject(null);
        schedulesMap.edit(schedules);

        scheduleRow.get(c).getSchedulesByIdSchedule().setTypesByIdType(null);
        scheduleRow.get(c).getSchedulesByIdSchedule().setAuditoriesByIdAuditory(null);
        scheduleRow.get(c).getSchedulesByIdSchedule().setProfessorsByIdProfessor(null);
        scheduleRow.get(c).getSchedulesByIdSchedule().setTypesByIdType(null);
        scheduleRow.get(c).getSchedulesByIdSchedule().setSubjectsByIdSubject(null);
        grSchIdentityMap.edit(scheduleRow.get(c));

        // Снять выделение
        this.table.clearSelection();
        // Перерисовать основную таблицу, захватывая данные из БД
        update(false);
        // Применить перерисовку
        table.revalidate();
    }

    private void onEdit(ActionEvent actionEvent) {
        int r = table.getSelectedRow();
        int c = table.getSelectedColumn() - 2;

        List<GrSchIdentity> scheduleRow = rowToGrSchIdentity.get(r);
        Schedules schedule = schedulesMap.getSchedulesById(scheduleRow.get(c).getSchedulesByIdSchedule().getIdSchedule());
        new ScheduleEditor(this.mainWindow, this, this.table, scheduleRow.get(c), schedule);

        table.clearSelection();
    }

    @Override
    public void update() {
        Vector vectorGroup = new Vector<>();
        vectorGroup.addAll(groupsMap.getAllGroups());
        chooseGroupComboBox.setModel(new DefaultComboBoxModel<>(vectorGroup));
        chooseGroupComboBox.setSelectedIndex(0);
        chooseGroupComboBox.revalidate();

        Vector vectorWeek = new Vector<>();
        vectorWeek.addAll(numberOfWeeksMap.getAllWeeks());
        chooseWeekComboBox.setModel(new DefaultComboBoxModel<>(vectorWeek));
        chooseWeekComboBox.setSelectedIndex(0);
        chooseWeekComboBox.revalidate();

        table.clearSelection();
        edit.setEnabled(false);
        delete.setEnabled(false);
        fillData();
    }

    public void update(Boolean flag) {
        table.clearSelection();
        edit.setEnabled(false);
        delete.setEnabled(false);
        fillData();
    }

    @Override
    protected JPanel getMenuEdit() {
        return null;
    }
}
