# SAP Expense Tracker Architecture

This document describes the architectural layers and system flow of the SAP ABAP Cloud Expense Tracker and Analytics project.

## System Flow

The data flow propagates from the custom database tables up to the web application frontend as follows:

```
Database Tables
      ↓
   CDS View
      ↓
Service Definition
      ↓
Service Binding
      ↓
OData V4 Service
      ↓
Frontend Application
```

### Layer Details

1. **Database Tables**: Custom tables defined in ABAP Dictionary storing expense transactions, category catalog mappings, and user master records.
2. **Core Data Services (CDS) Views**: Models, validates, and exposes raw table relationships (including ID-to-name joins and annotations).
3. **Service Definition**: Defines which CDS entities are exposed to the business service interface.
4. **Service Binding**: Binds the service definition to a specific protocol (OData V4 Web API).
5. **OData V4 Service**: Exposes semantic REST APIs for CRUD operations and analytics.
6. **Frontend Application**: Visualizes KPIs and analytics graphs using HTML, CSS, and Chart.js.
