package ru.schedule.lab2.map;

import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Schedules;
import ru.schedule.lab2.entity.Types;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class TypesMap extends BaseMap<Types, Long> {
    public Types getTypeByValue(String type) {
        String hql = String.format("From Types T Where T.type = '" + type + "'");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Types> query = session.createQuery(hql);

        Types tempType = query.getSingleResult();
        session.close();
        return tempType;
    }

    public List<String> getAllTypes() {
        String hql = String.format("Select Distinct T.type\n" +
                                    "From Types T\n" +
                                    "Order By T.type");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<String> query = session.createQuery(hql);

        List<String> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<Types> getType() {
        return Types.class;
    }

    @Override
    public String getTableName() {
        return "Types";
    }
}
