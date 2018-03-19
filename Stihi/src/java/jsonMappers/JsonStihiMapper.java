
package jsonMappers;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import stihi.model.Stihi;


public class JsonStihiMapper {
    
     public static String toJson(Stihi stih)   {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writeValueAsString(stih);
        } catch (IOException ex) {
            Logger.getLogger(JsonStihiMapper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public static String toJson(List<Stihi> stihi)   {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writeValueAsString(stihi);
        } catch (IOException ex) {
            Logger.getLogger(JsonStihiMapper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public static Stihi fromJson(String json)   {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(json, Stihi.class);
        } catch (IOException ex) {
            Logger.getLogger(JsonStihiMapper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
