package Assignment;

public class Vote {
    public String[] candidate;
    public int[][] votes;

    public Vote(String[] candidate) { 
        this.candidate = candidate;
    }

    public int[] count(int[][] votes, int left, int right) {
        if (left == right) {
            int[] vote = votes[0];
            int[] result = new int[1];
            result[0] = sum(vote, left, right);
            return result;
        } else {
            int mid = (left + right) / 2;
            int[] leftResult  = count(votes, left, mid);
            int[] rightResult = count(votes, mid+1, right);

            int leftLen = leftResult.length;
            int rightLen = rightResult.length;

            int[] result = new int[leftLen+rightLen];

            for (int i = 0; i < leftLen; i++) {
                result[i] = leftResult[i];
            }
            for (int i = leftLen; i < leftLen+rightLen; i++) {
                result[i] = rightResult[i-leftLen];
            }
            return result;
        }
    }

    public int sum(int[] vote, int left, int right) {
        if (left == right) {
            return vote[left];
        } else {
            int mid = (left + right) / 2;
            int leftSum = sum(vote, left, mid-1);
            int rightSum = sum(vote, mid+1, right);
            return leftSum + rightSum + vote[mid];
        }
    }

    public void display() {
        int[] voteCount = count(votes, 0, votes.length);
        int highIdx = 0;
        int highNum = 0;
        for (int i = 0; i < voteCount.length; i++) {
            if (voteCount[i] > highNum) {
                highNum = voteCount[i];
                highIdx = i;
            }
        }
        System.out.printf("The elected president is %s with %d votes", candidate[highIdx], highNum);
    }
}
