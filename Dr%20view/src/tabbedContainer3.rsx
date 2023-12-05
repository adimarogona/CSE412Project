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
  <View id="f038f" viewKey="hold">
    <Text
      id="text2"
      value="##### hold an Appointment:"
      verticalAlign="center"
    />
    <DateTime
      id="dateTime1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Date & Time"
      labelPosition="top"
      minuteStep={15}
      value="{{ new Date() }}"
    />
    <Button id="appointmentButton" styleVariant="solid" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createAppointment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="beb47" viewKey="Cancel">
    <Text id="text4" value="##### Cancel Appointment:" verticalAlign="center" />
    <Select
      id="chooseAppointment"
      data="{{ viewAppointments.data }}"
      emptyMessage="No options"
      label="choose appointment to cancel"
      labelPosition="top"
      labels="{{item.appointment_time}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.appointment_id }} "
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
        pluginId="deleteAppointment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
