@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Root Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSALESORDI_R_5184
  as select from zsalesord_i_5184

  association to parent ZSALESORDH_R_5184 as _Header on $projection.HeaderUUID = _Header.HeaderUUID
{
  key item_uuid             as ItemUUID,
      parent_uuid           as HeaderUUID,
      item_id               as ItemID,
      name                  as Name,
      description           as Description,
      releasedate           as Releasedate,
      discontinueddate      as Discontinueddate,
      price                 as Price,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      height                as Height,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      width                 as Width,
      depth                 as Depth,
      quantity              as Quantity,
      unitofmeasure         as Unitofmeasure,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Header
}
