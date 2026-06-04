@AbapCatalog.sqlViewName: 'ZEXPTRK'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Tracker Report'

@UI.headerInfo: {
    typeName: 'Expense',
    typeNamePlural: 'Expenses',
    title: {
        type: #STANDARD,
        value: 'expense_id'
    }
}

define root view entity ZI_EXPENSE_CDS
  as select from zexpense_tracker
{
    @UI.lineItem: [{ position: 10 }]
    @UI.identification: [{ position: 10 }]
    key expense_id,

    @UI.lineItem: [{ position: 20 }]
    user_id,

    @UI.lineItem: [{ position: 30 }]
    category_id,

    @UI.lineItem: [{ position: 40 }]
    amount,

    @UI.lineItem: [{ position: 50 }]
    description,

    @UI.lineItem: [{ position: 60 }]
    expense_date
}
