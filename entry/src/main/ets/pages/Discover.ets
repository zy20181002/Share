import router from '@ohos.router';

@Component
export struct Discover {

  // tabs
  @State currentIndex: number = 0
  @State selectedFontColor: string = '#E4234B'
  @State fontColor: string = '#ffffff'
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 800 : 400)
        .lineHeight(22)
        .margin({ top: 20, bottom: 5 })
        .animation({
          duration: 0.5,
        })
      Divider()
        .width(this.currentIndex === index ? 40 : 0)
        .strokeWidth(4)
        .borderRadius(4)
        .color(this.currentIndex === index ? this.selectedFontColor : '#000000')
        .animation({
          duration: 0.5,
        })
    }.width('100%')
  }
  // OurChoisesList
  @State OurChoisesList: any[] = [
    {
      key: 'Songs',
      data: [
        {
          img: $r('app.media.list_img5'),
          title: 'Counting Stars1',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img5'),
          title: 'Counting Stars2',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img5'),
          title: 'Counting Stars3',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img5'),
          title: 'Counting Stars4',
          desc: 'Onerepublic • Native'
        },
      ]
    },
    {
      key: 'Playlists',
      data: [
        {
          img: $r('app.media.list_img2'),
          title: 'Playlists Stars1',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img2'),
          title: 'Playlists Stars2',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img2'),
          title: 'Playlists Stars3',
          desc: 'Onerepublic • Native'
        },
        {
          img: $r('app.media.list_img2'),
          title: 'Playlists Stars4',
          desc: 'Onerepublic • Native'
        },
      ]
    }
  ]

  build() {
    List() {
      ListItem() {
        Column() {
          Text('Hot Recommended').fontSize(26).fontColor($r('app.color.color_white'))
          List() {
            ListItem() {
              Column() {
                Image($r('app.media.list_img1'))
                  .width(250)
                  .height(120)
                  .borderRadius(10)
                  .margin({ bottom: 10 })
                Text('Sound Of Water')
                  .fontSize(24)
                  .fontColor($r('app.color.color_white'))
                Text('Denise Brewer')
                  .fontSize(20)
                  .fontColor($r('app.color.color_white'))
              }.alignItems(HorizontalAlign.Start)
            }.margin({ right: 20 }).onClick(e => {
              router.pushUrl({ url: 'pages/DiscoverDetail' })
            })

            ListItem() {
              Column() {
                Image($r('app.media.list_img1'))
                  .width(250)
                  .height(120)
                  .borderRadius(10)
                  .margin({ bottom: 10 })
                Text('Sound Of Water')
                  .fontSize(24)
                  .fontColor($r('app.color.color_white'))
                Text('Denise Brewer')
                  .fontSize(20)
                  .fontColor($r('app.color.color_white'))
              }.alignItems(HorizontalAlign.Start)
            }.margin({ right: 20 }).onClick(e => {
              router.pushUrl({ url: 'pages/DiscoverDetail' })
            })
          }.listDirection(Axis.Horizontal).alignListItem(ListItemAlign.Center)
        }.height(240).alignItems(HorizontalAlign.Start)
      }

      ListItem() {
        Column() {
          Row() {
            Text('Hot Playlists').fontSize(26).fontColor($r('app.color.color_white'))
            Text('View All')
              .textAlign(TextAlign.Center)
              .fontSize(12)
              .fontColor($r('app.color.color_black'))
              .width(66)
              .height(22)
              .borderRadius(11)
              .backgroundColor($r('app.color.color_white'))
          }.width('100%').justifyContent(FlexAlign.SpaceBetween).alignItems(VerticalAlign.Center)

          Grid() {
            GridItem() {
              Column() {
                Image($r('app.media.list_img2')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({ top: 10 })
              }.alignItems(HorizontalAlign.Start)
            }

            GridItem() {
              Column() {
                Image($r('app.media.list_img3')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({ top: 10 })
              }.alignItems(HorizontalAlign.Start)
            }

            GridItem() {
              Column() {
                Image($r('app.media.list_img4')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({ top: 10 })
              }.alignItems(HorizontalAlign.Start)
            }

            GridItem() {
              Column() {
                Image($r('app.media.list_img5')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({ top: 10 })
              }.alignItems(HorizontalAlign.Start)
            }
          }
          .width('100%')
          .height(400)
          .columnsTemplate('1fr 1fr')
          .rowsTemplate('1fr 1fr')
          .columnsGap(5)
          .rowsGap(5)
        }.alignItems(HorizontalAlign.Start)
      }.margin({ top: 20 })

      ListItem() {
        Column() {
          Text('Our Choises For You').fontSize(26).fontColor($r('app.color.color_white')).margin({ top: 20 })
          Column() {
            Tabs({ barPosition: BarPosition.Start }) {
              ForEach(this.OurChoisesList, (item, index) => {
                TabContent() {
                  List() {
                    ForEach(item.data, childItem => {
                      ListItem() {
                        Row() {
                          Image(childItem.img).width(60).height(60)

                          Column() {
                            Text(childItem.title)
                              .fontSize(18)
                              .fontWeight(800)
                              .fontColor($r('app.color.color_white'))
                              .margin({ bottom: 10 })
                            Text(childItem.desc).fontSize(16).fontWeight(200).fontColor($r('app.color.color_white'))
                          }.flexGrow(1).alignItems(HorizontalAlign.Start).margin({ left: 15, right: 15 })

                          Column() {
                            Image($r('app.media.ic_aixin')).width(20).width(20).margin({ bottom: 10 })
                            Text('120').fontSize(16).fontWeight(200).fontColor($r('app.color.color_white'))
                          }.width(40).alignItems(HorizontalAlign.Start)
                        }.width('100%').alignItems(VerticalAlign.Center).justifyContent(FlexAlign.SpaceBetween)
                      }.margin({ top: 15 })
                    })
                  }
                }.tabBar(this.TabBuilder(index, item.key)).borderColor($r('app.color.color_white'))
              })
            }.barHeight(80).onChange((index: number) => {
              this.currentIndex = index
            }).margin({bottom: 80})
          }.width('100%').height(400)
        }.width('100%').alignItems(HorizontalAlign.Start)
      }
    }
  }
}