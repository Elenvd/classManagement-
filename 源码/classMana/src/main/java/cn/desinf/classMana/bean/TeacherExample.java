package cn.desinf.classMana.bean;

import java.util.ArrayList;
import java.util.List;

public class TeacherExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TeacherExample() {
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

        public Criteria andTeaIdIsNull() {
            addCriterion("tea_id is null");
            return (Criteria) this;
        }

        public Criteria andTeaIdIsNotNull() {
            addCriterion("tea_id is not null");
            return (Criteria) this;
        }

        public Criteria andTeaIdEqualTo(String value) {
            addCriterion("tea_id =", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdNotEqualTo(String value) {
            addCriterion("tea_id <>", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdGreaterThan(String value) {
            addCriterion("tea_id >", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdGreaterThanOrEqualTo(String value) {
            addCriterion("tea_id >=", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdLessThan(String value) {
            addCriterion("tea_id <", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdLessThanOrEqualTo(String value) {
            addCriterion("tea_id <=", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdLike(String value) {
            addCriterion("tea_id like", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdNotLike(String value) {
            addCriterion("tea_id not like", value, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdIn(List<String> values) {
            addCriterion("tea_id in", values, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdNotIn(List<String> values) {
            addCriterion("tea_id not in", values, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdBetween(String value1, String value2) {
            addCriterion("tea_id between", value1, value2, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaIdNotBetween(String value1, String value2) {
            addCriterion("tea_id not between", value1, value2, "teaId");
            return (Criteria) this;
        }

        public Criteria andTeaNameIsNull() {
            addCriterion("tea_name is null");
            return (Criteria) this;
        }

        public Criteria andTeaNameIsNotNull() {
            addCriterion("tea_name is not null");
            return (Criteria) this;
        }

        public Criteria andTeaNameEqualTo(String value) {
            addCriterion("tea_name =", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotEqualTo(String value) {
            addCriterion("tea_name <>", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameGreaterThan(String value) {
            addCriterion("tea_name >", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameGreaterThanOrEqualTo(String value) {
            addCriterion("tea_name >=", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLessThan(String value) {
            addCriterion("tea_name <", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLessThanOrEqualTo(String value) {
            addCriterion("tea_name <=", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLike(String value) {
            addCriterion("tea_name like", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotLike(String value) {
            addCriterion("tea_name not like", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameIn(List<String> values) {
            addCriterion("tea_name in", values, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotIn(List<String> values) {
            addCriterion("tea_name not in", values, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameBetween(String value1, String value2) {
            addCriterion("tea_name between", value1, value2, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotBetween(String value1, String value2) {
            addCriterion("tea_name not between", value1, value2, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaSexIsNull() {
            addCriterion("tea_sex is null");
            return (Criteria) this;
        }

        public Criteria andTeaSexIsNotNull() {
            addCriterion("tea_sex is not null");
            return (Criteria) this;
        }

        public Criteria andTeaSexEqualTo(String value) {
            addCriterion("tea_sex =", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexNotEqualTo(String value) {
            addCriterion("tea_sex <>", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexGreaterThan(String value) {
            addCriterion("tea_sex >", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexGreaterThanOrEqualTo(String value) {
            addCriterion("tea_sex >=", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexLessThan(String value) {
            addCriterion("tea_sex <", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexLessThanOrEqualTo(String value) {
            addCriterion("tea_sex <=", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexLike(String value) {
            addCriterion("tea_sex like", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexNotLike(String value) {
            addCriterion("tea_sex not like", value, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexIn(List<String> values) {
            addCriterion("tea_sex in", values, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexNotIn(List<String> values) {
            addCriterion("tea_sex not in", values, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexBetween(String value1, String value2) {
            addCriterion("tea_sex between", value1, value2, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaSexNotBetween(String value1, String value2) {
            addCriterion("tea_sex not between", value1, value2, "teaSex");
            return (Criteria) this;
        }

        public Criteria andTeaAgeIsNull() {
            addCriterion("tea_age is null");
            return (Criteria) this;
        }

        public Criteria andTeaAgeIsNotNull() {
            addCriterion("tea_age is not null");
            return (Criteria) this;
        }

        public Criteria andTeaAgeEqualTo(Integer value) {
            addCriterion("tea_age =", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeNotEqualTo(Integer value) {
            addCriterion("tea_age <>", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeGreaterThan(Integer value) {
            addCriterion("tea_age >", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("tea_age >=", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeLessThan(Integer value) {
            addCriterion("tea_age <", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeLessThanOrEqualTo(Integer value) {
            addCriterion("tea_age <=", value, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeIn(List<Integer> values) {
            addCriterion("tea_age in", values, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeNotIn(List<Integer> values) {
            addCriterion("tea_age not in", values, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeBetween(Integer value1, Integer value2) {
            addCriterion("tea_age between", value1, value2, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("tea_age not between", value1, value2, "teaAge");
            return (Criteria) this;
        }

        public Criteria andTeaDeptIsNull() {
            addCriterion("tea_dept is null");
            return (Criteria) this;
        }

        public Criteria andTeaDeptIsNotNull() {
            addCriterion("tea_dept is not null");
            return (Criteria) this;
        }

        public Criteria andTeaDeptEqualTo(String value) {
            addCriterion("tea_dept =", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptNotEqualTo(String value) {
            addCriterion("tea_dept <>", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptGreaterThan(String value) {
            addCriterion("tea_dept >", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptGreaterThanOrEqualTo(String value) {
            addCriterion("tea_dept >=", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptLessThan(String value) {
            addCriterion("tea_dept <", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptLessThanOrEqualTo(String value) {
            addCriterion("tea_dept <=", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptLike(String value) {
            addCriterion("tea_dept like", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptNotLike(String value) {
            addCriterion("tea_dept not like", value, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptIn(List<String> values) {
            addCriterion("tea_dept in", values, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptNotIn(List<String> values) {
            addCriterion("tea_dept not in", values, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptBetween(String value1, String value2) {
            addCriterion("tea_dept between", value1, value2, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaDeptNotBetween(String value1, String value2) {
            addCriterion("tea_dept not between", value1, value2, "teaDept");
            return (Criteria) this;
        }

        public Criteria andTeaClassIsNull() {
            addCriterion("tea_class is null");
            return (Criteria) this;
        }

        public Criteria andTeaClassIsNotNull() {
            addCriterion("tea_class is not null");
            return (Criteria) this;
        }

        public Criteria andTeaClassEqualTo(String value) {
            addCriterion("tea_class =", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassNotEqualTo(String value) {
            addCriterion("tea_class <>", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassGreaterThan(String value) {
            addCriterion("tea_class >", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassGreaterThanOrEqualTo(String value) {
            addCriterion("tea_class >=", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassLessThan(String value) {
            addCriterion("tea_class <", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassLessThanOrEqualTo(String value) {
            addCriterion("tea_class <=", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassLike(String value) {
            addCriterion("tea_class like", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassNotLike(String value) {
            addCriterion("tea_class not like", value, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassIn(List<String> values) {
            addCriterion("tea_class in", values, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassNotIn(List<String> values) {
            addCriterion("tea_class not in", values, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassBetween(String value1, String value2) {
            addCriterion("tea_class between", value1, value2, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaClassNotBetween(String value1, String value2) {
            addCriterion("tea_class not between", value1, value2, "teaClass");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneIsNull() {
            addCriterion("tea_phone is null");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneIsNotNull() {
            addCriterion("tea_phone is not null");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneEqualTo(String value) {
            addCriterion("tea_phone =", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneNotEqualTo(String value) {
            addCriterion("tea_phone <>", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneGreaterThan(String value) {
            addCriterion("tea_phone >", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("tea_phone >=", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneLessThan(String value) {
            addCriterion("tea_phone <", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneLessThanOrEqualTo(String value) {
            addCriterion("tea_phone <=", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneLike(String value) {
            addCriterion("tea_phone like", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneNotLike(String value) {
            addCriterion("tea_phone not like", value, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneIn(List<String> values) {
            addCriterion("tea_phone in", values, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneNotIn(List<String> values) {
            addCriterion("tea_phone not in", values, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneBetween(String value1, String value2) {
            addCriterion("tea_phone between", value1, value2, "teaPhone");
            return (Criteria) this;
        }

        public Criteria andTeaPhoneNotBetween(String value1, String value2) {
            addCriterion("tea_phone not between", value1, value2, "teaPhone");
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