package com.ankur.project.entity;

public class BMI {
    public Double height;
    public Double weight;
    public Double BMI;
    public String BMIResult;
    public String BMIAdvice;

    public BMI(Double height, Double weight) {
        this.height = height;
        this.weight = weight;
    }

    public BMI() {

    }

    public String getBMIResult() {
        return BMIResult;
    }

    public String getBMIAdvice() {
        return BMIAdvice;
    }

    public Double getHeight() {
        return height;
    }

    public Double getWeight() {
        return weight;
    }

    public Double getBMI() {
        return BMI;
    }

    public void calcBMI() {
        this.BMI = weight / (height * height);
    }

    public void calculateBMIResult() {
        if(BMI < 18.5) {
            BMIResult = "Underweight";
            BMIAdvice = "A BMI of less than 18.5 indicates that you are underweight," +
                    " so you may need to put on some weight. " +
                    "You are recommended to ask your doctor or a dietitian for advice.";
        } else  if (BMI >= 18.5 && BMI <= 24.9) {
            BMIResult = "Normal Range";
            BMIAdvice = "A BMI of 18.5-24.9 indicates that you are at a healthy weight for your height." +
                    " By maintaining a healthy weight," +
                    " you lower your risk of developing serious health problems.";
        } else if (BMI >= 25.0 && BMI <= 29.9) {
            BMIResult = "Overweight (Preobese)";
            BMIAdvice = "A BMI of 25-29.9 indicates that you are slightly overweight." +
                    " You may be advised to lose some weight for health reasons." +
                    " You are recommended to talk to your doctor or a dietitian for advice.";
        } else if (BMI >= 30.0 && BMI <= 34.9) {
            BMIResult = "Obese (Obese class I)";
            BMIAdvice = "A BMI of over 30 indicates that you are heavily overweight." +
                    " Your health may be at risk if you do not lose weight." +
                    " You are recommended to talk to your doctor or a dietitian for advice.";
        } else if (BMI >= 35.0 && BMI <= 39.9) {
            BMIResult = "Obese (Obese class II)";
            BMIAdvice = "A BMI of over 30 indicates that you are heavily overweight." +
                    " Your health may be at risk if you do not lose weight." +
                    " You are recommended to talk to your doctor or a dietitian for advice.";
        } else {
            BMIResult = "Obese (Obese class III)";
            BMIAdvice = "A BMI of over 30 indicates that you are heavily overweight." +
                    " Your health may be at risk if you do not lose weight." +
                    " You are recommended to talk to your doctor or a dietitian for advice.";
        }
    }

}
