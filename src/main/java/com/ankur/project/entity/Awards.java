package com.ankur.project.entity;

public class Awards {
    public Long score;
    public String tier;

    public Long getScore() {
        return score;
    }

    public String getTier() {
        return tier;
    }

    public Awards() {

    }

    public void calculateTier() {
        if(score < 10) {
            tier = "bronze";
        } else if(score >= 10 && score < 20) {
            tier = "silver";
        } else if (score >= 20 && score < 30) {
            tier = "gold";
        } else if (score >= 30 && score < 40) {
            tier = "diamond";
        } else if (score >= 40 && score < 60) {
            tier = "crown";
        } else {
            tier = "conqueror";
        }
    }
}
