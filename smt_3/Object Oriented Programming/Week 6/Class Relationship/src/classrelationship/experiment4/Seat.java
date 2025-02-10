package classrelationship.experiment4;

public class Seat {
    private String seatNumber;
    private Passenger passenger;

    public Seat(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public void setSeatNumber(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public void setPassenger(Passenger passenger) {
        this.passenger = passenger;
    }

    public Passenger getPassenger() {
        return passenger;
    }

    public String info() {
        String info = "";
        info += String.format("Seat Number: %s %n", seatNumber);
        if (this.passenger != null) {
            info += String.format("Passenger: %s %n", passenger.info());
        }
        return info;
    }
}
