package cn.desinf.classMana.bean;

public class Score {
    private String couId;

    private String stuId;

    private Integer scoSco;

    private Integer scoAtt;
    
    private Course course;
    
    private Student student;

    public String getCouId() {
        return couId;
    }

    public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public void setCouId(String couId) {
        this.couId = couId == null ? null : couId.trim();
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public Integer getScoSco() {
        return scoSco;
    }

    public void setScoSco(Integer scoSco) {
        this.scoSco = scoSco;
    }

    public Integer getScoAtt() {
        return scoAtt;
    }

    public void setScoAtt(Integer scoAtt) {
        this.scoAtt = scoAtt;
    }



	public Score(String couId, String stuId, Integer scoSco, Integer scoAtt, Course course, Student student) {
		super();
		this.couId = couId;
		this.stuId = stuId;
		this.scoSco = scoSco;
		this.scoAtt = scoAtt;
		this.course = course;
		this.student = student;
	}

	public Score() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Score [couId=" + couId + ", stuId=" + stuId + ", scoSco=" + scoSco + ", scoAtt=" + scoAtt + ", course="
				+ course + ", student=" + student + "]";
	}
    
}