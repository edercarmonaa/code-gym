public class calculateIMC {
    public double Solution(double weight, double height) {
        return Math.round((weight / (height * height)) * 100.0) /100.0;
    }
}
