@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZRAP100_ATRAV000'
define root view entity ZR_RAP100_ATRAV000
  as select from zrap100_atrav000 as Travel
{
  key client as Client,
  key travel_id as TravelID,
  agency_id as AgencyID,
  begin_date as BeginDate,
  end_date as EndDate,
  booking_fee as BookingFee,
  total_price as TotalPrice,
  currency_code as CurrencyCode,
  description as Description,
  overall_status as OverallStatus,
  attachment as Attachment,
  mime_type as MimeType,
  file_name as FileName,
  @Semantics.user.createdBy: true
  created_by as CreatedBy
}
