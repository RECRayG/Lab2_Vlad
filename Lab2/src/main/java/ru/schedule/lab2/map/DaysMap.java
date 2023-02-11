package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Days;
import ru.schedule.lab2.util.HibernateUtil;

public class DaysMap extends BaseMap<Days, Long> {
    public int getIdDaysByValue(String day) {
        String hql = String.format("Select D\n" +
                                    "From Days D\n" +
                                    "Where D.day = '" + day + "'");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Days> query = session.createQuery(hql);

        try {
            Days tempDay = query.getSingleResult();
            session.close();
            return tempDay.getIdDay();
        } catch (NoResultException e) {
            return 0;
        }
    }
    @Override
    protected Class<Days> getType() {
        return Days.class;
    }

    @Override
    public String getTableName() {
        return "Days";
    }
}
