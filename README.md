# SAP Expense Tracker & Analytics Dashboard

A full-stack Expense Tracker and Analytics Dashboard built using SAP ABAP Cloud, CDS Views, OData V4 Services, SAP S/4HANA 2023, and a modern frontend application developed using Antigravity.

---

## Project Overview

This project demonstrates end-to-end SAP application development using the ABAP RESTful programming model and OData V4 services.

The application allows users to:

- Manage expense records
- Categorize expenses
- Track spending trends
- Analyze expense distributions
- Consume SAP OData services through a modern UI
- Integrate SAP backend data with a frontend dashboard

---

## System Architecture

```text
Frontend Application
        │
        ▼
OData V4 Service
        │
        ▼
Service Binding
        │
        ▼
Service Definition
        │
        ▼
CDS View
        │
        ▼
ABAP Database Tables
```

---

## Technologies Used

### SAP Backend

- SAP S/4HANA 2023
- SAP ABAP Cloud
- Core Data Services (CDS)
- OData V4 Services
- Service Definitions
- Service Bindings
- SAP GUI
- Eclipse ADT

### Frontend

- Antigravity
- TypeScript
- Modern Dashboard UI
- REST/OData Integration

---

## Database Design

### User Master Table

Stores user information.

Fields:

- USER_ID
- USER_NAME
- EMAIL
- PHONE
- CREATED_ON

---

### Category Master Table

Stores expense categories.

Fields:

- CATEGORY_ID
- CATEGORY_NAME

Examples:

- FOOD
- SHOPPING
- TRAVEL
- BILLS

---

### Expense Tracker Table

Stores expense transactions.

Fields:

- EXPENSE_ID
- USER_ID
- CATEGORY_ID
- AMOUNT
- DESCRIPTION
- EXPENSE_DATE

---

## CDS View

The CDS View exposes expense data for OData consumption and reporting.

Entity:

```abap
ZI_EXPENSE_CDS
```

Features:

- Semantic data modeling
- UI annotations
- OData exposure
- Analytics-ready structure

---

## OData Service

### Service Definition

```abap
ZUI_EXPENSE_SRV
```

Exposes:

```abap
ZI_EXPENSE_CDS
```

---

### Service Binding

```abap
ZUI_EXPENSE_BIND
```

Binding Type:

```text
OData V4 - UI
```

Used for frontend integration.

---

# Application Screenshots

## Dashboard

![Dashboard](Screenshots/Dashboard.png)

Displays:

- Total Expenses
- Highest Expense
- Expense Count
- Average Expense
- Category Distribution
- Monthly Trends

---

## Expense Ledger

![Expenses](Screenshots/expenses.png)

Features:

- Search
- Filters
- Expense Records
- CRUD Operations

---

## Add Expense

![Add Expense](Screenshots/add_expense_modal.png)

Supports:

- Expense Creation
- Category Selection
- User Selection
- Date Selection
- Currency Selection

---

## Configuration Screen

![Settings](Screenshots/settings.png)

Allows configuration of:

- OData Service URL
- Entity Names
- Authentication
- SAP Integration Settings

---

# SAP Backend Screenshots

## CDS View

![CDS View](Screenshots/zi_expense_cds.png)

---

## Service Definition

![Service Definition](Screenshots/service_definition.png)

---

## Service Binding

![Service Binding](Screenshots/service_binding.png)

---

## Category Table Structure

![Category Table](Screenshots/zcategory_master_structure.png)

---

## Expense Table Structure

![Expense Table](Screenshots/zexpense_tracker_structure.png)

---

## User Table Structure

![User Table](Screenshots/zuser_master_table.png)

---

# SAP GUI Validation

## Category Master Data

![Category Data](Screenshots/sap_gui_category_master_data.png)

---

## Expense Tracker Data

![Expense Data](Screenshots/sap_gui_expense_tracker_data.png)

---

## Category Table Structure

![Category Structure](Screenshots/sap_gui_zcategory_master_structure.png)

---

## Expense Table Structure

![Expense Structure](Screenshots/sap_gui_zexpense_tracker_structure.png)

---

## Key Features

- SAP ABAP Cloud Development
- CDS-Based Data Modeling
- OData V4 Service Exposure
- SAP GUI Validation
- Frontend Dashboard Integration
- Expense Analytics
- Category Management
- End-to-End SAP Full Stack Architecture

---

## Author

**Yashashri Penikalapati**

B.Tech – Information Technology

MLR Institute of Technology

Hyderabad, India
