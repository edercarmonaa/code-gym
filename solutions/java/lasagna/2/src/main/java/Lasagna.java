public class Lasagna {
    public int expectedMinutesInOven(){
        int timeTotal = 40;
        return timeTotal;
    }
    public int remainingMinutesInOven(int timeOven){
        return expectedMinutesInOven() - timeOven;
    }
    public int preparationTimeInMinutes(int layers){
        return layers * 2;        
    }
    public int totalTimeInMinutes(int layers, int timeOven){
        return preparationTimeInMinutes(layers) + timeOven;
    }
}
