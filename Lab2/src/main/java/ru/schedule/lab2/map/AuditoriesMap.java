package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Auditories;
import ru.schedule.lab2.entity.Subjects;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class AuditoriesMap extends BaseMap<Auditories, Long> {
    public int getIdAuditoryByValue(String auditory) {
        String hql = String.format("Select A\n" +
                                    "From Auditories A\n" +
                                    "Where A.auditory = '" + auditory + "'");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Auditories> query = session.createQuery(hql);

        try {
            Auditories tempAuditory = query.getSingleResult();
            session.close();
            return tempAuditory.getIdAuditory();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public List<String> getAllAuditories() {
        String hql = String.format("Select Distinct A.auditory \n" +
                                    "From Auditories A\n" +
                                    "Order By A.auditory");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<String> query = session.createQuery(hql);

        List<String> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<Auditories> getType() {
        return Auditories.class;
    }

    @Override
    public String getTableName() {
        return "Auditories";
    }
}
