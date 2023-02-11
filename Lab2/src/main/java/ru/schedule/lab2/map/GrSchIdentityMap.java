package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.GrSchIdentity;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class GrSchIdentityMap extends BaseMap<GrSchIdentity, Long> {

    public int getIdByIdSchedule(int idSchedule) {
        String hql = String.format("Select GS\n" +
                                    "From GrSchIdentity GS\n" +
                                    "Join GS.schedulesByIdSchedule SH\n" +
                                    "Where SH.idSchedule = " + idSchedule);

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<GrSchIdentity> query = session.createQuery(hql);

        try {
            GrSchIdentity grSchIdentity = query.getSingleResult();
            session.close();
            return grSchIdentity.getIdGrSchIdentity();
        } catch (NoResultException e) {
            return 0;
        }
    }

    @Override
    protected Class<GrSchIdentity> getType() {
        return GrSchIdentity.class;
    }

    @Override
    public String getTableName() {
        return "GrSchIdentity";
    }
}
