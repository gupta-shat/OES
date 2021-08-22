/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author shatakshi
 */
public class ExamBean {
    private int subCode = 0;
    private String exam = null;
    private String duration = null;
    private String time = null;
    private int marks = 0;
    private int nmarks = 0;
    private int qus = 0;
    private int isActive = 0;
    private int isMain = 0;
    private int isResult = 0;

    /**
     * @return the subCode
     */
    public int getSubCode() {
        return subCode;
    }

    /**
     * @param subCode the subCode to set
     */
    public void setSubCode(int subCode) {
        this.subCode = subCode;
    }

    /**
     * @return the exam
     */
    public String getExam() {
        return exam;
    }

    /**
     * @param exam the exam to set
     */
    public void setExam(String exam) {
        this.exam = exam;
    }

    /**
     * @return the duration
     */
    public String getDuration() {
        return duration;
    }

    /**
     * @param duration the duration to set
     */
    public void setDuration(String duration) {
        this.duration = duration;
    }

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * @return the marks
     */
    public int getMarks() {
        return marks;
    }

    /**
     * @param marks the marks to set
     */
    public void setMarks(int marks) {
        this.marks = marks;
    }

    /**
     * @return the nmarks
     */
    public int getNmarks() {
        return nmarks;
    }

    /**
     * @param nmarks the nmarks to set
     */
    public void setNmarks(int nmarks) {
        this.nmarks = nmarks;
    }

    /**
     * @return the qus
     */
    public int getQus() {
        return qus;
    }

    /**
     * @param qus the qus to set
     */
    public void setQus(int qus) {
        this.qus = qus;
    }

    /**
     * @return the isActive
     */
    public int getIsActive() {
        return isActive;
    }

    /**
     * @param isActive the isActive to set
     */
    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    /**
     * @return the isMain
     */
    public int getIsMain() {
        return isMain;
    }

    /**
     * @param isMain the isMain to set
     */
    public void setIsMain(int isMain) {
        this.isMain = isMain;
    }

    /**
     * @return the isResult
     */
    public int getIsResult() {
        return isResult;
    }

    /**
     * @param isResult the isResult to set
     */
    public void setIsResult(int isResult) {
        this.isResult = isResult;
    }

}
