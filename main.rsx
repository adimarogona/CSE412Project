<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="none"
    sticky={null}
    style={{ ordered: [{ canvas: "rgb(153, 175, 167)" }] }}
    type="main"
  >
    <HTML
      id="html1"
      css={include("./lib/html1.css", "string")}
      html={include("./lib/html1.html", "string")}
    />
  </Frame>
</App>
