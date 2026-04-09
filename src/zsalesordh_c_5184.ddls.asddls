@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'HeaderID' ]
define root view entity ZSALESORDH_C_5184
 provider contract transactional_query
  as projection on ZSALESORDH_R_5184
{
  key HeaderUUID,
  
      @Search.defaultSearchElement: true
      HeaderID,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,                 
      Imageurl,      
      @Semantics.imageUrl: true  
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIR_ELEM_SADL_C5184'
      virtual ImagePreview: abap.char(255),  
      LocalCreateBy,
      LocalCreateAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child ZSALESORDI_C_5184  
}
