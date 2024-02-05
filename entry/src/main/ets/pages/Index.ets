import { BottomBar } from '../components/bottomBar'
import { SearchBar } from '../components/searchBar'
import { Discover } from './Discover'
import { Albums } from './Albums'
import { MySongs } from './MySongs'
import { Profile } from './Profile'


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State currentActive: 'discover' | 'albums' | 'mySongs' | 'profile' = 'discover'

  build() {
    Column() {
      SearchBar({ text: '' })
      Column() {
        if (this.currentActive === 'discover') {

          Discover()
        } else if (this.currentActive === 'albums') {
          Albums()
        } else if (this.currentActive === 'mySongs') {
          MySongs()
        } else if (this.currentActive === 'profile') {
          Profile()
        }
      }.height(750).width('100%').padding(20)

      BottomBar({ currentActive: this.currentActive })
    }
    .width('100%').height('100%').backgroundColor($r('app.color.base_background'))
  }
}