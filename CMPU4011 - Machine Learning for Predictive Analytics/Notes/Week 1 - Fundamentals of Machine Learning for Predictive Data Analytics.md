
---
Week: 1
Module: [CMPU4011 - Machine Learning for Predictive Analytics]
Topic: [Fundamentals of Machine Learning]
Tags: #lecture #weekX #CMPU4011 
Linked Exam Qs: [[Exams/2022 Exam QX]] (add later)
https://drive.google.com/drive/u/0/folders/1D1NtC6hKJ6_-zsR1isQOXmIP0ALOFg1M
---

## 📘 Summary

## What is Predictive Data Analytics?

**Predictive Data Analytics** encompasses the business and data processes and computational models that enable a business to make data-driven decisions.

- **Example Applications:** Price Prediction, Fraud Detection, Dosage Prediction, Risk Assessment, Propensity modelling, Diagnosis, Document Classification.
- It involves moving from data to insights to decisions.

## What is Machine Learning?

**Machine Learning (Supervised)** techniques automatically learn a model of the relationship between a set of descriptive features and a target feature from a set of historical examples.

- ML uses a **training dataset** to induce a **prediction model**.
- This model is then used to make predictions for new, unseen query instances.
- **Prediction Model Example:** An `if-then-else` rule, such as `if LOAN-SALARY RATIO > 3 then OUTCOME='default' else OUTCOME='repay' end if`.
- A **consistent prediction model** is one that perfectly aligns with the given historical data.
- Feature design and feature selection are crucial aspects, as models may use derived features (e.g., a ratio) or only a subset of available features.
- The real value of machine learning is evident in building prediction models from large datasets with multiple features.

## How Does Machine Learning Work?

Machine learning algorithms operate by searching through a set of possible prediction models to find the model that best captures the relationship between descriptive and target features.

- **Search Criteria:** An initial criterion is to find models consistent with the training data.

### The Challenge: ML as an Ill-posed Problem [CMPU 4011 23-24](obsidian://adv-uri?vault=CS-FinalYear-Vault&filepath=CMPU4011%20-%20Machine%20Learning%20for%20Predictive%20Analytics%2FExams%2FCMPU%204011%2023-24.pdf)<span style="color:rgb(0, 0, 0)">Q1(a)</span>

Machine learning is often described as an **ill-posed problem because:**.

1. We want models that **generalize** beyond the training data.
    
2. This requires choosing an **inductive bias** (assumptions about the hypothesis space).
    
3. Too simple a model leads to **underfitting** (poor training & test performance).
    
4. Too complex a model leads to **overfitting** (great training performance but poor generalization).
    

Thus, the central challenge of ML is to strike the right balance between **simplicity and complexity** (between underfitting and overfitting) is the hardest part of machine learning.

### Inductive Bias [CMPU 4011 23-24](obsidian://adv-uri?vault=CS-FinalYear-Vault&filepath=CMPU4011%20-%20Machine%20Learning%20for%20Predictive%20Analytics%2FExams%2FCMPU%204011%2023-24.pdf)Q1(B)

To overcome the ill-posed nature of ML, **inductive bias** is necessary.
	
- **Inductive bias** is defined as the set of assumptions that define the model selection criteria of an ML algorithm.
- It guides the algorithm to learn relationships _beyond_ the dataset itself.
- **Two types of inductive bias:**
    - **Restriction bias:** Limits the set of possible models the algorithm can consider.
    - **Preference bias:** Establishes a preference for certain models over others within the considered set (e.g., simpler models).
- **Summary of ML Working Principles:** ML algorithms guide their search for models using two sources of information:
    1. The **training data**.
    2. The **inductive bias** of the algorithm.

## What Can Go Wrong With ML?

