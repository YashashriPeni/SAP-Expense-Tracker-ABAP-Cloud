@EndUserText.label : 'User Master Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zuser_master {

  key client  : mandt not null;
  key user_id : zde_user_id not null;
  user_name   : zde_user_name;
  email       : zde_email;
  phone       : zde_phone;
  created_on  : erdat;

}
