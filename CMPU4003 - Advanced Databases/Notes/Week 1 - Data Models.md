
---
Week: 1  
Module: [CMPU4003 - Advanced Databases]  
Topic: [Data Models]  
Tags: #lecture #week1 #AdvancedDatabases  
Linked Exam Qs: [[Exams/2022 Exam QX]] (add later)  
---

## 📘 Summary

### 1. Overview of Data Model Evolution
- **Traditional Focus (Relational):** Prioritised data integrity and consistency.  
- **Modern Focus (NoSQL):** Driven by web apps, big data, and analytics — prioritises speed and flexibility.  
- **Choice Factors:** Nature of data, access patterns, scalability, CAP/PACELC trade-offs, and system integration.

### 2. Relational Model (RDBMS)
- **Structure:** Data stored in relations (tables) with rows (entities) and columns (attributes).  
- **Characteristics:** Schemata, constraints, SQL (relational algebra), ACID transactions.  
- **Strengths:** Mature, standardised SQL, strong data integrity, enterprise-ready, expressive queries.  
- **Weaknesses:** Schema rigidity, object-relational mismatch, vertical scaling limits, costly joins, poor handling of unstructured data.  
- **Choice Guidelines:** Best for stable schemas, predictable entities, high integrity needs, ACID-critical systems, and complex querying.

### 3. Non-Relational (NoSQL) Models

**A. Document Model**
- **Structure:** Key-value with hierarchical documents (JSON, BSON, XML).  
- **Strengths:** Flexible schema, natural object mapping, efficient whole-object access, horizontal scalability, API-friendly.  
- **Weaknesses:** Weak support for joins, costly updates, schema enforcement left to application, limited aggregations.

**B. Column-Oriented Family (e.g., Cassandra)**
- **Structure:** Multi-dimensional hash map, wide column stores, uses CQL.  
- **Strengths:** Efficient storage, distributed/replicated, flexible schemas.  
- **Weaknesses:** Limited querying, no joins, poor aggregation, costly non-point queries.

**C. Key-Value Stores (e.g., Redis)**
- **Structure:** Distributed hash map with unique key-value pairs.  
- **Strengths:** Ultra-fast inserts/point lookups, easy distribution/replication.  
- **Weaknesses:** No querying, joining, or aggregations.

### 4. Polyglot Persistence
- **Definition:** Use of multiple database types within one system.  
- **Rationale:** Leverages each model’s strengths (e.g., SQL for transactions, Key-Value for caching, Document for content).

---

## 🔑 Key Concepts & Definitions

- **Relational Data Model:** Database as a collection of relations (tables).  
- **Schemata (RDM):** Named, non-empty, typed, and unordered sets of attributes.  
- **SQL:** Declarative query language specifying results without execution steps.  
- **ACID:** Atomicity, Consistency, Isolation, Durability — ensures transaction reliability.  
- **Document Model:** Key-value structure with hierarchical documents (JSON/XML).  
- **Schema-on-Read:** Structure enforced by the application on retrieval (document stores).  
- **BSON:** Binary JSON, richer data types, compact and fast.  
- **Column-Oriented Family:** Wide-column model with multi-key hierarchy (Cassandra).  
- **CQL:** Cassandra Query Language — SQL-like but with limited functionality.  
- **Key-Value Data Model:** Distributed hash map with unique key lookups.  
- **Polyglot Persistence:** Strategy of combining multiple database models in one system.

---


## 🔗 Related Diagrams
- [[Assets/Week1 - Data Models Diagram.excalidraw]]

---

## 🔄 Links
- Next Lecture: [[Week 2 - CAP Theorem & Distributed Systems]]
