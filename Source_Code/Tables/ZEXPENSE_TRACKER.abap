@EndUserText.label : 'Expense Tracker Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zexpense_tracker {

  key client     : mandt not null;
  key expense_id : zde_exp_id not null;
  user_id        : zde_user_id;
  category_id    : zde_category_id;
  amount         : zde_amt_ys;
  description    : zde_note_ys;
  expense_date   : erdat;

}
