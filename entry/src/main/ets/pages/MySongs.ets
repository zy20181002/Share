import { SearchBar } from '../components/searchBar'

@Entry
@Component
export struct MySongs {
  @State playStatus: boolean = true
  @State playIconSrc: any = $r('app.media.ic_play')

  build() {
    Text('MySongs')
  }
}