@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root for department'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_AT_DEPARTMENT as select from zat_department
association [1..1] to ZI_AT_EMPLOYEE as _Manager
  on $projection.managerID = _Manager.employeeID
{
    key department_id as departmentID,
    name,
    manager_emp_id as managerID,
    last_changed_at,
    
    _Manager
    
}
