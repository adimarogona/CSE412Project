<Container
  id="tabbedContainer3"
  currentViewKey="{{ self.viewKeys[0] }}"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
>
  <Header>
    <Tabs
      id="tabs3"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "rgba(31, 141, 95, 0.2)" }] }}
      targetContainerId="tabbedContainer3"
      value="{{ self.values[0] }}"
    >
      <Option id="38858" value="Tab 1" />
      <Option id="28506" value="Tab 2" />
      <Option id="91aa0" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="f038f" viewKey="Book">
    <Text
      id="text6"
      value="##### Book an Appointment:"
      verticalAlign="center"
    />
    <Select
      id="selectDoctor"
      data="{{ viewDoctors.data }}"
      emptyMessage="No options"
      label="Select Doctor"
      labelPosition="top"
      labels="{{ item.doctor_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.doctor_id }}"
    />
    <TextInput
      id="inputSymptoms"
      label="Symptoms"
      labelPosition="top"
      placeholder="Enter Symptoms"
    />
    <Select
      id="selectappointment"
      data="{{ viewAppointments.data }}"
      emptyMessage="No options"
      label="Appointment Times"
      labelPosition="top"
      labels="{{ item.appointment_time }} "
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.appointment_id}}"
    />
    <Button
      id="formButton2"
      style={{ ordered: [{ borderRadius: "8px" }, { background: "" }] }}
      styleVariant="outline"
      submitTargetId=""
      text="Book Appoinment"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="patientBooksAppointment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateDoctorHoldsAppointmentAvail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateAppointmentAvailability"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="beb47" viewKey="Cancel">
    <Text id="text7" value="##### Cancel Appointment:" verticalAlign="center" />
    <Select
      id="selectappointment2"
      data="{{ viewAppointments.data }}"
      emptyMessage="No options"
      label="Appointment Times"
      labelPosition="top"
      labels="{{ item.appointment_time }} "
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.appointment_id}}"
    />
    <Button
      id="formButton3"
      style={{ ordered: [{ borderRadius: "8px" }, { background: "" }] }}
      styleVariant="outline"
      submitTargetId=""
      text="Save changes"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteDoctorHoldsAppointment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DeleteAppointment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
