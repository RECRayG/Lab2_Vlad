package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.entity.Times;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class TimesMap extends BaseMap<Times, Long> {
    public int getCountTimes() {
        String hql = String.format("Select count(*)\n" +
                                    "From Times");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Long> query = session.createQuery(hql);

        try {
            Long count = query.getSingleResult();
            session.close();
            return count.intValue();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public List<Times> getTimesByWeek(String week) {
        String hql = String.format("Select T\n" +
                "From Times T\n" +
                "Where T.daysByIdDay.day = '" + week + "'");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Times> query = session.createQuery(hql);

        List<Times> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<Times> getType() {
        return Times.class;
    }

    @Override
    public String getTableName() {
        return "Times";
    }
}
