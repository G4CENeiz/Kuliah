public class test {
    public static void main(String[] args) {
        // 3573051004040001
        // 3573056204040001
        String numbers = "3573056204040001";
        int length = numbers.length();
        System.out.println(length);
        if (length != 16) System.out.println("false");
        for (int i = 0; i < length; i++) {
            switch (numbers.charAt(i)) {
                case '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' -> {
                    break;
                }
                default -> {
                    System.out.println("false");
                }
            }
        }
        System.out.println("true");
    }
}