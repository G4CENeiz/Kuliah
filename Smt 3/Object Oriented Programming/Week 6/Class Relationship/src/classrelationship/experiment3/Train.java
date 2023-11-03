package classrelationship.experiment3;

public class Train {
    private String name;
    private String classification;
    private Employee conductor;
    private Employee assitant;

    public Train(String name, String classification, Employee conductor) {
        this.name = name;
        this.classification = classification;
        this.conductor = conductor;
    }

    public Train(String name, String classification, Employee conductor, Employee assistant) {
        this.name = name;
        this.classification = classification;
        this.conductor = conductor;
        this.assitant = assistant;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getClassification() {
        return classification;
    }

    public void setConductor(Employee conductor) {
        this.conductor = conductor;
    }

    public Employee getConductor() {
        return conductor;
    }

    public void setAssitant(Employee assitant) {
        this.assitant = assitant;
    }

    public Employee getAssitant() {
        return assitant;
    }

    public String info() {
        String info = "";
        info += "Name     : " + this.name + "\n";
        info += "Class    : " + this.classification + "\n";
        info += "Conductor: " + this.conductor.info() + "\n";
        if (assitant != null) {
            info += "Assistant: " + this.assitant.info() + "\n";
        }
        return info;
    }
}
