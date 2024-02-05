import { SearchBar } from '../components/searchBar'

@Entry
@Component
export struct DiscoverDetail {
  @State playStatus: boolean = true
  @State playIconSrc: any = $r('app.media.ic_play')

  build() {
    Column() {
      SearchBar({ text: "Now Playing" })
      Column() {
        Divider().color('#ff585858').strokeWidth(1).padding({ top: 10, bottom: 10 })
        Row() {
          Image($r('app.media.ic_plus')).width(20).height(20)
          Image($r('app.media.ic_share')).width(20).height(20)
        }.width(400).padding(20).justifyContent(FlexAlign.SpaceBetween)

        Column() {
          Image($r('app.media.detail_img')).width(250).height(350).borderRadius(10)
          Text('Counting Stars').fontColor($r('app.color.color_white')).fontWeight(800).fontSize(26).margin({ top: 20 })
          Text('onerepublic • Native')
            .fontColor($r('app.color.color_white'))
            .fontWeight(40)
            .fontSize(22)
            .margin({ top: 15 })
        }.alignItems(HorizontalAlign.Center)

        Column() {
          Column() {
            Column() {
            }.width(120).height(20).borderRadius(10).backgroundColor('#E4234B')
          }
          .width(350)
          .height(20)
          .alignItems(HorizontalAlign.Start)
          .borderRadius(10)
          .backgroundColor('#979797')

          // 播放控制
          Row() {
            Image($r('app.media.ic_up')).width(36).height(36)
            Image(this.playIconSrc)
              .onClick(e => {
                this.playStatus = !this.playStatus
                this.playIconSrc = this.playStatus ? $r('app.media.ic_play') : $r('app.media.ic_stop')
              })
              .width(60)
              .height(60)
              .animation({
                duration: 3500,
                curve: Curve.EaseOut,
                playMode: PlayMode.Normal
              })
            Image($r('app.media.ic_down')).width(36).height(36)
          }.width(350).alignItems(VerticalAlign.Center).justifyContent(FlexAlign.SpaceAround).margin({ top: 40 })

        }.margin({ top: 40 })
      }
    }.width('100%').height('100%').backgroundColor($r('app.color.base_background'))
  }
}