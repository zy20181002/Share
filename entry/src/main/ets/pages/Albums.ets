import { SearchBar } from '../components/searchBar'

@Entry
@Component
export struct Albums {
  @State playStatus: boolean = true
  @State playIconSrc: any = $r('app.media.ic_play')

  build() {
    Text('Albums')
  }
}