## Week: 2  
Module: CMPU 4011 - Predictive Data Analytics  
Topic: Data to Insights to Decisions  
Tags: #lecture #week2 #cmpu4011  
Linked Exam Qs: [[Exams/2022 Exam QX]] (add later)

## 📘 Summary

This lecture introduces the **early phases of the CRISP-DM process**—Business Understanding, Data Understanding, and parts of Data Preparation. It focuses on how to translate business problems into analytics solutions, assess feasibility, and design the **Analytics Base Table (ABT)** for predictive modeling. Key considerations include feature design, handling time in modeling, and compliance with legal frameworks such as data protection.

---

## 🔑 Key Concepts & Definitions

- **CRISP-DM Phases** → Business Understanding, Data Understanding, Data Preparation.
    
- **Business Problem Translation** → Identifying business goals, operations, and how predictive analytics can provide value.
    
- **Assessing Feasibility** → Two checks: (1) Is the data available? (2) Can the business use the insights?
    
- **Analytics Base Table (ABT)** → Structured dataset with one-row-per-prediction-subject, containing descriptive features + target feature.
    
- **Prediction Subject** → The unit of analysis; each row represents one subject (e.g., a claim in insurance fraud prediction).
    
- **Features** → Variables used in modeling.
    
    - **Raw Features** → Directly from source data.
        
    - **Derived Features** → Created via transformations (aggregates, ratios, flags, mappings).
        
- **Data Types** → Numeric, Binary, Ordinal, Interval, Categorical, Textual.
    
- **Temporal Modeling** →
    
    - **Observation Period** → Time before event; used to capture descriptive behavior.
        
    - **Outcome Period** → Time after event; reveals if target outcome occurs.
        
- **Legal Constraints** → Anti-discrimination and data protection laws influence feature selection and ABT design.
    
    - **Collection Limitation Principle** → Only collect necessary data.
        
    - **Purpose Specification Principle** → Use data only for stated purposes.
        
    - **Use Limitation Principle** → Restrict further use of data outside intended scope.
        

---

## 🎯 Possible Exam-Style Questions

- Explain the process of **Assessing Feasibility** for a predictive analytics solution. What two key questions must be addressed?
    
- Describe the structure and purpose of the **Analytics Base Table (ABT)**. Why is the prediction subject and the "one-row-per-subject" rule important?
    
- Differentiate between **raw features** and **derived features**. Give four examples of derived feature types.
    
- Define the **observation period** and **outcome period** in propensity modeling. Illustrate with an insurance fraud claim scenario.
    
- Discuss how **Data Protection Legislation** influences ABT design, referencing three key principles.
    

---

## 🔗 Related Diagrams

- [[Assets/Week2 - Data to Insights to Decisions Diagram.excalidraw]]
    

---

## 🔄 Links

- Next Lecture: [[Week 3 - Predictive Modeling Techniques]]
    
---
