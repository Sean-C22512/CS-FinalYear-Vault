# Predictive Data Analytics Flashcards

## Core Concepts

Q: What is Predictive Data Analytics? #flashcard 
A: The business and data processes and computational models that enable a business to make data-driven decisions.

Q: What are Machine Learning (Supervised) techniques? #flashcard 
A: Techniques that automatically learn a model of the relationship between a set of descriptive features and a target feature from a set of historical examples.

Q: What is a Training Dataset? #flashcard 
A: The historical data used by ML algorithms to induce a prediction model.

Q: What is a Prediction Model? #flashcard 
A: A model used to make predictions for new, unseen query instances (e.g., an if-then-else rule).

Q: What is a Consistent Prediction Model? #flashcard 
A: A model that perfectly aligns with the given historical data.

## Problem Characteristics

Q: Why is machine learning described as an Ill-posed Problem? #flashcard 
A: Because a training dataset is only a sample of the true underlying data distribution, meaning more than one candidate model can be found that is consistent with the training data.

Q: What does Consistency mean in machine learning? #flashcard 
A: Being aligned with the dataset, which is akin to memorising the dataset.

## Bias and Model Selection

Q: What is Inductive Bias? #flashcard 
A: The set of assumptions that specify the model selection criteria of a machine learning algorithm, guiding it to learn relationships beyond the dataset itself.

Q: What is Restriction Bias? #flashcard 
A: A type of inductive bias that limits the set of possible models the algorithm can consider.

Q: What is Preference Bias? #flashcard 
A: A type of inductive bias that establishes a preference for certain models over others within the considered set (e.g., simpler models).

## Common Problems

Q: What is Underfitting? #flashcard 
A: Occurs when the model is too simple to capture the underlying relationships in the data and fails to learn from the training data sufficiently.

Q: What is Overfitting? #flashcard 
A: Occurs when the model learns the training data too well, including its noise and idiosyncrasies, leading to poor generalisation to new, unseen data.

Q: What does an overfit model do instead of learning general patterns? #flashcard 
A: An overfit model "memorises" the dataset rather than learning general patterns.

## Process Framework

Q: What is CRISP-DM? #flashcard 
A: Cross-Industry Standard Process for Data Mining - a process that outlines six key phases in a predictive data analytics project.

Q: What are the six phases of CRISP-DM? #flashcard 
A: Business Understanding, Data Understanding, Data Preparation, Modeling, Evaluation, and Deployment.