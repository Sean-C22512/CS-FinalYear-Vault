
---

## Week: 1 Module: CMPU 4007 - Advanced Security 1 Topic: Introduction to Advanced Security Tags: #lecture #week1 #CMPU4007 Linked Exam Qs: [[Exams/2022 Exam Q1a]] [[Exams/2022 Exam Q1b]] [[Exams/2022 Exam Q2b]] [[Exams/2022 Exam Q4a]] [[Exams/2023 Exam Q1a]] [[Exams/2023 Exam Q2b]] [[Exams/2023 Exam Q4a]] [[Exams/2024 Exam Q1b]] [[Exams/2024 Exam Q2a]] [[Exams/2024 Exam Q3c]] [[Exams/2025 Exam Q2a]] [[Exams/2025 Exam Q3c]] [[Exams/2025 Exam Q4b]]

## 📘 Summary

### Module Overview

- **Assessment Methods**
    - The module assessment is comprised of a **written examination (60%)** and **continuous assessment (40%)**.
    - Continuous assessment includes two theory tests (Week 6 and Week 12, each 10%) and two assignments (Assignment 1: Cryptographic Tools in Week 5, 10%; Assignment 2: Algorithms Implementations in Week 11, 10%).
    - Attendance to lectures and labs is necessary, and marks may be deducted for late assessment submissions.
- **Module Contents**
    - Topics covered include: Introduction to Advanced Security, Number theory (Discrete logarithms, Elliptic Curves), Steganography, Symmetric Encryption (Block Ciphers, AES, Confidentiality), Asymmetric Encryption (Public-Key Cryptography, RSA), Mutual Trust (Key Management, Authentication Protocols), and Cryptographic Hash Functions (Message Authentication, Hash/MAC Algorithms, Digital Signatures).
- **Textbook and References**
    - The primary textbook is "Cryptography and Network Security: Principles and Practices, 6th Ed, Williams Stallings (2014)".
    - Key chapters include: Overview, Classical Encryption Techniques, Block ciphers and the Data Encryption Standard, Number Theory, Advanced Encryption Standard, Block Cipher Operation, Pseudorandom Number Generation and Stream Ciphers, More Number Theory, Public-Key Cryptography and RSA, Cryptographic Hash Functions, and Key Management and Distribution.
    - Additional references include "Network Security Essentials" by Stallings, "Introduction to Cryptography with Java Applets" by Bishop, and "Cryptography Engineering" by Ferguson, Schneier, and Kohno.


### Foundational Security Concepts

- **Cryptographic Algorithm Groupings**
    - Cryptographic algorithms and protocols are grouped into four main areas:
        - **Symmetric encryption:** Conceals data blocks/streams of any size (messages, files, keys, passwords).
        - **Asymmetric encryption:** Conceals small data blocks (encryption keys, hash values) used in digital signatures.
        - **Data integrity algorithms:** Protects data blocks (messages) from alteration.
        - **Authentication protocols:** Schemes based on cryptographic algorithms to authenticate entity identities.
- **Network and Computer Security**
    - Network and Internet security involves measures to deter, prevent, detect, and correct security violations concerning information transmission.
    - **Computer security** is defined by NIST as "the protection afforded to an automated information system in order to attain the applicable objectives of preserving the integrity, availability and confidentiality of information system resources".
- **Computer Security Objectives (CIA Triad, Authenticity, Accountability)**
    - The core objectives form the **CIA Triad**:
        - **Confidentiality:** Protects private/confidential information from unauthorized disclosure. This includes **Data confidentiality** (information not disclosed) and **Privacy** (individuals control information about them).
        - **Integrity:** Ensures information and programs are changed only in authorized ways. This includes **Data integrity** (information changed only as specified) and **System integrity** (system performs as intended, free from manipulation).
        - **Availability:** Assures systems work promptly and services are not denied to authorized users.
    - **Possible additional concepts**:
        - **Authenticity:** Verifies user identity and trusted source of input.
        - **Accountability:** Ensures actions of an entity can be uniquely traced to that entity.
