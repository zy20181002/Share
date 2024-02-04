import { BottomBar } from '../components/bottomBar'
import {SearchBar} from '../components/searchBar'
import {Discover} from './Discover'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      SearchBar()
      Column() {
        Discover()
      }.height(750).width('100%').padding(20)
      BottomBar()
    }
    .width('100%').height('100%').backgroundColor($r('app.color.base_background'))
  }
}