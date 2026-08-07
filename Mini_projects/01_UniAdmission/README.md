# Mini Project — University Admissions Management System

## 1. Context

As part of its digital transformation, a university wants to develop a software system to automate the processing of new student admission applications.

The objective is to reduce human errors, speed up the selection process, and ensure that every application meets the admission criteria defined by the institution.

You are tasked with developing the first version of this application in Dart, running as a command-line program.

## 2. General Objective

Design a program capable of analyzing an applicant's file and automatically determining whether they are eligible for admission to the requested program.

The system must produce a detailed report showing:
- Applicant information
- Verified criteria
- Unmet criteria
- Final decision

## 3. Available Information

### Personal Information
- Last name
- First name
- Age
- Gender
- Nationality

### Academic Information
- Overall high school examination average
- Mathematics grade
- French grade
- High school track/stream

### Administrative Information
- Requested program
- Registration fees available (Yes/No)
- Valid national identity document (Yes/No)

## 4. Business Rules

### General Rules

An applicant is automatically rejected if:
- They are under 17 years old.
- Their average is below 10/20.
- They do not have the registration fees.
- Their identity document is invalid.

### Program-Specific Rules

#### Computer Science
The applicant must:
- Have an overall average ≥ 12.
- Have a Mathematics grade ≥ 14.

#### Medicine
The applicant must:
- Have an overall average ≥ 16.
- Have a Mathematics grade ≥ 15.
- Have a French grade ≥ 14.

#### Law
The applicant must:
- Have an overall average ≥ 12.
- Have a French grade ≥ 14.

#### Civil Engineering
The applicant must:
- Have an overall average ≥ 13.
- Have a Mathematics grade ≥ 15.

## 5. Expected Features

The program must:
1. Record all applicant information.
2. Verify the general conditions.
3. Verify the conditions specific to the selected program.
4. Automatically determine whether the applicant is admitted or rejected.
5. Display a structured final report including:
   - Applicant information
   - Satisfied criteria
   - Unsatisfied criteria
   - Final decision

## 6. Technical Constraints

- The project must be developed exclusively in Dart.
- Decisions must be made using only variables, operators, and conditional statements (`if`, `else if`, `else`).
- Loops, functions, collections (`List`, `Set`, `Map`), and object-oriented programming must **not** be used.
- The code must be well organized, use meaningful variable names, and include relevant comments.

## 7. Expected Deliverables

The student must provide:
- The complete source code.
- Several test scenarios (admitted applicant and applicants rejected for different reasons), along with the expected outputs.
- A brief explanation of the design choices and the logic used to apply the admission rules.

This mini-project is designed to reinforce all the concepts covered (variables, operators, and conditional statements) in a realistic context while remaining achievable without using more advanced Dart concepts.
