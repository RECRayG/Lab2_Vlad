package ru.schedule.lab2.map;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.entity.Schedules;
import ru.schedule.lab2.entity.TimeOfLessons;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class SchedulesMap extends BaseMap<Schedules, Long> {
    public int saveNull(Schedules entity) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        Object id = session.save(entity);
        tx1.commit();
        session.close();

        return (int)id;
    }

    public Schedules getSchedulesById(int idSchedule) {
        String hql = String.format("From Schedules S Where S.idSchedule = " + idSchedule);
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Schedules> query = session.createQuery(hql);

        Schedules schedule = query.getSingleResult();
        session.close();
        return schedule;
    }

    public List<Schedules> getSchedulesByProfessor(Professors professor) {
        String hql = String.format("Select SH\n" +
                                    "From " + getTableName() + " SH\n" +
                                    "Where SH.professorsByIdProfessor.idProfessor = " + professor.getIdProfessor());
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Schedules> query = session.createQuery(hql);

        List<Schedules> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<Schedules> getType() {
        return Schedules.class;
    }

    @Override
    public String getTableName() {
        return "Schedules";
    }
}