- **Breach of Security Levels of Impact**
    - Impact levels are categorized as:
        - **High:** Severe or catastrophic adverse effect on operations, assets, or individuals.
        - **Moderate:** Serious adverse effect on operations, assets, or individuals.
        - **Low:** Limited adverse effect on operations, assets, or individuals.
- **Computer Security Challenges**
    - Security is complex and requires considering potential attacks, deciding where to use mechanisms, constant monitoring, and often involves more than a single algorithm/protocol. It is a "battle of wits," offers little perceived benefit until failure, and can impede efficient, user-friendly operation.

### OSI Security Architecture

- **Definitions: Security Attack, Mechanism, Service**
    - **Security attack:** Any action compromising an organization's information security.
    - **Security mechanism:** A process or device designed to detect, prevent, or recover from a security attack.
    - **Security service:** A processing or communication service enhancing system/data transfer security, intended to counter attacks using security mechanisms.
- **Security Attacks**
    - Classified into **passive attacks** and **active attacks**.
    - **Passive Attacks:** Attempt to learn from the system without altering resources; involve eavesdropping or monitoring.
        - **Release of message contents:** Opponent obtains transmitted information.
        - **Traffic analysis:** Monitoring transmissions to gather information.
    - **Active Attacks:** Attempt to alter system resources or affect their operation, difficult to prevent due to vulnerabilities; goal is detection and recovery.
        - **Masquerade:** One entity pretends to be another.
        - **Replay:** Capturing and retransmitting data units to produce unauthorized effects.
        - **Modification of messages:** Altering part of a legitimate message, delaying, or reordering it for unauthorized effects.
        - **Denial of service:** Prevents or inhibits normal use of communication facilities.
- **Security Services (X.800 Categories)**
    - X.800 defines specific services:
        - **Authentication:** Assures communication is authentic, verifying sender identity for messages or entities in ongoing interactions.
            - Includes Peer entity authentication and Data origin authentication.
        - **Access control:** Limits and controls access to systems/applications via communication links, requiring identification/authentication to tailor access rights.
        - **Data confidentiality:** Protects transmitted data from passive attacks, ranging from all user data to specific fields, and traffic flow analysis.
        - **Data integrity:** Applies to streams of messages or individual messages.
            - **Connection-oriented integrity service:** Assures messages in a stream are received as sent (no duplication, insertion, modification, reordering, replay).
            - **Connectionless integrity service:** Protects individual messages, primarily against modification.
        - **Nonrepudiation:** Prevents sender or receiver from denying a transmitted message, allowing proof of sending or receiving.
- **Security Mechanisms (X.800)**
    - **Specific Security Mechanisms:** Encipherment, Digital signatures, Access controls, Data integrity, Authentication exchange, Traffic padding, Routing control, Notarization.
    - **Pervasive Security Mechanisms:** Trusted functionality, Security labels, Event detection, Security audit trails, Security recovery.

### Network Access Security Model

- **Unwanted Access**
    - Involves placing logic in a computer system that exploits vulnerabilities, affecting application and utility programs.
    - Programs can pose two types of threats:
        - **Information access threats:** Intercept or modify data for unauthorized users.
        - **Service threats:** Exploit service flaws to inhibit legitimate user access.

## 🔑 Key Concepts & Definitions

