package classrelationship.experiment4;

public class Carriage {
    private String code;
    private Seat[] seats;
    
    private void initSeat() {
        for (int i = 0; i < seats.length; i++) {
            this.seats[i] = new Seat(String.valueOf(i + 1));
        }
    }

    public Carriage(String code, int amount) {
        this.code = code;
        this.seats = new Seat[amount];
        this.initSeat();
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setPassenger(Passenger passenger, int number) {
        // // original
        // this.seats[number-1].setPassenger(passenger);

        // moddified
        if (seats[number-1] == null) {
            this.seats[number-1].setPassenger(passenger);
        } else {
            System.out.println("Seat is occupied");
        }
    }

    public Seat[] getSeats() {
        return seats;
    }

    public String info() {
        String info = "";
        info += String.format("Code: %s %n", code);
        for (Seat seat : seats) {
            info += seat.info();
        }
        return info;
    }
}
