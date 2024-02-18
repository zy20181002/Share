import { SearchBar } from '../components/searchBar'

@Entry
@Component
export struct Profile {
  @State playStatus: boolean = true
  @State playIconSrc: any = $r('app.media.ic_play')

  build() {
    Column() {
      Row() {
        Column(){
          Image($r('app.media.ic_user'))
            .width(60)
            .height(60)
            .borderRadius(30)
        }
        Column() {
          Text('Crazy Zhang').fontSize(20).fontColor($r('app.color.color_white'))
          Text('Crazy Zhang').fontSize(16).fontColor($r('app.color.color_white'))
        }.alignItems(HorizontalAlign.Start).margin({left: 20})
      }
      .width('100%')
      .borderRadius(20)
      .padding(10)
      Divider().strokeWidth(2).color($r('app.color.color_white')).margin({top: 20, bottom: 20})
      Column() {
        Row() {
          Image($r('app.media.ic_account')).width(40).height(40).margin({right: 20})
          Text('Account').fontSize(20).fontColor($r('app.color.color_white'))
        }.alignItems(VerticalAlign.Center).margin({bottom: 20})
        Row() {
          Image($r('app.media.ic_setting')).width(40).height(40).margin({right: 20})
          Text('Setting').fontSize(20).fontColor($r('app.color.color_white'))
        }.alignItems(VerticalAlign.Center).margin({bottom: 20})
        Row() {
          Image($r('app.media.ic_versions')).width(40).height(40).margin({right: 20})
          Text('Version').fontSize(20).fontColor($r('app.color.color_white'))
        }.alignItems(VerticalAlign.Center).margin({bottom: 20})
      }
      .alignItems(HorizontalAlign.Start)
      .width('100%')
      .height(320)
      .backgroundImage('#00000040')
      .backdropBlur(10)

    }
  }
}