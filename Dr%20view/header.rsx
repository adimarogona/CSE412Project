<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  paddingType="normal"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "rgb(247, 249, 249)" }] }}
  type="header"
>
  <Image
    id="image1"
    horizontalAlign="center"
    src="https://th.bing.com/th/id/R.e0b5a2e36be1a6ed7fb050930204b819?rik=%2bpASqZKu4zwB5g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKcn%2fXKX%2fKcnXKXEBi.png&ehk=KIYarE8it%2fqQ%2fpJDglcPKr4s4FglNFvMja8pObiMdOQ%3d&risl=&pid=ImgRaw&r=0"
    style={{ ordered: [] }}
  />
  <Select
    id="chooseHospital"
    data="{{ selectHospital.data }}"
    emptyMessage="No options"
    label="choose hospital"
    labelPosition="top"
    labels="{{ item.hospital_name }} "
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
    values="{{ item.hospital_id }} "
  />
  <Select
    id="selectDoctor"
    data="{{ view_Doctors.data }}"
    emptyMessage="No options"
    label="Choose Doctor id"
    labelPosition="top"
    labels="Id: {{item.doctor_id}} {{ item.doctor_name }} "
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
    values="{{item.doctor_id}}"
  />
  <Text
    id="text1"
    style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
    value="## Welcome! {{chooseHospital.Label}}"
    verticalAlign="center"
  />
  <Container id="container3" showBody={true} showHeader={true}>
    <View id="6d809" viewKey="View 1">
      <Text
        id="title"
        _disclosedFields={["color"]}
        style={{ ordered: [{ color: "rgba(29, 30, 28, 1)" }] }}
        value="### Doctor Dashboard"
      />
      <Include src="./src/tabbedContainer1.rsx" />
    </View>
  </Container>
</Frame>
