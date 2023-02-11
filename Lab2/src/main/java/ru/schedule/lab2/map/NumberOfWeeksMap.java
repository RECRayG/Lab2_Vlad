package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.NumberOfWeeks;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class NumberOfWeeksMap extends BaseMap<NumberOfWeeks, Long> {
    public int getCountNumberOfWeeks() {
        String hql = String.format("Select count(*)\n" +
                                    "From NumberOfWeeks");

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

    public int getIdByValue(int numberWeek) {
        String hql = String.format("Select NW\n" +
                                    "From NumberOfWeeks NW\n" +
                                    "Where NW.numberWeek = " + numberWeek);

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<NumberOfWeeks> query = session.createQuery(hql);

        try {
            NumberOfWeeks numberOfWeek = query.getSingleResult();
            session.close();
            return numberOfWeek.getIdNumberOfWeek();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public List<Integer> getAllWeeks() {
        String hql = String.format("Select NW.numberWeek From " + getTableName() + " NW");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Integer> query = session.createQuery(hql);

        List<Integer> list = query.list();
        session.close();
        return list;
    }

    public int getValueById(int idNumberOfWeek) {
        String hql = String.format("Select NW\n" +
                                    "From NumberOfWeeks NW\n" +
                                    "Where NW.idNumberOfWeek = " + idNumberOfWeek);

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<NumberOfWeeks> query = session.createQuery(hql);

        try {
            NumberOfWeeks numberOfWeek = query.getSingleResult();
            session.close();
            return numberOfWeek.getNumberWeek();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public NumberOfWeeks getNumberOfWeekById(int idNumberOfWeek) {
        String hql = String.format("From NumberOfWeeks NW Where NW.idNumberOfWeek = " + idNumberOfWeek);
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<NumberOfWeeks> query = session.createQuery(hql);

        NumberOfWeeks numberOfWeek = query.getSingleResult();
        session.close();
        return numberOfWeek;
    }

    @Override
    protected Class<NumberOfWeeks> getType() {
        return NumberOfWeeks.class;
    }

    @Override
    public String getTableName() {
        return "NumberOfWeeks";
    }
}
