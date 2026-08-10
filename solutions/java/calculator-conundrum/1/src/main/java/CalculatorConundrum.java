class CalculatorConundrum {
    public String calculate(int operand1, int operand2, String operation) {
        int result = 0;
        switch (operation) {
            case null:
                throw new IllegalArgumentException("Operation cannot be null");
            case "":
                throw new IllegalArgumentException("Operation cannot be empty");
            case "+":
                result = operand1 + operand2;
                break;
            case "*":
               result = operand1 * operand2;
                break; 
            case "/":
                try{
                   result = operand1 / operand2;     
                }catch (ArithmeticException e) {
                     throw new IllegalOperationException("Division by zero is not allowed", e);
                }
                break;
            default:
                throw new IllegalOperationException("Operation '" + operation + "' does not exist");
        }
        return String.valueOf(operand1)+" "+operation+" "+String.valueOf(operand2) + " = " + String.valueOf(result);
    }
}
