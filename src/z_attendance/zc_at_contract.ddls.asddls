@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contract projection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.semanticKey: [ 'contractID' ]
@UI.headerInfo: { typeName: 'Contract', typeNamePlural: 'Contracts', title: { value: 'contractID' } }
define view entity ZC_AT_CONTRACT
  provider contract transactional_query
  as projection on ZI_AT_CONTRACT
{

    @UI.facet: [ { id:            'idIdentification',
                   type:          #IDENTIFICATION_REFERENCE,
                   label:         'General Information',
                   position:      10 } ]

    @UI.lineItem: [{ position: 10, label:'Contract ID'  }]
    @UI.identification: [{ position: 10 }]
    key contractID,
    @UI.lineItem: [{ position: 20, label:'Employee ID'  }]
    @UI.identification: [{ position: 20 }]
    employeeID,
    @UI.lineItem: [{ position: 30, label:'Start date'  }]
    @UI.identification: [{ position: 30 }]
    startDate,
    @UI.lineItem: [{ position: 40, label:'End date'  }]
    @UI.identification: [{ position: 40 }]
    end_date,
    @UI.lineItem: [{ position: 50, label:'Type'  }]
    @UI.identification: [{ position: 50 }]
    contractType,
    last_changed_at,
    
    _Employee
}
