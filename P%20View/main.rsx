<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(247, 249, 249)" }] }}
    type="main"
  >
    <Image
      id="image1"
      horizontalAlign="center"
      src="https://th.bing.com/th/id/R.e0b5a2e36be1a6ed7fb050930204b819?rik=%2bpASqZKu4zwB5g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKcn%2fXKX%2fKcnXKXEBi.png&ehk=KIYarE8it%2fqQ%2fpJDglcPKr4s4FglNFvMja8pObiMdOQ%3d&risl=&pid=ImgRaw&r=0"
      style={{ ordered: [] }}
    />
    <Select
      id="selectPatient"
      captionByIndex=""
      colorByIndex=""
      data="{{ SelectPatient.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Choose Patient ID"
      labelPosition="top"
      labels="Id: {{item.patient_id}} {{ item.patient_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.patient_id }}"
    >
      <Option id="2d118" value="Option 1" />
      <Option id="bb461" value="Option 2" />
      <Option id="89a32" value="Option 3" />
    </Select>
    <Select
      id="chooseHospital"
      data="{{ viewHospital.data }}"
      emptyMessage="No options"
      label="Select Hospital"
      labelPosition="top"
      labels="{{ item.hospital_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.hospital_id }}"
    />
    <Text
      id="text5"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
      value="## Saint Lukes Hospital"
      verticalAlign="center"
    />
    <Container id="container1" showBody={true} showHeader={true}>
      <Header>
        <Text
          id="title"
          _disclosedFields={["color"]}
          style={{ ordered: [{ color: "rgba(29, 30, 28, 1)" }] }}
          value="### Patient Dashboard"
        />
      </Header>
      <View id="9b171" viewKey="View 1">
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
              style={{
                ordered: [{ selectedBackground: "rgba(31, 141, 95, 0.2)" }],
              }}
              targetContainerId="tabbedContainer1"
              value="{{ self.values[0] }}"
            >
              <Option id="f29a3" value="Tab 1" />
              <Option id="ba540" value="Tab 2" />
              <Option id="a3985" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="3a611" viewKey="Appointments">
            <Include src="./src/tabbedContainer3.rsx" />
          </View>
          <View id="9b772" viewKey="Charts">
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
                  defaultSelectedRow={{
                    mode: "index",
                    indexType: "display",
                    index: 0,
                  }}
                  emptyMessage="No rows found"
                  enableSaveActions={true}
                  showBorder={true}
                  showFooter={true}
                  showHeader={true}
                  toolbarPosition="bottom"
                >
                  <Column
                    id="b3a80"
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
                  <Action
                    id="4128e"
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
                  defaultSelectedRow={{
                    mode: "index",
                    indexType: "display",
                    index: 0,
                  }}
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
                    size={86.55000305175781}
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
                  defaultSelectedRow={{
                    mode: "index",
                    indexType: "display",
                    index: 0,
                  }}
                  emptyMessage="No rows found"
                  enableSaveActions={true}
                  showBorder={true}
                  showFooter={true}
                  showHeader={true}
                  toolbarPosition="bottom"
                >
                  <Column
                    id="bc5fb"
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
        <Form
          id="UpdateUserForm1"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="text3"
              value="###### Patient Info"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Text
              id="text8"
              value="Name: {{selectPatient.selectedLabel}}"
              verticalAlign="center"
            />
            <Text
              id="text9"
              value="ID: {{selectPatient.value}}"
              verticalAlign="center"
            />
          </Body>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateRow"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
  </Frame>
</App>
