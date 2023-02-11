package ru.schedule.lab2.map;

import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import ru.schedule.lab2.entity.Groups;
import ru.schedule.lab2.entity.Professors;
import ru.schedule.lab2.util.HibernateUtil;

import java.util.List;

public class ProfessorsMap extends BaseMap<Professors, Long> {

    public Professors getProfessorsById(int idProfessor) {
        String hql = String.format("From Professors P Where P.idProfessor = " + idProfessor);
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Professors> query = session.createQuery(hql);

        Professors professor = query.getSingleResult();
        session.close();
        return professor;
    }

    public int getIdProfessorByValue(String fullName) {
        String[] subStr;
        String delimiter = " ";
        subStr = fullName.split(delimiter);

        String hql;
        if(subStr.length == 2) {
            hql = String.format("Select P\n" +
                    "From Professors P\n" +
                    "Where " +
                    "P.lastName like '" + subStr[0] + "' And\n" +
                    "P.firstName like '" + subStr[1] + "'");

        } else {
            hql = String.format("Select P\n" +
                    "From Professors P\n" +
                    "Where " +
                    "P.lastName like '" + subStr[0] + "' And\n" +
                    "P.firstName like '" + subStr[1] + "' And\n" +
                    "P.middleName like '" + subStr[2] + "'");

        }

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Professors> query = session.createQuery(hql);

        try {
            Professors professor = query.getSingleResult();
            session.close();
            return professor.getIdProfessor();
        } catch (NoResultException e) {
            return 0;
        }
    }

    public Professors getProfessorByValue(String fullName) {
        String[] subStr;
        String delimiter = " ";
        subStr = fullName.split(delimiter);

        String hql;
        Session session;
        Query<Professors> query;
        Professors professor;

        if(subStr.length == 2) {
            hql = String.format("Select P\n" +
                    "From Professors P\n" +
                    "Where " +
                    "P.lastName like '" + subStr[0] + "' And\n" +
                    "P.firstName like '" + subStr[1] + "'");

        } else {
            hql = String.format("Select P\n" +
                    "From Professors P\n" +
                    "Where " +
                    "P.lastName like '" + subStr[0] + "' And\n" +
                    "P.firstName like '" + subStr[1] + "' And\n" +
                    "P.middleName like '" + subStr[2] + "'");

        }

        session = HibernateUtil.getSessionFactory().openSession();
        query = session.createQuery(hql);
        professor = query.getSingleResult();
        session.close();
        return professor;
    }

    public List<String> getAllProfessors() {
        String hql = String.format("Select concat(P.lastName, \" \", P.firstName, " +
                                    "\" \", COALESCE(P.middleName,''))\n" +
                                    "From Professors P");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<String> query = session.createQuery(hql);

        List<String> list = query.list();
        session.close();
        return list;
    }

    @Override
    public String getTableName() {
        return "Professors";
    }

    @Override
    protected Class<Professors> getType() {
        return Professors.class;
    }
}
