class NeedForSpeed {
    private int speed;
    private int batteryDrain;
    private int distance = 0;
    private int battery = 100;
    
    NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {
        return this.battery == 0 || this.battery < this.batteryDrain;
    }

    public int distanceDriven() {
        return this.distance;
    }

    public void drive() {
        if(!this.batteryDrained()){
           this.distance += this.speed;
            this.battery -= this.batteryDrain; 
        }
    }

    public static NeedForSpeed nitro() {
        NeedForSpeed car = new NeedForSpeed(50,4);
        return car;
    }
}

class RaceTrack {
    private int distance;
    
    RaceTrack(int distance) {
        this.distance= distance;
    }

    public boolean canFinishRace(NeedForSpeed car) {
        while(car.distanceDriven() < this.distance){
            car.drive();
            if (car.batteryDrained() && car.distanceDriven() < this.distance ){
                return false;
            }
        }
        return true;
    }
}
