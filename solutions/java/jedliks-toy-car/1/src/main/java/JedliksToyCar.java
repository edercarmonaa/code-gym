public class JedliksToyCar {
    private int meters;
    private int battery = 100;
    public static JedliksToyCar buy() {
        JedliksToyCar newCar = new JedliksToyCar();
        return newCar;
    }

    public String distanceDisplay() {
       return "Driven "+ meters + " meters";
    }

    public String batteryDisplay() {
        return battery > 0 ? "Battery at "+ battery +"%" : "Battery empty";
    }

    public void drive() {
        if (battery > 0){
            meters += 20;
            battery--;
        }
    }
}
