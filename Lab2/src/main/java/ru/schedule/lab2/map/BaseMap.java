package ru.schedule.lab2.map;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import ru.schedule.lab2.util.HibernateUtil;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseMap<T, ID extends Serializable> {
    // Стандартный поиск
    public List<T> findAll(String conf) {
        String hql = String.format(conf);//, getTableName());

        Session session = HibernateUtil.getSessionFactory().openSession();
        //Query<T> query = session.createQuery(hql, getType());
        Query<T> query = session.createQuery(hql);

        //@SuppressWarnings("unchecked")
        List<T> list = (List<T>)query.list();
        List<T> list2 = new ArrayList<T>();
        //Iterator itr = list.iterator();
//        while(itr.hasNext()) {
//            if(itr.next().getClass() == Object[].class) {
//                Object[] temp = (Object[]) itr.next();
//                list2.add((T) temp[0]);
//            } else  {
//                session.close();
//                return list;
//            }
//        }

        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).getClass() == Object[].class) {
                Object[] temp = (Object[]) list.get(i);
                list2.add((T) temp[0]);
            } else  {
                session.close();
                return list;
            }
        }

        session.close();
        return list2;
    }

    // Просто возращает список с самими объектами
    public List<T> findAllStandart(String conf) {
        String hql = String.format(conf);
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<T> query = session.createQuery(hql);
        List<T> list = (List<T>)query.list();
        session.close();
        return list;
    }

    // Поиск связанных элементов (много колонок)
    public List<Object[]> findAllIdentity(String conf) {
        String hql = String.format(conf);//, getTableName());

        Session session = HibernateUtil.getSessionFactory().openSession();
        //Query<T> query = session.createQuery(hql, getType());
        Query<T> query = session.createQuery(hql);

        //@SuppressWarnings("unchecked")
        List<T> list = (List<T>)query.list();
        List<Object[]> list2 = new ArrayList<>();

        for(int i = 0; i < list.size(); i++) {
            if(list.get(i).getClass() == Object[].class) {
                Object[] temp = (Object[]) list.get(i);
                list2.add(temp);
            }
        }

        session.close();
        return list2;
    }

    // Поиск связанных элементов (мало колонок)
    public List<String> findAllIdentityString(String conf) {
        String hql = String.format(conf);//, getTableName());

        Session session = HibernateUtil.getSessionFactory().openSession();
        //Query<T> query = session.createQuery(hql, getType());
        Query<T> query = session.createQuery(hql);

        //@SuppressWarnings("unchecked")
        List<T> list = (List<T>)query.list();
        List<String> list2 = new ArrayList<>();

        for(int i = 0; i < list.size(); i++) {
            //Class<?> tt = list.get(i).getClass();
            if(list.get(i).getClass() == String.class) {
                String temp = String.valueOf(list.get(i));
                list2.add(temp);
            }
        }

        session.close();
        return list2;
    }

    public T findById(ID id) {
        String hql = String.format("From %s where id = :id", getTableName());

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<T> query = session.createQuery(hql, getType());
        query.setParameter("id", id);

        T singleResult = query.getSingleResult();
        session.close();
        return singleResult;
    }

    public void save(T entity) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.persist(entity);
        tx1.commit();
        session.close();
    }

    public void edit(T entity) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.merge(entity);
        tx1.commit();
        session.close();
    }

    public void delete(T entity) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.remove(entity);
        tx1.commit();
        session.close();
    }

    protected abstract Class<T> getType();

    public abstract String getTableName();
}
