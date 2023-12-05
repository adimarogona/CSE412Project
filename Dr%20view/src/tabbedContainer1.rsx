<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "rgba(31, 141, 95, 0.2)" }] }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="f29a3" value="Tab 1" />
      <Option id="ba540" value="Tab 2" />
      <Option id="a3985" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="3a611" viewKey="Appointments">
    <Include src="./tabbedContainer3.rsx" />
  </View>
  <View id="9b772" viewKey="Charts">
    <Select
      id="patientSelector"
      data="{{ viewPatientIDs.data }}"
      emptyMessage="No options"
      label="View Patient:"
      labelPosition="top"
      labels="Id: {{item.patient_id}} {{ item.patient_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.patient_id }}"
    />
    <Include src="./container4.rsx" />
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          style={{
            ordered: [{ selectedBackground: "rgba(31, 141, 95, 0.2)" }],
          }}
          targetContainerId="tabbedContainer2"
          value="{{ self.values[0] }}"
        >
          <Option id="794ec" value="Tab 1" />
          <Option id="4ecaa" value="Tab 2" />
          <Option id="88611" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="3a611" viewKey="Medical History">
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ viewMedicalHistory.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="b682b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="medical_history"
            label="Medical history"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
      <View id="9b772" viewKey="Prescriptions">
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ viewPatientPrescription.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="52778"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="prescription"
            label="Prescription"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="7c9b2"
            icon="bold/interface-edit-pencil"
            label="Action 1"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
      <View id="2cfba" viewKey="Allergies">
        <Table
          id="table3"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ viewPatientAllergies.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="c52f7"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="allergies"
            label="Allergies"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </View>
</Container>
