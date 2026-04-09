@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZVH_STATUS_ORDER_5184
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZDO_STATUS_ORDER_5184' )
{
  @UI.hidden: true
  key domain_name,
      @UI.hidden: true
  key value_position,
      @UI.hidden: true
  key language,
      @Consumption.filter.hidden: true
      @EndUserText.label: 'Order Status'
      value_low as Code,
      @Consumption.filter.hidden: true
      @EndUserText.label: 'Description'
      text      as Description
}
