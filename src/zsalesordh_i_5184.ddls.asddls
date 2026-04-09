@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Header 5184'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSALESORDH_I_5184
provider contract transactional_interface
 as projection on ZSALESORDH_R_5184 
{
  key HeaderUUID,
      HeaderID,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,
      Imageurl,  
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child ZSALESORDI_I_5184      
}
