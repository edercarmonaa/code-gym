
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public static int[] getLastWeek() {
        int[] counts = new int[] { 0, 2, 5, 3, 7, 8, 4};
        return counts;
    }

    public int getToday() {
        return birdsPerDay[birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        birdsPerDay[birdsPerDay.length - 1]++;
    }

    public boolean hasDayWithoutBirds() {
       for(int dia: birdsPerDay) {
           if (dia == 0) return true;  
       } 
        return false;
    }

    public int getCountForFirstDays(int numberOfDays) {
        int suma = 0;
        for (int i = 0; i < numberOfDays && i < birdsPerDay.length; i++) {
            suma += birdsPerDay[i];
        }
        return suma;
    }

    public int getBusyDays() {
        int suma = 0;
        for(int dia: birdsPerDay) {
            suma += (dia >= 5) ? 1 : 0;
        }
        return suma;
    }
}
