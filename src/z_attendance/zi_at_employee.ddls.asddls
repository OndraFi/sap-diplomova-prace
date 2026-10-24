@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root for employee'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_AT_EMPLOYEE as select from zat_employee
composition [0..*] of ZI_AT_CONTRACT as _Contracts
association [1..1] to ZI_AT_DEPARTMENT as _Department
  on $projection.departmentID = _Department.departmentID
{
    key employee_id as employeeID,
    department_id as departmentID,
    name,
    email,
    sap_user as sapUser,
    last_changed_at,
    /* vazby */
    _Contracts,
    _Department
}
