package ru.schedule.lab2.gui;

import net.miginfocom.swing.MigLayout;

import javax.swing.*;
import java.awt.*;

import static ru.schedule.lab2.constants.CONST.*;

public class MainGUI extends JFrame {
    private Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize(); // Создаём переменную, в которой хранится размер экрана
    private JPanel mainWindow = new JPanel(); // Главная панель
    private JScrollPane mainWindowScroll;
    private SchedulePanel schedulePanel;
    private ProfessorsPanel professorsPanel;
    private GroupPanel groupPanel;
    public MainGUI() throws HeadlessException {
        // Настройки
        mainWindow.setBackground(new Color(255,255,255));
        mainWindow.setLayout(new MigLayout());

        JTabbedPane tabbedPane = new JTabbedPane();
        tabbedPane.setPreferredSize(screenSize);

        schedulePanel = new SchedulePanel(this);
        professorsPanel = new ProfessorsPanel(this, schedulePanel);
        groupPanel = new GroupPanel(this, schedulePanel);

        tabbedPane.addTab(SCHEDULE_ALL, schedulePanel);
        tabbedPane.addTab(PROFESSORS, professorsPanel);
        tabbedPane.addTab(GROUPS, groupPanel);
        //tabbedPane.addChangeListener(l -> ((BaseEntityPanel) tabbedPane.getSelectedComponent()).update());

        // Добавление элементов в панель
        mainWindow.add(tabbedPane, "width " + ( screenSize.getWidth() - 24 ) + ", height " + ( screenSize.getHeight() / 1.15 ));
        mainWindowScroll = new JScrollPane(mainWindow, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        // Отображение
        addRegistryMainWindow(mainWindowScroll, (int)(screenSize.getWidth()), (int)(screenSize.getHeight()));
    }

    private void addRegistryMainWindow(JScrollPane _panel, int width, int height)
    {
        this.setBounds(0, 0, width, height); // Устанавливаем оптимальные размеры окна, учитывая размеры экрана
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // При нажатии на X произойдёт выход из приложения
        this.setFocusable(true); // Фокус на окне
        this.setVisible(true); // Делаем окно видимым
        this.setResizable(true); // Запрет на изменение размеров окна - нет
        this.setExtendedState(this.MAXIMIZED_BOTH); // Растяжение на весь экран
        this.setTitle(SCHEDULE); // Заголовок окна

        this.add(_panel);
    }
}
