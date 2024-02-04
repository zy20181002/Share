@Component

export struct SearchBar {
  build() {
    Column() {
      Row(){
        Image($r('app.media.ic_menu1')).width(26).height(26)
        TextInput().height(40).width(240).borderRadius(30).backgroundColor($r('app.color.color_white'))
          Column(){}.width(30).height(30).borderRadius(30).backgroundColor($r('app.color.color_white'))
      }.width('100%').padding(10).alignItems(VerticalAlign.Center).justifyContent(FlexAlign.SpaceBetween)
    }.width('100%').height(90).backgroundColor($r('app.color.color_black')).padding({ top: 20, left: 20, right: 20, bottom: 10 })
  }
}