@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_RAP100_ATRAV000'
@ObjectModel.semanticKey: [ 'Client', 'TravelID' ]
define root view entity ZC_RAP100_ATRAV000
  provider contract transactional_query
  as projection on ZR_RAP100_ATRAV000
{
  key Client,
  key TravelID,
  AgencyID,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  CurrencyCode,
  Description,
  OverallStatus,
  Attachment,
  MimeType,
  FileName
}
