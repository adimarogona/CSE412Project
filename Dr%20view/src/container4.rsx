<Container id="container4" showBody={true} showHeader={true}>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Update Chart"
      verticalAlign="center"
    />
  </Header>
  <View id="6d809" viewKey="View 1">
    <TextInput
      id="medicalHistoryInput"
      label="Medical History"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="prescriptionInput"
      label="Prescription"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="allergiesInput"
      label="allergies"
      labelPosition="top"
      placeholder="Enter value"
      value="None"
    />
    <Button id="button1" styleVariant="solid" text="update">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateChart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="doctor_edits_chart"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
