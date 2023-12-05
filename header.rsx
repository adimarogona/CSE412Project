<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  paddingType="normal"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "rgba(247, 249, 249, 1)" }] }}
  type="header"
>
  <Image
    id="image1"
    horizontalAlign="center"
    src="https://th.bing.com/th/id/R.e0b5a2e36be1a6ed7fb050930204b819?rik=%2bpASqZKu4zwB5g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fKcn%2fXKX%2fKcnXKXEBi.png&ehk=KIYarE8it%2fqQ%2fpJDglcPKr4s4FglNFvMja8pObiMdOQ%3d&risl=&pid=ImgRaw&r=0"
    style={{ ordered: [] }}
  />
  <LinkList
    id="linkList1"
    itemMode="static"
    label=""
    labelPosition="top"
    showUnderline="never"
  >
    <Option id="6a5e0" label="Doctor View">
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "c3f16f58-8ff8-11ee-a2cd-1f2e09c3dc72" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
    <Option id="6b339" label="Patient View">
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "f0d3612c-9000-11ee-a4bf-17145abf34c4" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
  </LinkList>
  <Text
    id="text1"
    style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
    value="## Healthcare Services"
    verticalAlign="center"
  />
</Frame>
