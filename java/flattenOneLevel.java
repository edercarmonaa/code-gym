import java.util.List;
import java.util.ArrayList;

public class flattenOneLevel {
    public List<Object> Solution(List<Object> array) {
        int longitud = array.size();
        List<Object> lista = new ArrayList<>();
        for (int i = 0; i < longitud; i++){
            Object elemento = array.get(i);
            if (elemento instanceof List) {
                int tamano = ((List<?>) elemento).size();
                for(int j = 0; j < tamano; j++){
                    lista.add(((List<?>) elemento).get(j));
                }
            } else {
                lista.add(elemento);
            }
        }
        return lista;
    }
