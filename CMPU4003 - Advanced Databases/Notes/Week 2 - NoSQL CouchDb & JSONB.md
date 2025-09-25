

Week: 2  
Module: CMPU 4003 - Advanced Databases  
Topic: NoSQL CouchDB & JSONB  
Tags: #lecture #week2 #CMPU4003

---
```markdown
## 📘 Summary

### I. JSONB in PostgreSQL: Hybrid Relational and Document Storage (L2a)

#### A. JSON vs. JSONB Comparison

PostgreSQL supports two primary JSON data types, differing mainly in storage format and functionality.

|Feature|JSON (Postgres 9.2)|JSONB (Postgres 9.4)|
|:--|:--|:--|
|**Storage Format**|Textual|**Binary** representation (efficient)|
|**Order/Duplicates**|Preserves whitespace and key order; duplicates remain|Canonical order; removes duplicates (last value wins)|
|**Indexing/Operators**|Basic JSON operations; not optimized|Supports indexing (e.g., GIN) and rich operators (**faster**)|

#### B. JSONB Advantages and Usage

- Flexible for **semi-structured data** (e.g., preferences, events, attributes).
    
- Start with JSONB → promote to relational columns once stable.
    
- Use relational columns for stable, frequently queried fields.
    
- Index fields used for filtering or sorting.
    

#### C. Indexing Strategies

- **GIN Index** → for containment (`@>`) and existence (`?`) checks.
    
- **Generated Columns + B-Tree** → for “hot fields” (frequently queried/sorted).
    
- **Partial Indexes** → reduce GIN index size by applying conditions.
    

#### D. Data Quality and Performance

- Cast JSON numbers when retrieving (e.g., `::int`).
    
- JSON `null` ≠ SQL `NULL`; use `?` operator for key presence.
    
- JSONB keeps only the last value when duplicate keys exist.
    

---

### II. CouchDB: Document-Oriented NoSQL Database (L2b)

#### A. Core Characteristics and Architecture

- **Data Format:** JSON.
    
- **Language:** Erlang.
    
- **Interface:** RESTful API, JavaScript query language.
    
- **Stateless:** Every request contains all required information.
    

#### B. Data Management and Documents

- Primary unit = **document** (fields + attachments + metadata).
    
- **Document ID:** Typically a UUID.
    
- **Revisions (`_rev`):** Required for updates; new revision created on change.
    
- **Concurrency:** Optimistic model; conflicting edits cause error.
    

#### C. Querying Mechanisms

- **Design Documents** (`_design`): define indexes, validation, formatting.
    
- **Query Servers:** Execute design document logic (default = JS).
    
- **Mango Query Server:** MongoDB-inspired query interface.
    
- **Views:** Main tool for querying and indexing documents.
    

#### D. MapReduce and Consistency

- **Map Function:** Runs once per document; uses `emit(key, value)`.
    
- **Reduce Function:** Aggregates emitted rows (e.g., `_sum`).
    
- **Storage:** B-tree for efficient lookup and streaming.
    
- **Consistency:** ACID compliance for single-document updates.
    

---

## 🔑 Key Concepts & Definitions

- **JSONB** → Binary-encoded JSON in PostgreSQL with compression, indexing, and rich operators.
    
- **Hot Field** → Field queried/sorted frequently; often promoted to a relational column.
    
- **CouchDB Document** → Unit of data (fields, attachments, metadata).
    
- **UUID** → Universally unique identifier, used for CouchDB document IDs.
    
- **Revision (`_rev`)** → Metadata updated with each CouchDB document modification for concurrency control.
    
- **Design Document** → Special CouchDB document (`_design`) containing views, validation, and application logic.
    
- **View (CouchDB)** → Query mechanism based on MapReduce, defined inside design documents.
    
- **Optimistic Locking (CouchDB)** → Concurrency control via `_rev` field; prevents overwriting unseen changes.
    
- **GIN Index (Postgres)** → Efficient JSONB indexing for containment/existence queries.
    
- **Generated Column** → PostgreSQL column computed from JSONB keys, indexed with B-Tree.
    
- **Partial Index** → Index applied conditionally to reduce size (e.g., only documents with a specific key).
    
- **Map Function (CouchDB)** → JavaScript function applied per document, emitting key-value pairs.
    
- **Reduce Function (CouchDB)** → Aggregates key-value pairs, often using built-ins like `_sum`.
    

'''