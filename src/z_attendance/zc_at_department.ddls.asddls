@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department projection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.semanticKey: [ 'departmentID' ]
@UI.headerInfo: { typeName: 'Department', typeNamePlural: 'Departments', title: { value: 'name' } }
define root view entity ZC_AT_DEPARTMENT
  provider contract transactional_query
  as projection on ZI_AT_DEPARTMENT
{
    
    @UI.facet: [ { id:            'idIdentification',
                   type:          #IDENTIFICATION_REFERENCE,
                   label:         'General Information',
                   position:      10 } ]

    @UI.lineItem: [{ position: 10, label:'Department ID'  }]
    @UI.identification: [{ position: 10 }]
    key departmentID,
    @UI.lineItem: [{ position: 20, label:'Name'  }]
    @UI.identification: [{ position: 20 }]
    name,
    @UI.lineItem: [{ position: 30, label: 'Manager ID'  }]
    @UI.identification: [{ position: 30 }]
    managerID,
    last_changed_at,
    
    _Manager
}
