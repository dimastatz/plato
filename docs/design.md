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
The purpose of this requirements document is to outline the key features, functionalities, and performance expectations for an AI Tutor system Plato targeting elementary school kids. Plato aims to provide an interactive and personalized learning experience, fostering academic growth and engagement.

## Requirements

### Functional Requirements

#### Actors and Actions
1. Admin/Teacher/Parent
    - Login
    - Scan and upload workbooks
    - View Analytics

2. Student
    - Login
    - Ask a question using voice / text commands
    - Choose a question from a pre-existing database of workbooks
    - Solve questions
    - Request a step-by-step solution even when the provided solution is incorrect. 

3. AI Tutor aka Plato
    - Answer question by using internal knowledge DB
    - Answer question by using the ChatGPT prompting
    - Show answers in text
    - Play aloud answers

#### Flows
1. Upload Workbook
```mermaid
sequenceDiagram
Admin->>Plato: 1. login
Note right of Plato: login by using Gmail, Facebook, etc 
Plato-->>Admin: access token
Admin->>Plato: 2. upload workbook image or text
Plato-->Plato: 3. if workbook is image, activate OCR to get text
Plato-->Plato: 4. for each workbook page, it an exercise contains image, transform image to text 
Plato-->>Admin: upload Status
```
##### Question
- <i>Some assignments contain image as part of an assignment description. How we translate an image to text. Can chatGPT explain images. Is it an idea for the product?</i>


2. Solve Exercise from Stock
```mermaid
sequenceDiagram

Student->>Plato: 1. login
Note right of Plato: login by using Gmail, Facebook, etc 
Plato-->>Student: access token

Student->>Plato: 2. select workbook from the stock and select the exercise page
Plato-->>Student: digital workbook as html page 

Student->>Plato: 3. solve an exercise from the selected workbook and press validate button

Plato->>PlatoKnowledgeDB: 4. check if answer exist
PlatoKnowledgeDB-->>Plato: return the right answer or answer is not exist

Plato->>ChatGPT: 5. if answer is not exists, solve the problem with step by step explanation 
ChatGPT-->>Plato: answer with explanation

Plato->>Plato: 6. translate the answer to the target language
Plato->>PlatoKnowledgeDB: 7. store the answer
PlatoKnowledgeDB-->>Plato: knowledge db update status

Plato->>Plato: 8. validate student's answer
Plato-->>Student: send the right answer with explanation
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





