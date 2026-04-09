@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSALESORDI_I_5184
  as projection on ZSALESORDI_R_5184
{
  key ItemUUID,
      HeaderUUID,
      ItemID,
      Name,
      Description,
      Releasedate,
      Discontinueddate,
      Price,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      Width,
      Depth,
      Quantity,
      Unitofmeasure,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _Header :  redirected to parent ZSALESORDH_I_5184
}
