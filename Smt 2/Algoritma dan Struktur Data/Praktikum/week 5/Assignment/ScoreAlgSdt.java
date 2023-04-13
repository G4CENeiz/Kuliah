package Assignment;

public class ScoreAlgSdt {
    String nameSdt;
    int scoreAssgnment;
    int scoreQuiz;
    int scoreMid;
    int scoreFinal;

    public ScoreAlgSdt(String nameSdt, int scoreAssgnment, int scoreQuiz, int scoreMid, int scoreFinal) {
        this.nameSdt = nameSdt;
        this.scoreAssgnment = scoreAssgnment;
        this.scoreQuiz = scoreQuiz;
        this.scoreMid = scoreMid;
        this.scoreFinal = scoreFinal;
    }

    public double calculateTotalScore() {
        return scoreAssgnment * 0.3 + scoreQuiz * 0.2 + scoreMid * 0.2 + scoreFinal * 0.3;
    }
}
