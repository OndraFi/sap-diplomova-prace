@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contract view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_AT_CONTRACT as select from zat_contract
association to parent ZI_AT_EMPLOYEE as _Employee
    on  $projection.employeeID = _Employee.employeeID
{
    key contract_id as contractID,
    employee_id as employeeID,
    start_date as startDate,
    end_date as end_date,
    contract_type as contractType,
    last_changed_at,
    _Employee

}
