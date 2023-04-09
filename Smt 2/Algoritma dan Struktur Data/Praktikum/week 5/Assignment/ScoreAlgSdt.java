package Assignment;

public class ScoreAlgSdt {
    String nameSdt;
    int scoreAssgnment;
    int scoreQuiz;
    int scoreMid;
    int scoreFinal;

    public double calculateTotalScore() {
        return scoreAssgnment * 0.3 + scoreQuiz * 0.2 + scoreMid * 0.2 + scoreFinal * 0.3;
    }
}
