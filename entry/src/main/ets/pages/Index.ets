import { BottomBar } from '../components/bottomBar'
import {SearchBar} from '../components/searchBar'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      SearchBar()
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor($r('app.color.color_white'))
      }.height(750).width('100%').padding(20)
      BottomBar()
    }
    .width('100%').height('100%').backgroundColor($r('app.color.base_background'))
  }
}