package stihi.controllers;

import java.util.List;
import stihi.dal.AutorsDal;
import stihi.model.Autors;


public class AutorsController 
{
    protected AutorsDal autorsDal;

    public AutorsController () 
    {
        this.autorsDal = new AutorsDal();
    }
    
    public List<Autors> getAllAutors()
    {
        return autorsDal.selectAll();
    }
    
    public Autors getAutors(int id)
    {
        return autorsDal.selectById(id);
    }
    
    public int insertAutors(Autors autors)
    {
       return autorsDal.insert(autors);
    }
    
    public int updateAutors(Autors autors)
    {
       return autorsDal.update(autors);
    }
    
    public int deleteAutors(int id)
    {
       return autorsDal.deleteById(id);
    }
}
