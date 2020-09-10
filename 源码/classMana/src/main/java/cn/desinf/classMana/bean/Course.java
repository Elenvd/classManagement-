package cn.desinf.classMana.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;

public class Course {
	@NotNull
    private String couId;
	@NotNull
    private String couName;

    private Integer couScore;

    private Date couTime;

    public String getCouId() {
        return couId;
    }

    public void setCouId(String couId) {
        this.couId = couId == null ? null : couId.trim();
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName == null ? null : couName.trim();
    }

    public Integer getCouScore() {
        return couScore;
    }

    public void setCouScore(Integer couScore) {
        this.couScore = couScore;
    }

    public Date getCouTime() {
        return couTime;
    }

    public void setCouTime(Date couTime) {
        this.couTime = couTime;
    }

	public Course(String couId, String couName, Integer couScore, Date couTime) {
		super();
		this.couId = couId;
		this.couName = couName;
		this.couScore = couScore;
		this.couTime = couTime;
	}

	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Course [couId=" + couId + ", couName=" + couName + ", couScore=" + couScore + ", couTime=" + couTime
				+ "]";
	}
    
}