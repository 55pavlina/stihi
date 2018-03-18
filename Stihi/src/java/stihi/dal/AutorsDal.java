package stihi.dal;

import java.util.List;
import stihi.model.Autors;
import org.apache.ibatis.session.SqlSession;

public class AutorsDal extends BaseDal {

    public AutorsDal() {
        // super() может использоваться в конструкторе для вызова конструктора 
        //родительского класса. Т.е. наследует создание фабрики sql-сессий
        super();
    }

    public List<Autors> selectAll() {
        // Создает и открывает sql сессию(подключение к бд) при помощи фабрики sqlSessionFactory
        SqlSession session = sqlSessionFactory.openSession();
        /* 
         * В лист<Autors> загружаются все авторы из таблицы. При помощи xml мапперов,
         * переводятся данные из сущностей БД(строка и связанные с ней строки) в данные 
         * модели Autors.java. Используются функции из того маппера autors.xml
         */
        List<Autors> list = session.selectList("autors.selectAll");
        session.close(); // закрывает sql сессию
        return list;
    }

    /* Выбор автора по id */
    public Autors selectById(int id) {
        SqlSession session = sqlSessionFactory.openSession();
        Autors autors = session.selectOne("autors.selectById", id);
        session.close();
        return autors;
    }

    /* Удаление автора по id */
    public int deleteById(int id) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.delete("autors.deleteById", id);
        session.commit();
        session.close();
        return count;
    }

    /* Ввод автора по передаваемому объекту */
    public int insert(Autors autors) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.insert("autors.insert", autors);
        session.commit();
        session.close();
        return count;
    }

    /* Обновление автора по передаваемому объекту */
    public int update(Autors autors) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.update("autors.update", autors);
        session.commit();
        session.close();
        return count;
    }
}
