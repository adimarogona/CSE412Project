<GlobalFunctions>
  <SqlQueryUnified
    id="addNewRow"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ CreateUserForm1.data }}"
    editorMode="gui"
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "index" },
                { indexType: "display" },
                { index: "{{dataTable.data.length-1}}" },
                { key: null },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ UpdateUserForm1.data }}"
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ dataTable.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{ dataTable.selectedRow.id }}" },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="SelectPatient"
    query={include("./lib/SelectPatient.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewDoctors"
    query={include("./lib/viewDoctors.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewMedicalHistory"
    query={include("./lib/viewMedicalHistory.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewPatientPrescription"
    query={include("./lib/viewPatientPrescription.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewPatientAllergies"
    isMultiplayerEdited={false}
    query={include("./lib/viewPatientAllergies.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewAppointments"
    isMultiplayerEdited={false}
    query={include("./lib/viewAppointments.sql", "string")}
    queryRefreshTime="5000"
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="patientBooksAppointment"
    actionType="INSERT"
    changeset={
      '[{"key":"isAvailable","value":"true"},{"key":"symptoms","value":"{{inputSymptoms.value}}"},{"key":"appointment_id","value":"{{ selectappointment.value }}"},{"key":"patient_id","value":"{{selectPatient.value}}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"isAvailable","value":"true","operation":"="},{"key":"symptoms","value":"{{inputSymptoms.value}}","operation":"="},{"key":"appointment_id","value":"{{selectappointment.data.patient_id}}","operation":"="},{"key":"patient_id","value":"{{SelectPatient.data.patient_id}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    runWhenModelUpdates={false}
    tableName="patient_books_appointment"
  />
  <SqlQueryUnified
    id="updateAppointmentAvailability"
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
  />
  <SqlQueryUnified
    id="updateDoctorHoldsAppointmentAvail"
    actionType="UPDATE_BY"
    changeset={'[{"key":"isAvaila","value":"0"},{"key":"","value":""}]'}
    filterBy={
      '[{"key":"appointment_id","value":"{{selectappointment.value}}","operation":"="}]'
    }
    query={include("./lib/updateDoctorHoldsAppointmentAvail.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    runWhenModelUpdates={false}
    tableName="doctor_holds_appointment"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewDoctor_holds_appointment"
    isMultiplayerEdited={false}
    query={include("./lib/viewDoctor_holds_appointment.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="viewHospital"
    query={include("./lib/viewHospital.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="DeleteAppointment"
    actionType="DELETE_BY"
    editorMode="gui"
    filterBy={
      '[{"key":"appointment_id","value":"{{selectappointment2.value}}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    runWhenModelUpdates={false}
    tableName="appointment"
  />
  <SqlQueryUnified
    id="deleteDoctorHoldsAppointment"
    actionType="DELETE_BY"
    editorMode="gui"
    filterBy={
      '[{"key":"appointment_id","value":"{{selectappointment2.value}}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="eb24bed9-a79a-4ec3-a7c0-9dbe211b026b"
    runWhenModelUpdates={false}
    tableName="doctor_holds_appointment"
  />
</GlobalFunctions>
