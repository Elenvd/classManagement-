package cn.desinf.classMana.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseExample() {
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

        public Criteria andCouIdIsNull() {
            addCriterion("cou_id is null");
            return (Criteria) this;
        }

        public Criteria andCouIdIsNotNull() {
            addCriterion("cou_id is not null");
            return (Criteria) this;
        }

        public Criteria andCouIdEqualTo(String value) {
            addCriterion("cou_id =", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotEqualTo(String value) {
            addCriterion("cou_id <>", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThan(String value) {
            addCriterion("cou_id >", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThanOrEqualTo(String value) {
            addCriterion("cou_id >=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThan(String value) {
            addCriterion("cou_id <", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThanOrEqualTo(String value) {
            addCriterion("cou_id <=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLike(String value) {
            addCriterion("cou_id like", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotLike(String value) {
            addCriterion("cou_id not like", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdIn(List<String> values) {
            addCriterion("cou_id in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotIn(List<String> values) {
            addCriterion("cou_id not in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdBetween(String value1, String value2) {
            addCriterion("cou_id between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotBetween(String value1, String value2) {
            addCriterion("cou_id not between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNull() {
            addCriterion("cou_name is null");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNotNull() {
            addCriterion("cou_name is not null");
            return (Criteria) this;
        }

        public Criteria andCouNameEqualTo(String value) {
            addCriterion("cou_name =", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotEqualTo(String value) {
            addCriterion("cou_name <>", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThan(String value) {
            addCriterion("cou_name >", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThanOrEqualTo(String value) {
            addCriterion("cou_name >=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThan(String value) {
            addCriterion("cou_name <", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThanOrEqualTo(String value) {
            addCriterion("cou_name <=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLike(String value) {
            addCriterion("cou_name like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotLike(String value) {
            addCriterion("cou_name not like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameIn(List<String> values) {
            addCriterion("cou_name in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotIn(List<String> values) {
            addCriterion("cou_name not in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameBetween(String value1, String value2) {
            addCriterion("cou_name between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotBetween(String value1, String value2) {
            addCriterion("cou_name not between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouScoreIsNull() {
            addCriterion("cou_score is null");
            return (Criteria) this;
        }

        public Criteria andCouScoreIsNotNull() {
            addCriterion("cou_score is not null");
            return (Criteria) this;
        }

        public Criteria andCouScoreEqualTo(Integer value) {
            addCriterion("cou_score =", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreNotEqualTo(Integer value) {
            addCriterion("cou_score <>", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreGreaterThan(Integer value) {
            addCriterion("cou_score >", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_score >=", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreLessThan(Integer value) {
            addCriterion("cou_score <", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreLessThanOrEqualTo(Integer value) {
            addCriterion("cou_score <=", value, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreIn(List<Integer> values) {
            addCriterion("cou_score in", values, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreNotIn(List<Integer> values) {
            addCriterion("cou_score not in", values, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreBetween(Integer value1, Integer value2) {
            addCriterion("cou_score between", value1, value2, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_score not between", value1, value2, "couScore");
            return (Criteria) this;
        }

        public Criteria andCouTimeIsNull() {
            addCriterion("cou_time is null");
            return (Criteria) this;
        }

        public Criteria andCouTimeIsNotNull() {
            addCriterion("cou_time is not null");
            return (Criteria) this;
        }

        public Criteria andCouTimeEqualTo(Date value) {
            addCriterion("cou_time =", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotEqualTo(Date value) {
            addCriterion("cou_time <>", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeGreaterThan(Date value) {
            addCriterion("cou_time >", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cou_time >=", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeLessThan(Date value) {
            addCriterion("cou_time <", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeLessThanOrEqualTo(Date value) {
            addCriterion("cou_time <=", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeIn(List<Date> values) {
            addCriterion("cou_time in", values, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotIn(List<Date> values) {
            addCriterion("cou_time not in", values, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeBetween(Date value1, Date value2) {
            addCriterion("cou_time between", value1, value2, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotBetween(Date value1, Date value2) {
            addCriterion("cou_time not between", value1, value2, "couTime");
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