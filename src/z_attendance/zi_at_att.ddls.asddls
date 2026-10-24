@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root for attandance'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_AT_ATT as select from zat_att
association [1..1] to ZI_AT_EMPLOYEE as _Employee
  on $projection.employeeID = _Employee.employeeID
{
    key attendance_id as attendanceID,
    employee_id as employeeID,
    attendance_start as attendanceStart,
    attendance_end as attendanceEnd,
    attendance_type as attendanceType,
    last_changed_at,
    /* Asociace na zaměstnance */
    _Employee
}
