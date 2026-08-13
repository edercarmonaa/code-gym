class ProductionRemoteControlCar implements RemoteControlCar, Cloneable, Comparable<ProductionRemoteControlCar> {
    private int distance = 0;
    private int victories = 0;
    public void drive() {
        this.distance += 10;
    }

    public int getDistanceTravelled() {
        return this.distance;
    }

    public int getNumberOfVictories() {
        return victories;
    }

    public void setNumberOfVictories(int numberOfVictories) {
        this.victories += numberOfVictories;
    }
    public int compareTo(ProductionRemoteControlCar other){
        return other.getNumberOfVictories() - this.getNumberOfVictories();
    }
}
