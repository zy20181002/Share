import { CusTabs } from '../components/cusTabs'

type MUSIC_ITEM = {
  img: string,
  label: string,
  desc: string,
  releaseDate: string
}
type MUSIC_TYPE_ITEM = {
  key: string,
  label: string
}

function genMusicList(label: string ): MUSIC_ITEM[] {
  const arr = []
  for (let index = 0; index < 20; index++) {
    arr.push({
      img: $r('app.media.list_img5'),
      label: `${label} ${index + 1}`,
      desc: `这是${label}第${index + 1}首音乐`,
      releaseDate: '2022-10-1'
    })
  }
  return arr
}

@Component
export struct Albums {
  @State playStatus: boolean = true
  @State playIconSrc: any = $r('app.media.ic_play')
  // tabList
  @State @Watch('updateActiveKey') currentTabActive:number  = 0
  @State tabList: MUSIC_TYPE_ITEM[] = [
    {
      key: 'all',
      label: 'All'
    },
    {
      key: 'china',
      label: 'China'
    },
    {
      key: 'us',
      label: 'USA'
    }
  ]
  @State currentActiveItem: MUSIC_TYPE_ITEM= this.tabList[this.currentTabActive]
  @State mockListData: MUSIC_ITEM[] = genMusicList(this.currentActiveItem.label)
  @State mockListDataLen: number = this.mockListData.length - 1

  updateActiveKey(propName: string) {
    console.log('currentTabActive::::', this.currentTabActive);
    this.currentActiveItem = this.tabList[this.currentTabActive]
    this.mockListData = genMusicList(this.currentActiveItem.label)
    console.log('mockListData::::', JSON.stringify(this.mockListData));
  }

  build() {
    Column() {
      CusTabs({ data: this.tabList , active: this.currentTabActive})
      List() {
        ForEach(this.mockListData, (item, index) => {
          ListItem() {
            Row() {
              Image(item.img).width(100).height(100).borderRadius(10)
              Column() {
                Text(item.label).fontSize(24).fontColor($r('app.color.color_white')).fontWeight(800)
                Text(item.desc).fontSize(20).fontColor($r('app.color.color_white'))
                Text(item.releaseDate).fontSize(20).fontColor($r('app.color.color_white'))
              }.margin({ left: 20 }).alignItems(HorizontalAlign.Start)
            }.margin({ bottom: 20 })
          }.margin({
            bottom: index < this.mockListDataLen ? 0 : 120
          })
        })

      }
    }
  }
}