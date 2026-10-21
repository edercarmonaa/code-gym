import java.util.Map;
import java.util.HashMap;

public class DialingCodes {

    Map<Integer, String> dialingCodes = new HashMap<>();
    
    public Map<Integer, String> getCodes() {
       return  dialingCodes;
    }

    public void setDialingCode(Integer code, String country) {
       dialingCodes.put(code, country);
    }

    public String getCountry(Integer code) {
        return dialingCodes.get(code);
    }

    public void addNewDialingCode(Integer code, String country) {
        if (!dialingCodes.containsKey(code) && !dialingCodes.containsValue(country) ){
             dialingCodes.put(code, country);            
        }
    }

    public Integer findDialingCode(String country) {
       if (dialingCodes.containsValue(country) ){
            for (Integer i : dialingCodes.keySet()) {
                if(country.equals(dialingCodes.get(i))){
                    return i; 
                }
            }           
        }
        return null;
    }

    public void updateCountryDialingCode(Integer code, String country) {
        if (dialingCodes.containsValue(country) ){
            for (Integer i : dialingCodes.keySet()) {
              if(country.equals(dialingCodes.get(i))){
                  dialingCodes.remove(i);
                  dialingCodes.put(code,country);
                }
            }           
        }
        
    }
}
