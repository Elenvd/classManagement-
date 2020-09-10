package cn.desinf.classMana.bean;

import java.util.ArrayList;
import java.util.List;

public class ScoreExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ScoreExample() {
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

        public Criteria andScoScoIsNull() {
            addCriterion("sco_sco is null");
            return (Criteria) this;
        }

        public Criteria andScoScoIsNotNull() {
            addCriterion("sco_sco is not null");
            return (Criteria) this;
        }

        public Criteria andScoScoEqualTo(Integer value) {
            addCriterion("sco_sco =", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoNotEqualTo(Integer value) {
            addCriterion("sco_sco <>", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoGreaterThan(Integer value) {
            addCriterion("sco_sco >", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoGreaterThanOrEqualTo(Integer value) {
            addCriterion("sco_sco >=", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoLessThan(Integer value) {
            addCriterion("sco_sco <", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoLessThanOrEqualTo(Integer value) {
            addCriterion("sco_sco <=", value, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoIn(List<Integer> values) {
            addCriterion("sco_sco in", values, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoNotIn(List<Integer> values) {
            addCriterion("sco_sco not in", values, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoBetween(Integer value1, Integer value2) {
            addCriterion("sco_sco between", value1, value2, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoScoNotBetween(Integer value1, Integer value2) {
            addCriterion("sco_sco not between", value1, value2, "scoSco");
            return (Criteria) this;
        }

        public Criteria andScoAttIsNull() {
            addCriterion("sco_att is null");
            return (Criteria) this;
        }

        public Criteria andScoAttIsNotNull() {
            addCriterion("sco_att is not null");
            return (Criteria) this;
        }

        public Criteria andScoAttEqualTo(Integer value) {
            addCriterion("sco_att =", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttNotEqualTo(Integer value) {
            addCriterion("sco_att <>", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttGreaterThan(Integer value) {
            addCriterion("sco_att >", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttGreaterThanOrEqualTo(Integer value) {
            addCriterion("sco_att >=", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttLessThan(Integer value) {
            addCriterion("sco_att <", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttLessThanOrEqualTo(Integer value) {
            addCriterion("sco_att <=", value, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttIn(List<Integer> values) {
            addCriterion("sco_att in", values, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttNotIn(List<Integer> values) {
            addCriterion("sco_att not in", values, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttBetween(Integer value1, Integer value2) {
            addCriterion("sco_att between", value1, value2, "scoAtt");
            return (Criteria) this;
        }

        public Criteria andScoAttNotBetween(Integer value1, Integer value2) {
            addCriterion("sco_att not between", value1, value2, "scoAtt");
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