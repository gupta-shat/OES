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
public class CourseBean {
    private String course=null;
    private String description=null;
    private String duration=null;
    private int sessionable=0;

    /**
     * @return the course
     */
    public String getCourse() {
        return course;
    }

    /**
     * @param course the course to set
     */
    public void setCourse(String course) {
        this.course = course;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
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
     * @return the sessionable
     */
    public int getSessionable() {
        return sessionable;
    }

    /**
     * @param sessionable the sessionable to set
     */
    public void setSessionable(int sessionable) {
        this.sessionable = sessionable;
    }
}
