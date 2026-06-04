@AbapCatalog.sqlViewName: 'ZPDEMO2'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW'
define view ZI_PRO2 as select from vbak
inner join vbap
    on vbak.vbeln = vbap.vbeln
{
    vbak.vbeln,
    vbak.auart,
    vbak.erdat,
    vbak.kunnr,
    vbak.vkorg,
    vbap.posnr,
    vbap.matnr,
    vbap.arktx,
    vbap.kwmeng
}
