
### Converting Business Problems into Analytics Solutions

Converting a business problem into an analytics solution requires answering four key questions:

1. What is the business problem?
2. What are the goals the business aims to achieve?
3. How does the business currently operate?
4. In what ways can a predictive analytics model help address the business problem?

For instance, potential analytics solutions for the case study of **Motor Insurance Fraud** include Claim prediction, Member prediction, Application prediction, or Payment prediction.

### Assessing Feasibility

Evaluating a proposed analytics solution involves considering two key areas:

1. Is the data required available or capable of being made available?
2. What is the business's capacity to utilize the insights the solution will provide?.

For a **Claim Prediction** solution in the motor insurance fraud scenario, data requirements include a large collection of historical claims marked as 'fraudulent' and 'non-fraudulent', along with claim, policy, and claimant details. Capacity requires implementing a mechanism to inform claims investigators so that some claims can be prioritised without delaying the investigation process.

### Designing the Analytics Base Table (ABT)

The **analytics base table (ABT)** is the fundamental structure used to capture historical datasets.

#### Key Definitions and Concepts:

- **Prediction Subject:** Defines the basic level at which predictions are made. Each row in the ABT represents one instance of the prediction subject (the principle of "one-row-per-subject").
- **ABT Structure:** Each row is composed of a set of **descriptive features** and a **target feature**.
- **Domain Concepts:** A good approach to defining features is to identify key domain concepts and then base features on these concepts.
- **General Domain Concepts (Examples):** Prediction Subject Details, Demographics, Usage, Changes in Usage, Special Usage, Lifecycle Phase, and Network Links.
- **Example Domain Concepts (Motor Insurance Fraud):** Policy Details, Claim Details, Claimant History, Claimant Links, Claimant Demographics, and Fraud Outcome (the target concept).

### Designing & Implementing Features

When designing features, three key data considerations are particularly important: **Data availability, Timing, and Longevity**.

#### Different Types of Data:

- Numeric
- Binary
- Ordinal
- Interval
- Categorical
- Textual

#### Different Types of Features:

- **Raw Features:** Features that come directly from existing data sources.
- **Derived Features:** Features constructed by manipulating values from existing data sources.
    - Common derived feature types include **Aggregates, Flags, Ratios, and Mappings**.

#### Handling Time in Propensity Modeling:

- For propensity modeling, which inherently has a temporal element, there are two key periods:
    - **Observation Period:** The time prior to the prediction subject event (e.g., the claim event) over which the descriptive features capturing the claimant’s behavior are calculated.
    - **Outcome Period:** The time immediately after the prediction subject event during which it will emerge whether the target outcome is true (e.g., whether the claim is fraudulent or genuine).
- These periods can be measured over the same time for all prediction subjects or defined relative to the specific date of an event (as illustrated in the motor insurance claim prediction scenario).

#### Legal Issues:

Data analytics practitioners are often restricted by legislation when designing ABTs, particularly concerning:

1. **Anti-discrimination legislation**.
2. **Data protection legislation**.
    - Common tenets of data protection that affect ABT design include the **collection limitation principle**, the **purpose specification principle**, and the **use limitation principle**.

#### Implementing Features:

Implementing derived features requires combining data from multiple sources. Frequently used data manipulation operations include:

- Joining data sources
- Filtering rows in a data source
- Filtering fields in a data source
- Deriving new features by combining or transforming existing features
- Aggregating data sources

---

