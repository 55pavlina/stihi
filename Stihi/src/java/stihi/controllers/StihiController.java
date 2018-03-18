package stihi.controllers;

import java.util.List;
import stihi.dal.StihiDal;
import stihi.model.Stihi;


public class StihiController 
{
    protected StihiDal stihiDal;

    public StihiController() 
    {
        this.stihiDal = new StihiDal();
    }
    
    public List<Stihi> getAllStihi()
    {
        return stihiDal.selectAll();
    }
    
    public Stihi getStihi(int id)
    {
        return stihiDal.selectById(id);
    }
    
    public int insertStihi(Stihi stihi)
    {
       return stihiDal.insert(stihi);
    }
    
    public int updateStihi(Stihi stihi)
    {
       return stihiDal.update(stihi);
    }
    
    public int deleteStihi(int id)
    {
       return stihiDal.deleteById(id);
    }
}
