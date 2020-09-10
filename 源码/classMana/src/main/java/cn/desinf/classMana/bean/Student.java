package cn.desinf.classMana.bean;

import javax.validation.constraints.Max;

import org.hibernate.validator.constraints.Length;

public class Student {
	@Length(min=11,max=12)
    private String stuId;
    @Length(min=2,max=5)
    private String stuName;

    private String stuSex;

    @Max(100)
    private Integer stuAge;

    private String stuDept;

    private String stuClass;

    private String stuAddress;

    private String stuSchool;

    @Length(min=11,max=11)
    private String stuPhone;

    private String stuPosition;

    private Integer stuGrp;

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex == null ? null : stuSex.trim();
    }

    public Integer getStuAge() {
        return stuAge;
    }

    public void setStuAge(Integer stuAge) {
        this.stuAge = stuAge;
    }

    public String getStuDept() {
        return stuDept;
    }

    public void setStuDept(String stuDept) {
        this.stuDept = stuDept == null ? null : stuDept.trim();
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass == null ? null : stuClass.trim();
    }

    public String getStuAddress() {
        return stuAddress;
    }

    public void setStuAddress(String stuAddress) {
        this.stuAddress = stuAddress == null ? null : stuAddress.trim();
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool == null ? null : stuSchool.trim();
    }

    public String getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(String stuPhone) {
        this.stuPhone = stuPhone == null ? null : stuPhone.trim();
    }

    public String getStuPosition() {
        return stuPosition;
    }

    public void setStuPosition(String stuPosition) {
        this.stuPosition = stuPosition == null ? null : stuPosition.trim();
    }

    public Integer getStuGrp() {
        return stuGrp;
    }

    public void setStuGrp(Integer stuGrp) {
        this.stuGrp = stuGrp;
    }

	public Student(String stuId, String stuName, String stuSex, Integer stuAge, String stuDept, String stuClass,
			String stuAddress, String stuSchool, String stuPhone, String stuPosition, Integer stuGrp) {
		super();
		this.stuId = stuId;
		this.stuName = stuName;
		this.stuSex = stuSex;
		this.stuAge = stuAge;
		this.stuDept = stuDept;
		this.stuClass = stuClass;
		this.stuAddress = stuAddress;
		this.stuSchool = stuSchool;
		this.stuPhone = stuPhone;
		this.stuPosition = stuPosition;
		this.stuGrp = stuGrp;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Student [stuId=" + stuId + ", stuName=" + stuName + ", stuSex=" + stuSex + ", stuAge=" + stuAge
				+ ", stuDept=" + stuDept + ", stuClass=" + stuClass + ", stuAddress=" + stuAddress + ", stuSchool="
				+ stuSchool + ", stuPhone=" + stuPhone + ", stuPosition=" + stuPosition + ", stuGrp=" + stuGrp + "]";
	}
	
	
    
}