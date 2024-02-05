@Component
export struct SearchBar {
  @Prop text: string = ""

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_menu1')).width(26).height(26)
        if (this.text) {
          Text(this.text).width(240).textAlign(TextAlign.Center).fontSize(28).fontColor($r('app.color.color_white'))
        } else {
          TextInput({ placeholder: 'Search album,song…' })
            .height(40)
            .width(240)
            .borderRadius(30)
            .backgroundColor($r('app.color.color_white'))
            .backgroundColor('#323232')
            .fontSize(14)
            .placeholderColor($r('app.color.color_white'))
        }
        Column() {
        }.width(40).height(40).borderRadius(30).backgroundColor($r('app.color.color_white'))

      }.width('100%').padding(10).alignItems(VerticalAlign.Center).justifyContent(FlexAlign.SpaceBetween)
    }
    .width('100%')
    .height(90)
    .backgroundColor($r('app.color.color_black'))
    .padding({ top: 20, left: 20, right: 20, bottom: 10 })
  }
}