<div align="center">
<h1 align="center"> Plato </h1> 
<h3>Unlock the Power of Problem-Solving!</br></h3>
<img src="https://img.shields.io/badge/Progress-1%25-red"> <img src="https://img.shields.io/badge/Feedback-Welcome-green">
</br>
<kbd>
<img src="../images/plato_1.png" width="256ppx"> 
</kbd>
</div>
</br>
</br>

# System Design Document
June 2023

## Background
This requirements document outlines the key features, functionalities, and performance expectations for an AI Tutor system Plato targeting elementary school kids. Plato aims to provide an interactive, personalized learning experience, fostering academic growth and engagement.

## Requirements

### Functional Requirements

#### Actors and Actions
1. Admin/Teacher/Parent
    - Login
    - Scan and upload workbooks
    - View Analytics

2. Student
    - Login
    - Ask a question using voice/text commands
    - Choose a question from a pre-existing database of workbooks
    - Solve questions
    - Request a step-by-step solution even when the provided solution is incorrect. 

3. AI Tutor aka Plato
    - Answer questions by using internal knowledge DB
    - Answer questions by using the ChatGPT prompting
    - Show answers in text
    - Play-aloud answers

#### Flows
1. Upload Workbook
```mermaid
sequenceDiagram
Admin->>Plato: 1. login
Note right of Plato: login by using Gmail, Facebook, etc 
Plato-->>Admin: access token

Admin->>Plato: 2. upload workbook image or text

Plato->>Plato: 3. if the workbook is an image, activate OCR to get text
Note right of Plato: Some assignments contain images as part of an assignment description.
Note right of Plato: Should we use ChatGPT to explain images and add them to the assignment?
Note right of Plato: Is ChatGPT good enough to understand images?

Plato->>Plato: 4. for each workbook page, an exercise containing an image, transform image to text 
Plato-->>Admin: upload Status
```

2. Solve Exercise from Stock
```mermaid
sequenceDiagram

Student->>Plato: 1. login
Note right of Plato: login by using Gmail, Facebook, etc 
Plato-->>Student: access token

Student->>Plato: 2. select the workbook from the stock and select the exercise page
Plato-->>Student: digital workbook as HTML page 

Student->>Plato: 3. solve an exercise from the selected workbook and press validate button

Plato->>PlatoKnowledgeDB: 4. check if the answer exist
PlatoKnowledgeDB-->>Plato: return the right answer or answer is not exist

Plato->>ChatGPT: 5. if the answer does not exist, solve the problem with step by step explanation 
ChatGPT-->>Plato: answer with an explanation

Plato->>Plato: 6. translate the answer to the target language
Plato->>PlatoKnowledgeDB: 7. store the answer
PlatoKnowledgeDB-->>Plato: knowledge db update status

Plato->>Plato: 8. validate the student's answer
Note right of Plato: Should we implement voice answering?

Plato-->>Student: send the correct answer with an explanation
```

3. View Analytics
[TBD]

#### MVP Flow
The following flow is an MVP flow that validates the idea, reduces risk, gathers user feedback, and iterates based on real-world insights. MVP Flow provides a solid foundation for developing a successful and market-aligned system while optimizing development time and resources. And MVP flow is a chatbot that can be accessed by anyone running WhatsApp on their phone.
```mermaid
sequenceDiagram
Admin->>Plato: 1. Upload one workbook
Note right of Plato: An Workbook uploaded and processed manually

Student->>Plato: 2. Connect to Plato WhatsApp channel
Plato-->>Student: Send greeting Message 
Note right of Plato: Some assignments contain images as part of an assignment description.
Note right of Plato: Should we use ChatGPT to explain images and add them to the assignment?
Note right of Plato: Is ChatGPT good enough to understand images?

Plato->>Plato: 4. for each workbook page, an exercise containing an image, transform image to text 
Plato-->>Admin: upload Status
```

### Non-Functional Requirements
Address the following aspects of System Design
- Security
- Efficiency
- Capacity
- Scalability
- Reliability
- Maintainability

## System APIs
Reduce Complexity

## High-Level Design
Define components and data flows 

## Detailed Design 
Low-Level design of each component (OOD can help)

## Analysis
- Cost
- Security
- Reliability
- Performance Efficiency
- Operation Excellence