Choosing the **wrong inductive bias** can lead to significant problems. There is "no free lunch". [CMPU 4011 23-24](obsidian://adv-uri?vault=CS-FinalYear-Vault&filepath=CMPU4011%20-%20Machine%20Learning%20for%20Predictive%20Analytics%2FExams%2FCMPU%204011%2023-24.pdf)<span style="color:rgb(0, 0, 0)">1(c)</span>

- **Underfitting:** Occurs when the model is too simple to capture the underlying relationships in the data. It fails to learn from the training data sufficiently.
- **Overfitting:** Occurs when the model learns the training data too well, including its noise and idiosyncrasies, leading to poor generalisation to new, unseen data. An overfit model "memorises" the dataset rather than learning general patterns.
- **Common Pitfall/Misconception:** The **hardest part of machine learning** is striking the right balance between model complexity and simplicity – effectively, finding the sweet spot between **underfitting and overfitting**.

**Families of Machine Learning Algorithms (Course Overview):**

1. Information based learning
2. Similarity based learning
3. Probability based learning
4. Error based learning
5. Deep learning

## The Predictive Data Analytics Project Lifecycle: CRISP-DM

The **CRISP-DM (Cross-Industry Standard Process for Data Mining)** process outlines six key phases in a predictive data analytics project:

1. **Business Understanding**
2. **Data Understanding**
3. **Data Preparation**
4. **Modeling**
5. **Evaluation**
6. **Deployment**


## 🔑 Key Concepts & Definitions

## Core Concepts

**Predictive Data Analytics** → The business and data processes and computational models that enable a business to make data-driven decisions.

**Machine Learning (Supervised)** → Techniques that automatically learn a model of the relationship between a set of descriptive features and a target feature from a set of historical examples.

**Training Dataset** → The historical data used by ML algorithms to induce a prediction model.

**Prediction Model** → A model used to make predictions for new, unseen query instances (e.g., an if-then-else rule).

**Consistent Prediction Model** → A model that perfectly aligns with the given historical data.

## Problem Characteristics

**Ill-posed Problem** → A characteristic of machine learning where a training dataset is only a sample of the true underlying data distribution, meaning more than one candidate model can be found that is consistent with the training data.

**Consistency** → Being aligned with the dataset, which is akin to memorising the dataset.

## Bias and Model Selection

**Inductive Bias** → The set of assumptions that specify the model selection criteria of a machine learning algorithm, guiding it to learn relationships beyond the dataset itself.

**Restriction Bias** → A type of inductive bias that limits the set of possible models the algorithm can consider.

**Preference Bias** → A type of inductive bias that establishes a preference for certain models over others within the considered set (e.g., simpler models).

## Common Problems

**Underfitting** → Occurs when the model is too simple to capture the underlying relationships in the data and fails to learn from the training data sufficiently.

**Overfitting** → Occurs when the model learns the training data too well, including its noise and idiosyncrasies, leading to poor generalisation to new, unseen data. An overfit model "memorises" the dataset rather than learning general patterns.

## Process Framework

**CRISP-DM (Cross-Industry Standard Process for Data Mining)** → A process that outlines six key phases in a predictive data analytics project: Business Understanding, Data Understanding, Data Preparation, Modeling, Evaluation, and Deployment.

## 🎯 Possible Exam-Style Questions

- **Explain why machine learning is often described as an ill-posed problem and give an example.** (This question was asked in the 2023/24 exam)
- **What is the inductive bias of a machine learning algorithm? Give an example.** (This question was asked in the 2023/24 exam)
- **Explain on an example what can go wrong when a machine learning classifier uses the wrong inductive bias.** (This question was asked in the 2023/24 exam)
- **Explain what overfitting is in machine learning. Provide an example to illustrate.** (This question was asked in the 2024/25 exam, similar to the 2023/24 question on wrong inductive bias)
- **What is the difference between restriction bias and preference bias? Give an example of each.** (This question was asked in the 2024/25 exam)
- **Define Predictive Data Analytics and provide examples of its applications.**
- **Explain the concept of a consistent prediction model and its implications for generalisation.**
- **Briefly outline the key phases of the CRISP-DM process.**



## 🔗 Related Diagrams
- [[Assets/WeekX - Topic Diagram.excalidraw]]

## 🔄 Links
- Next Lecture: [[Week X+1 - Topic]]
