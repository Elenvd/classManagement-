package cn.desinf.classMana.bean;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStuIdIsNull() {
            addCriterion("stu_id is null");
            return (Criteria) this;
        }

        public Criteria andStuIdIsNotNull() {
            addCriterion("stu_id is not null");
            return (Criteria) this;
        }

        public Criteria andStuIdEqualTo(String value) {
            addCriterion("stu_id =", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotEqualTo(String value) {
            addCriterion("stu_id <>", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdGreaterThan(String value) {
            addCriterion("stu_id >", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdGreaterThanOrEqualTo(String value) {
            addCriterion("stu_id >=", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdLessThan(String value) {
            addCriterion("stu_id <", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdLessThanOrEqualTo(String value) {
            addCriterion("stu_id <=", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdLike(String value) {
            addCriterion("stu_id like", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotLike(String value) {
            addCriterion("stu_id not like", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdIn(List<String> values) {
            addCriterion("stu_id in", values, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotIn(List<String> values) {
            addCriterion("stu_id not in", values, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdBetween(String value1, String value2) {
            addCriterion("stu_id between", value1, value2, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotBetween(String value1, String value2) {
            addCriterion("stu_id not between", value1, value2, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNull() {
            addCriterion("stu_name is null");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNotNull() {
            addCriterion("stu_name is not null");
            return (Criteria) this;
        }

        public Criteria andStuNameEqualTo(String value) {
            addCriterion("stu_name =", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotEqualTo(String value) {
            addCriterion("stu_name <>", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThan(String value) {
            addCriterion("stu_name >", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThanOrEqualTo(String value) {
            addCriterion("stu_name >=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThan(String value) {
            addCriterion("stu_name <", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThanOrEqualTo(String value) {
            addCriterion("stu_name <=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLike(String value) {
            addCriterion("stu_name like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotLike(String value) {
            addCriterion("stu_name not like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameIn(List<String> values) {
            addCriterion("stu_name in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotIn(List<String> values) {
            addCriterion("stu_name not in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameBetween(String value1, String value2) {
            addCriterion("stu_name between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotBetween(String value1, String value2) {
            addCriterion("stu_name not between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuSexIsNull() {
            addCriterion("stu_sex is null");
            return (Criteria) this;
        }

        public Criteria andStuSexIsNotNull() {
            addCriterion("stu_sex is not null");
            return (Criteria) this;
        }

        public Criteria andStuSexEqualTo(String value) {
            addCriterion("stu_sex =", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexNotEqualTo(String value) {
            addCriterion("stu_sex <>", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexGreaterThan(String value) {
            addCriterion("stu_sex >", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexGreaterThanOrEqualTo(String value) {
            addCriterion("stu_sex >=", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexLessThan(String value) {
            addCriterion("stu_sex <", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexLessThanOrEqualTo(String value) {
            addCriterion("stu_sex <=", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexLike(String value) {
            addCriterion("stu_sex like", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexNotLike(String value) {
            addCriterion("stu_sex not like", value, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexIn(List<String> values) {
            addCriterion("stu_sex in", values, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexNotIn(List<String> values) {
            addCriterion("stu_sex not in", values, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexBetween(String value1, String value2) {
            addCriterion("stu_sex between", value1, value2, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuSexNotBetween(String value1, String value2) {
            addCriterion("stu_sex not between", value1, value2, "stuSex");
            return (Criteria) this;
        }

        public Criteria andStuAgeIsNull() {
            addCriterion("stu_age is null");
            return (Criteria) this;
        }

        public Criteria andStuAgeIsNotNull() {
            addCriterion("stu_age is not null");
            return (Criteria) this;
        }

        public Criteria andStuAgeEqualTo(Integer value) {
            addCriterion("stu_age =", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotEqualTo(Integer value) {
            addCriterion("stu_age <>", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeGreaterThan(Integer value) {
            addCriterion("stu_age >", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_age >=", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeLessThan(Integer value) {
            addCriterion("stu_age <", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeLessThanOrEqualTo(Integer value) {
            addCriterion("stu_age <=", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeIn(List<Integer> values) {
            addCriterion("stu_age in", values, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotIn(List<Integer> values) {
            addCriterion("stu_age not in", values, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeBetween(Integer value1, Integer value2) {
            addCriterion("stu_age between", value1, value2, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_age not between", value1, value2, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuDeptIsNull() {
            addCriterion("stu_dept is null");
            return (Criteria) this;
        }

        public Criteria andStuDeptIsNotNull() {
            addCriterion("stu_dept is not null");
            return (Criteria) this;
        }

        public Criteria andStuDeptEqualTo(String value) {
            addCriterion("stu_dept =", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotEqualTo(String value) {
            addCriterion("stu_dept <>", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptGreaterThan(String value) {
            addCriterion("stu_dept >", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptGreaterThanOrEqualTo(String value) {
            addCriterion("stu_dept >=", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptLessThan(String value) {
            addCriterion("stu_dept <", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptLessThanOrEqualTo(String value) {
            addCriterion("stu_dept <=", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptLike(String value) {
            addCriterion("stu_dept like", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotLike(String value) {
            addCriterion("stu_dept not like", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptIn(List<String> values) {
            addCriterion("stu_dept in", values, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotIn(List<String> values) {
            addCriterion("stu_dept not in", values, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptBetween(String value1, String value2) {
            addCriterion("stu_dept between", value1, value2, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotBetween(String value1, String value2) {
            addCriterion("stu_dept not between", value1, value2, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuClassIsNull() {
            addCriterion("stu_class is null");
            return (Criteria) this;
        }

        public Criteria andStuClassIsNotNull() {
            addCriterion("stu_class is not null");
            return (Criteria) this;
        }

        public Criteria andStuClassEqualTo(String value) {
            addCriterion("stu_class =", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassNotEqualTo(String value) {
            addCriterion("stu_class <>", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassGreaterThan(String value) {
            addCriterion("stu_class >", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassGreaterThanOrEqualTo(String value) {
            addCriterion("stu_class >=", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassLessThan(String value) {
            addCriterion("stu_class <", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassLessThanOrEqualTo(String value) {
            addCriterion("stu_class <=", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassLike(String value) {
            addCriterion("stu_class like", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassNotLike(String value) {
            addCriterion("stu_class not like", value, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassIn(List<String> values) {
            addCriterion("stu_class in", values, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassNotIn(List<String> values) {
            addCriterion("stu_class not in", values, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassBetween(String value1, String value2) {
            addCriterion("stu_class between", value1, value2, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuClassNotBetween(String value1, String value2) {
            addCriterion("stu_class not between", value1, value2, "stuClass");
            return (Criteria) this;
        }

        public Criteria andStuAddressIsNull() {
            addCriterion("stu_address is null");
            return (Criteria) this;
        }

        public Criteria andStuAddressIsNotNull() {
            addCriterion("stu_address is not null");
            return (Criteria) this;
        }

        public Criteria andStuAddressEqualTo(String value) {
            addCriterion("stu_address =", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressNotEqualTo(String value) {
            addCriterion("stu_address <>", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressGreaterThan(String value) {
            addCriterion("stu_address >", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressGreaterThanOrEqualTo(String value) {
            addCriterion("stu_address >=", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressLessThan(String value) {
            addCriterion("stu_address <", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressLessThanOrEqualTo(String value) {
            addCriterion("stu_address <=", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressLike(String value) {
            addCriterion("stu_address like", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressNotLike(String value) {
            addCriterion("stu_address not like", value, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressIn(List<String> values) {
            addCriterion("stu_address in", values, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressNotIn(List<String> values) {
            addCriterion("stu_address not in", values, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressBetween(String value1, String value2) {
            addCriterion("stu_address between", value1, value2, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuAddressNotBetween(String value1, String value2) {
            addCriterion("stu_address not between", value1, value2, "stuAddress");
            return (Criteria) this;
        }

        public Criteria andStuSchoolIsNull() {
            addCriterion("stu_school is null");
            return (Criteria) this;
        }

        public Criteria andStuSchoolIsNotNull() {
            addCriterion("stu_school is not null");
            return (Criteria) this;
        }

        public Criteria andStuSchoolEqualTo(String value) {
            addCriterion("stu_school =", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolNotEqualTo(String value) {
            addCriterion("stu_school <>", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolGreaterThan(String value) {
            addCriterion("stu_school >", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolGreaterThanOrEqualTo(String value) {
            addCriterion("stu_school >=", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolLessThan(String value) {
            addCriterion("stu_school <", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolLessThanOrEqualTo(String value) {
            addCriterion("stu_school <=", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolLike(String value) {
            addCriterion("stu_school like", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolNotLike(String value) {
            addCriterion("stu_school not like", value, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolIn(List<String> values) {
            addCriterion("stu_school in", values, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolNotIn(List<String> values) {
            addCriterion("stu_school not in", values, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolBetween(String value1, String value2) {
            addCriterion("stu_school between", value1, value2, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuSchoolNotBetween(String value1, String value2) {
            addCriterion("stu_school not between", value1, value2, "stuSchool");
            return (Criteria) this;
        }

        public Criteria andStuPhoneIsNull() {
            addCriterion("stu_phone is null");
            return (Criteria) this;
        }

        public Criteria andStuPhoneIsNotNull() {
            addCriterion("stu_phone is not null");
            return (Criteria) this;
        }

        public Criteria andStuPhoneEqualTo(String value) {
            addCriterion("stu_phone =", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneNotEqualTo(String value) {
            addCriterion("stu_phone <>", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneGreaterThan(String value) {
            addCriterion("stu_phone >", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("stu_phone >=", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneLessThan(String value) {
            addCriterion("stu_phone <", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneLessThanOrEqualTo(String value) {
            addCriterion("stu_phone <=", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneLike(String value) {
            addCriterion("stu_phone like", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneNotLike(String value) {
            addCriterion("stu_phone not like", value, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneIn(List<String> values) {
            addCriterion("stu_phone in", values, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneNotIn(List<String> values) {
            addCriterion("stu_phone not in", values, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneBetween(String value1, String value2) {
            addCriterion("stu_phone between", value1, value2, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPhoneNotBetween(String value1, String value2) {
            addCriterion("stu_phone not between", value1, value2, "stuPhone");
            return (Criteria) this;
        }

        public Criteria andStuPositionIsNull() {
            addCriterion("stu_position is null");
            return (Criteria) this;
        }

        public Criteria andStuPositionIsNotNull() {
            addCriterion("stu_position is not null");
            return (Criteria) this;
        }

        public Criteria andStuPositionEqualTo(String value) {
            addCriterion("stu_position =", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionNotEqualTo(String value) {
            addCriterion("stu_position <>", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionGreaterThan(String value) {
            addCriterion("stu_position >", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionGreaterThanOrEqualTo(String value) {
            addCriterion("stu_position >=", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionLessThan(String value) {
            addCriterion("stu_position <", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionLessThanOrEqualTo(String value) {
            addCriterion("stu_position <=", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionLike(String value) {
            addCriterion("stu_position like", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionNotLike(String value) {
            addCriterion("stu_position not like", value, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionIn(List<String> values) {
            addCriterion("stu_position in", values, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionNotIn(List<String> values) {
            addCriterion("stu_position not in", values, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionBetween(String value1, String value2) {
            addCriterion("stu_position between", value1, value2, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuPositionNotBetween(String value1, String value2) {
            addCriterion("stu_position not between", value1, value2, "stuPosition");
            return (Criteria) this;
        }

        public Criteria andStuGrpIsNull() {
            addCriterion("stu_grp is null");
            return (Criteria) this;
        }

        public Criteria andStuGrpIsNotNull() {
            addCriterion("stu_grp is not null");
            return (Criteria) this;
        }

        public Criteria andStuGrpEqualTo(Integer value) {
            addCriterion("stu_grp =", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpNotEqualTo(Integer value) {
            addCriterion("stu_grp <>", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpGreaterThan(Integer value) {
            addCriterion("stu_grp >", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_grp >=", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpLessThan(Integer value) {
            addCriterion("stu_grp <", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpLessThanOrEqualTo(Integer value) {
            addCriterion("stu_grp <=", value, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpIn(List<Integer> values) {
            addCriterion("stu_grp in", values, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpNotIn(List<Integer> values) {
            addCriterion("stu_grp not in", values, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpBetween(Integer value1, Integer value2) {
            addCriterion("stu_grp between", value1, value2, "stuGrp");
            return (Criteria) this;
        }

        public Criteria andStuGrpNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_grp not between", value1, value2, "stuGrp");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}