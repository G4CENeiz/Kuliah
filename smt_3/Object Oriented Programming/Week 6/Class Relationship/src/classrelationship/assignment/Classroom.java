package classrelationship.assignment;

public class Classroom {
    private String roomID;
    private int start;
    private int end;

    public Classroom(String roomID, int start, int end) {
        this.roomID = roomID;
        this.start = start;
        this.end = end;
    }
    
    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    public String getRoomID() {
        return roomID;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getStart() {
        return start;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getEnd() {
        return end;
    }

    public String info() {
        String info = "";
        info += String.format("Room ID: %s %n", roomID);
        info += String.format("Session: %d - %d %n", start, end);
        return info;
    }
}