- **Written examination** → 60% of module assessment.
- **Continuous assessment** → 40% of module assessment (Theory test 1 & 2, Assignment 1 & 2).
- **Symmetric encryption** → Used to conceal contents of blocks or streams of data of any size (messages, files, encryption keys, passwords).
- **Asymmetric encryption** → Used to conceal small blocks of data (encryption keys, hash function values) used in digital signatures.
- **Data integrity algorithms** → Used to protect blocks of data (messages) from alteration.
- **Authentication protocols** → Schemes based on cryptographic algorithms designed to authenticate the identity of entities.
- **Network and Internet security** → Measures to deter, prevent, detect, and correct security violations involving information transmission.
- **Computer security (NIST definition)** → "The protection afforded to an automated information system in order to attain the applicable objectives of preserving the integrity, availability and confidentiality of information system resources" (includes hardware, software, firmware, information/data, and telecommunications).
- **Data confidentiality** → Assures private or confidential information is not made available or disclosed to unauthorized individuals.
- **Privacy** → Assures individuals control or influence what information related to them may be collected and stored and by whom and to whom that information may be disclosed.
- **Data integrity** → Assures information and programs are changed only in a specified and authorized manner.
- **System integrity** → Assures a system performs its intended function in an unimpaired manner, free from deliberate or inadvertent unauthorized manipulation of the system.
- **Availability** → Assures systems work promptly and service is not denied to authorized users.
- **Authenticity** → Verifying that users are who they say they are and that each input arriving at the system came from a trusted source.
- **Accountability** → Security goal that generates the requirement for actions of an entity to be traced uniquely to that entity.
- **Security attack** → Any action that compromises the security of information owned by an organization.
- **Security mechanism** → A process (or device) designed to detect, prevent, or recover from a security attack.
- **Security service** → A processing or communication service that enhances the security of data processing systems and information transfers, intended to counter security attacks using one or more security mechanisms.
- **Passive attack** → Attempts to learn or make use of information from the system but does not affect system resources.
- **Active attack** → Attempts to alter system resources or affect their operation.
- **Release of message contents** → A type of passive attack where the opponent obtains information being transmitted.
- **Traffic analysis** → A type of passive attack involving eavesdropping or monitoring transmissions to obtain information.
- **Masquerade** → An active attack where one entity pretends to be a different entity.
- **Replay** → An active attack involving passive capture of a data unit and its subsequent retransmission to produce an unauthorized effect.
- **Modification of messages** → An active attack where a portion of a legitimate message is altered, or messages are delayed/reordered to produce an unauthorized effect.
- **Denial of service** → An active attack that prevents or inhibits the normal use or management of communications facilities.
- **Authentication (service)** → Assuring that a communication is authentic; for a single message, assures recipient of source; for ongoing interaction, assures authenticity of entities and prevents masquerade.
- **Access control** → Ability to limit and control access to host systems and applications via communications links, requiring identification/authentication to tailor access rights.
- **Data confidentiality (service)** → Protection of transmitted data from passive attacks, can be broad (all user data) or narrow (single message/fields), includes protection of traffic flow from analysis.
- **Connection-oriented integrity service** → Assures messages in a stream are received as sent with no duplication, insertion, modification, reordering, or replays.
- **Connectionless integrity service** → Deals with individual messages, generally provides protection against message modification only.
- **Nonrepudiation** → Prevents either sender or receiver from denying a transmitted message; sender can prove receipt, receiver can prove sending.
- **Information access threats** → Exploits vulnerabilities to intercept or modify data on behalf of unauthorized users.
- **Service threats** → Exploits service flaws to inhibit use by legitimate users.

## 🎯 Possible Exam-Style Questions

- Q: Consider an online banking system where users provide an account number and password to access the bank account and transfer money online. Mention examples of CIA (confidentiality, integrity, and availability) requirements associated with the system. Also, discuss the level of importance (low, medium, high) of each requirement on the system.
- A: [[Introduction to Advanced Security#Computer Security Objectives (CIA Triad)]]
- Q: Briefly explain the two different types of passive security attacks and provide an overview of categories of active security attacks.
- A: [[Introduction to Advanced Security#Security Attacks]]
- Q: Explain the main categories of security services as defined by X.800.
- A: [[Introduction to Advanced Security#Security Services (X.800 Categories)]]
- Q: Discuss the structure of the Feistel Cipher, detailing both its encryption and decryption processes. Use a diagram to illustrate your answer.
- A: [[Introduction to Advanced Security#Module Contents]] (References Block Ciphers which include Feistel Cipher)
- Q: Explain the concepts of True Random Number Generator (TRNG) and Pseudorandom Number Generator (PRNG).
- A: [[Introduction to Advanced Security#Module Contents]] (References Pseudorandom Number Generation)

## 🔗 Related Diagrams

- [[Assets/Week1 - Introduction to Advanced Security Diagram.excalidraw]]

## 🔄 Links

- Next Lecture: [[Week 2 - Number Theory, Discrete Logarithms and Elliptic Curves]]