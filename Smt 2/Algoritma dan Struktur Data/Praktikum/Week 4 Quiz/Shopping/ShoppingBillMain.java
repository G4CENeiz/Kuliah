package Shopping;

public class ShoppingBillMain {
    public static void main(String[] args) {
        //* create object
        // region
        ShoppingBill[] bills = new ShoppingBill[5];
    
        //* Alice's data
        // region Alice
        bills[0] = new ShoppingBill();
        bills[0].BillId = "D100223T0001";
        bills[0].CustomerId = "2301010001";
        bills[0].CustomerName = "Alice";
        bills[0].date = "10 February 2023";
        bills[0].price[0] = 65_000;
        bills[0].price[1] = 25_000;
        bills[0].price[2] = 70_000;
        bills[0].price[3] = 40_000;
        bills[0].couponCode = "GIFT10";
        bills[0].deliveryDistance = 20;
        // endregion
        
        //* Bob's data
        // region Bob
        bills[1] = new ShoppingBill();
        bills[1].BillId = "D100223T0002";
        bills[1].CustomerId = "2301010002";
        bills[1].CustomerName = "Bob";
        bills[1].date = "10 February 2023";
        bills[1].price[0] = 80_000;
        bills[1].price[1] = 30_000;
        bills[1].price[2] = 0;
        bills[1].price[3] = 0;
        bills[1].couponCode = "GIFT17";
        bills[1].deliveryDistance = 37;
        // endregion

        //* Charlie's data
        // region Charlie
        bills[2] = new ShoppingBill();
        bills[2].BillId = "D100223T0003";
        bills[2].CustomerId = "2301010003";
        bills[2].CustomerName = "Charlie";
        bills[2].date = "10 February 2023";
        bills[2].price[0] = 45_000;
        bills[2].price[1] = 125_000;
        bills[2].price[2] = 85_000;
        bills[2].price[3] = 37_000;
        bills[2].couponCode = "GIFT17";
        bills[2].deliveryDistance = 135;
        // endregion

        //* Dan's data
        // region Dan
        bills[3] = new ShoppingBill();
        bills[3].BillId = "D100223T0004";
        bills[3].CustomerId = "2301010004";
        bills[3].CustomerName = "Dan";
        bills[3].date = "10 February 2023";
        bills[3].price[0] = 300_000;
        bills[3].price[1] = 45_000;
        bills[3].price[2] = 90_000;
        bills[3].price[3] = 30_000;
        bills[3].couponCode = "GIFT15";
        bills[3].deliveryDistance = 13;
        // endregion

        //* Eli's data
        // region Eli
        bills[4] = new ShoppingBill();
        bills[4].BillId = "D100223T0005";
        bills[4].CustomerId = "2301010005";
        bills[4].CustomerName = "Eli";
        bills[4].date = "10 February 2023";
        bills[4].price[0] = 35_000;
        bills[4].price[1] = 55_000;
        bills[4].price[2] = 0;
        bills[4].price[3] = 0;
        bills[4].couponCode = "";
        bills[4].deliveryDistance = 25;
        // endregion
        // endregion

        //* averge total payment
        // region 
        System.out.println();
        double sumDiscTotalPayment = 0;
        int discTotalPaymentCount = 0;
        //* summing up and counting payment with discount code "GIFT17"
        for (int i = 0; i < bills.length; i++) {
            if(bills[i].couponCode == "GIFT17") {
                sumDiscTotalPayment += bills[i].calcTotalPayment();
                discTotalPaymentCount++;
            }
        }
        double discTotalPayment = sumDiscTotalPayment/discTotalPaymentCount;
        System.out.printf("Average payment for people who use gift code \"GIFT17\" is Rp %,.0f\n", discTotalPayment);
        System.out.println();
        // endregion

        //* customer biggest total payment
        // region
        int compare = 0;
        String whaleName = "";
        String whaleId = "";
        for (int i = 0; i < bills.length; i++) {
            if (bills[i].calcTotalPayment() > compare) {
                compare = bills[i].calcTotalPayment();
                whaleName = bills[i].CustomerName;
                whaleId = bills[i].CustomerId;
            }
        }
        System.out.printf("The biggest spender for the throne of Whale goes to %s with customer id of %s with total payment after shipping of Rp %,d\n", whaleName, whaleId, compare);
        System.out.println();
        // endregion

        //* all customer total savings
        double totalPaymentBeforeShippingDiscount = 0;
        double totalPaymentBeforeShipping = 0;
        double totalCustomersSaving = 0;
        for (int i = 0; i < bills.length; i++) {
            for (int j = 0; j < bills[i].price.length; j++) {
                totalPaymentBeforeShippingDiscount += bills[i].price[j];
            }
        }
        for (int i = 0; i < bills.length; i++) {
            totalPaymentBeforeShipping += bills[i].calcDiscount(); 
        }
        totalCustomersSaving = totalPaymentBeforeShippingDiscount - totalPaymentBeforeShipping;

        System.out.printf("Total savings from all of our customer is Rp %,.0f\n", totalCustomersSaving);
        System.out.println();
    }
}
