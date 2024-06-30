
package com.mycompany.amazonclone.dao;

import com.mycompany.amazonclone.entities.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class CategoryDao {
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public int saveCategory(Category category) {
        int catId = 0;
        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        try {
            catId = (int) session.save(category);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return catId;
    }
    
}
