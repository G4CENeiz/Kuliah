package classrelationship.experiment4;

public class Passenger {
    private String IDCard;
    private String name;

    public Passenger(String IDCard, String name) {
        this.IDCard = IDCard;
        this.name = name;
    }

    public void setIDCard(String iDCard) {
        IDCard = iDCard;
    }

    public String getIDCard() {
        return IDCard;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String info() {
        String info = "";
        info += String.format("ID Card: %s %n", IDCard);
        info += String.format("Name: %s %n", name);
        return info;
    }
}
