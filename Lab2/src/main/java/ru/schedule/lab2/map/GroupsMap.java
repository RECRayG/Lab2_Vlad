package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Groups;
import ru.schedule.lab2.entity.Subjects;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class GroupsMap extends BaseMap<Groups, Long> {
    public Groups getGroupsById(int idGroup) {
        String hql = String.format("From Groups G Where G.idGroup = " + idGroup);
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Groups> query = session.createQuery(hql);

        Groups group = query.getSingleResult();
        session.close();
        return group;
    }

    public Groups getGroupByValue(String name) {

        Session session;
        Query<Groups> query;
        Groups group;

        String hql = String.format("Select G\n" +
                                    "From Groups G\n" +
                                    "Where " +
                                    "G.group_name like '" + name + "' And\n");

        session = HibernateUtil.getSessionFactory().openSession();
        query = session.createQuery(hql);
        group = query.getSingleResult();
        session.close();
        return group;
    }

    public List<String> getAllGroups() {
        String hql = String.format("Select G.groupName From " + getTableName() + " G");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<String> query = session.createQuery(hql);

        List<String> list = query.list();
        session.close();
        return list;
    }

    public int getIdGroupByValue(String group) {
        String hql = String.format("Select G\n" +
                                    "From Groups G\n" +
                                    "Where G.groupName = '" + group + "'");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Groups> query = session.createQuery(hql);

        try {
            Groups tempGroup = query.getSingleResult();
            session.close();
            return tempGroup.getIdGroup();
        } catch (NoResultException e) {
            return 0;
        }
    }

    @Override
    public String getTableName() {
        return "Groups";
    }

    @Override
    protected Class<Groups> getType() {
        return Groups.class;
    }
}
