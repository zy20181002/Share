@Component
export struct CusTabs {
  // tabs
  @Prop data: {key: string, label: string}[] = []
  @Link active: number

  build() {
    Column() {
      Row() {
        ForEach(this.data, (item, index) => {
          Column() {
            Text(item.label)
              .textAlign(TextAlign.Center)
              .height(40)
              .width(80)
              .fontSize(20)
              .fontColor($r('app.color.color_white'))
              .backgroundColor(this.active === index ? $r('app.color.color_red') : $r('app.color.color_black'))
              .borderRadius(20)
              .onClick(e => {
                this.active = index
              })
          }
        })
      }.justifyContent(FlexAlign.SpaceAround).alignItems(VerticalAlign.Center)
    }.padding({bottom: 20})
  }
}

