@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSALESORDH_R_5184
 as select from zsalesord_h_5184
   composition[0..*] of ZSALESORDI_R_5184 as _Item
{
  key header_uuid           as HeaderUUID,
      header_id             as HeaderID,
      email                 as Email,
      firstname             as Firstname,
      lastname              as Lastname,
      country               as Country,
      createon              as Createon,
      deliverydate          as Deliverydate,
      orderstatus           as Orderstatus,
      imageurl              as Imageurl,             
      @Semantics.user.createdBy: true
      local_create_by       as LocalCreateBy,
      @Semantics.systemDateTime.createdAt: true
      local_create_at       as LocalCreateAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
       _Item
}
