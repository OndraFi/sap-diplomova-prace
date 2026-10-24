@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Attandance projection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.semanticKey: [ 'attendanceID' ]
@UI.headerInfo: { typeName: 'Attendance', typeNamePlural: 'Attendance', title: { value: 'attendanceID' } }
define root view entity ZC_AT_ATT
  provider contract transactional_query
  as projection on ZI_AT_ATT
{
    @UI.facet: [ { id:            'idIdentification',
                   type:          #IDENTIFICATION_REFERENCE,
                   label:         'General Information',
                   position:      10 } ]

    @UI.lineItem: [{ position: 10, label:'Attendance ID'  }]
    @UI.identification: [{ position: 10 }]
    key attendanceID,
    @UI.lineItem: [{ position: 20, label:'Employee ID'  }]
    @UI.identification: [{ position: 20 }]
    employeeID,
    @UI.lineItem: [{ position: 30, label:'Start'  }]
    @UI.identification: [{ position: 30 }]
    attendanceStart,
    @UI.lineItem: [{ position: 40, label:'End'  }]
    @UI.identification: [{ position: 40 }]
    attendanceEnd,
    @UI.lineItem: [{ position: 50, label:'Type'  }]
    @UI.identification: [{ position: 50 }]
    attendanceType,
    last_changed_at,
    /* Asociace na zaměstnance */
    _Employee
}
