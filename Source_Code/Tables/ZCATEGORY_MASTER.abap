@EndUserText.label : 'Category Master Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zcategory_master {

  key client      : mandt not null;
  key category_id : zde_category_id not null;
  category_name   : zde_category_name;

}
