package com.kitten.Util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author 27213
 */
public class MyBatisUtil {
    private static SqlSessionFactory build;
    static {
        String resource = "mybatis-config.xml";
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream(resource);
            build = new SqlSessionFactoryBuilder().build(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static SqlSession getSqlSession(){
        return  build.openSession();
    }
}
