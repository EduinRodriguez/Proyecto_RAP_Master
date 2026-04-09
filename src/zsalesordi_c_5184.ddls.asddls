@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'ItemID' ]
define view entity ZSALESORDI_C_5184 as projection on ZSALESORDI_R_5184
{
    key ItemUUID,
    HeaderUUID,
    @Search.defaultSearchElement: true
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
    _Header : redirected to parent ZSALESORDH_C_5184    
}
