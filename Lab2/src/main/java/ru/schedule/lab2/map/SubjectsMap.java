package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Subjects;
import ru.schedule.lab2.entity.TimeOfLessons;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class SubjectsMap extends BaseMap<Subjects, Long> {
    public int getIdSubjectByValue(String subject) {
        String hql = String.format("Select S\n" +
                                    "From Subjects S\n" +
                                    "Where S.subject = '" + subject + "'");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Subjects> query = session.createQuery(hql);

        try {
            Subjects tempSubject = query.getSingleResult();
            session.close();
            return tempSubject.getIdSubject();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public List<String> getAllSubjects() {
        String hql = String.format("Select Distinct S.subject \n" +
                                    "From Subjects S\n" +
                                    "Order By S.subject");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<String> query = session.createQuery(hql);

        List<String> list = query.list();
        session.close();
        return list;
    }

    @Override
    protected Class<Subjects> getType() {
        return Subjects.class;
    }

    @Override
    public String getTableName() {
        return "Subjects";
    }
}
