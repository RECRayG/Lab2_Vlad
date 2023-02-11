package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.TimeOfLessons;
import ru.schedule.lab2.entity.Times;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class TimeOfLessonsMap extends BaseMap<TimeOfLessons, Long> {

    public int getCountTimeOfLessons() {
        String hql = String.format("Select count(*)\n" +
                                    "From TimeOfLessons");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Long> query = session.createQuery(hql);

        try {
            Long count = query.getSingleResult();
            session.close();
            return count.intValue() / 2;
        } catch (NoResultException e) {
            return 0;
        }
    }

    public int getIdTimeOfLessonsByValue(String time) {
        String hql = String.format("Select TL\n" +
                                    "From TimeOfLessons TL\n" +
                                    "Where TL.timeLesson = '" + time + "'");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<TimeOfLessons> query = session.createQuery(hql);

        try {
            TimeOfLessons timeOfLessons = query.getSingleResult();
            session.close();
            return timeOfLessons.getIdTimeOfLesson();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public List<TimeOfLessons> getTimeOfLessonsByTablePos(int numberPos) {
        String hql = String.format("Select TL\n" +
                                    "From " + getTableName() + " TL");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<TimeOfLessons> query = session.createQuery(hql);

        query.setFirstResult(numberPos * 2 - 2);
        query.setMaxResults(2);

        List<TimeOfLessons> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<TimeOfLessons> getType() {
        return TimeOfLessons.class;
    }

    @Override
    public String getTableName() {
        return "TimeOfLessons";
    }
}
