package cn.desinf.classMana.bean;

public class Teacher {
    private String teaId;

    private String teaName;

    private String teaSex;

    private Integer teaAge;

    private String teaDept;

    private String teaClass;

    private String teaPhone;

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId == null ? null : teaId.trim();
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName == null ? null : teaName.trim();
    }

    public String getTeaSex() {
        return teaSex;
    }

    public void setTeaSex(String teaSex) {
        this.teaSex = teaSex == null ? null : teaSex.trim();
    }

    public Integer getTeaAge() {
        return teaAge;
    }

    public void setTeaAge(Integer teaAge) {
        this.teaAge = teaAge;
    }

    public String getTeaDept() {
        return teaDept;
    }

    public void setTeaDept(String teaDept) {
        this.teaDept = teaDept == null ? null : teaDept.trim();
    }

    public String getTeaClass() {
        return teaClass;
    }

    public void setTeaClass(String teaClass) {
        this.teaClass = teaClass == null ? null : teaClass.trim();
    }

    public String getTeaPhone() {
        return teaPhone;
    }

    public void setTeaPhone(String teaPhone) {
        this.teaPhone = teaPhone == null ? null : teaPhone.trim();
    }

	public Teacher(String teaId, String teaName, String teaSex, Integer teaAge, String teaDept, String teaClass,
			String teaPhone) {
		super();
		this.teaId = teaId;
		this.teaName = teaName;
		this.teaSex = teaSex;
		this.teaAge = teaAge;
		this.teaDept = teaDept;
		this.teaClass = teaClass;
		this.teaPhone = teaPhone;
	}

	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}