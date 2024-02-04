import { SearchBar } from '../components/searchBar'

@Entry
@Component
export struct DiscoverDetail {
  build() {
    Column() {
      SearchBar('Now Playing')
      List() {

      }
    }.width('100%').height('100%').backgroundColor($r('app.color.base_background'))
  }
}