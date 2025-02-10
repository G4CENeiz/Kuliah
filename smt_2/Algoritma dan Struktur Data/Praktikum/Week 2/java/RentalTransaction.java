public class RentalTransaction {
    String memberId, memberName, gameName;
    int dailyPrice, dayRent;

    RentalTransaction() {

    }

    RentalTransaction(String memberId, String memberName, String gameName, int dailyPrice, int dayRent) {
        this.memberId = memberId;
        this.memberName = memberName;
        this.gameName = gameName;
        this.dailyPrice = dailyPrice;
        this.dayRent = dayRent;
    }

    void print() {
        System.out.printf("""
                Member ID   : %s
                Member name : %s
                Game name   : %s
                Price       : %,d
                Rent period : %,d %s
                Total       : %,d
                """, memberId, memberName, gameName, dailyPrice, dayRent, dayRent < 2 ? "day" : "days",
                dailyPrice * dayRent);
    }
}
