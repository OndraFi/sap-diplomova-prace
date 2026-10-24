@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee projection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.semanticKey: [ 'employeeID' ]
@UI.headerInfo: { typeName: 'Employee', typeNamePlural: 'Employees', title: { value: 'name' } }
define root view entity ZC_AT_EMPLOYEE
  provider contract transactional_query
  as projection on ZI_AT_EMPLOYEE
{
    @UI.facet: [ { id:            'idIdentification',
                   type:          #IDENTIFICATION_REFERENCE,
                   label:         'General Information',
                   position:      10 } ]

    key employeeID,
    @UI.lineItem: [{ position: 10, label:'Department ID'  }]
    departmentID,
    @UI.lineItem: [{ position: 20, label:'Name'  }]
    name,
    @UI.lineItem: [{ position: 30, label: 'Email'  }]
    email,
    @UI.lineItem: [{ position: 40, label: 'Sap User'  }]
    sapUser,
    last_changed_at,
    /* vazby */
    _Contracts,
    _Department
}
