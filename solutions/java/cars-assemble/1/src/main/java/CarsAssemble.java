public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        double tasa = 0.0;
        if (speed > 0 && speed <= 4){
            tasa = 1.0;
        }else if(speed >=5 && speed <= 8){
            tasa = 0.9;
        }else if(speed == 9){
            tasa = 0.8;
        }else if(speed == 10){
            tasa = 0.77;
        }
        return (221 * speed) * tasa;
    }

    public int workingItemsPerMinute(int speed) {
        return  (int) productionRatePerHour(speed) / 60;
    }
}
