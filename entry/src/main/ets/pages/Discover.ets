@Component
export struct Discover {
  build() {
    List() {
      ListItem() {
        Column() {
          Text('Hot Recommended').fontSize(26).fontColor($r('app.color.color_white'))
          List() {
            ListItem() {
                Column(){
                  Image($r('app.media.list_img1'))
                    .width(250)
                    .height(120)
                    .borderRadius(10)
                    .margin({bottom: 10})
                  Text('Sound Of Water')
                    .fontSize(24)
                    .fontColor($r('app.color.color_white'))
                  Text('Denise Brewer')
                    .fontSize(20)
                    .fontColor($r('app.color.color_white'))
                }.alignItems(HorizontalAlign.Start)
            }.margin({right: 20})
            ListItem() {
              Column(){
                Image($r('app.media.list_img1'))
                  .width(250)
                  .height(120)
                  .borderRadius(10)
                  .margin({bottom: 10})
                Text('Sound Of Water')
                  .fontSize(24)
                  .fontColor($r('app.color.color_white'))
                Text('Denise Brewer')
                  .fontSize(20)
                  .fontColor($r('app.color.color_white'))
              }.alignItems(HorizontalAlign.Start)
            }.margin({right: 20})
          }.listDirection(Axis.Horizontal).alignListItem(ListItemAlign.Center)
        }.height(240).alignItems(HorizontalAlign.Start)
      }

      ListItem() {
        Column(){
          Text('Hot Playlists').fontSize(26).fontColor($r('app.color.color_white'))
          Grid( ) {
            GridItem() {
              Column() {
                Image($r('app.media.list_img2')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img3')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img4')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img5')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
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
      }.margin({top: 20})

      ListItem() {
        Column(){
          Text('Hot Playlists').fontSize(26).fontColor($r('app.color.color_white'))
          Grid( ) {
            GridItem() {
              Column() {
                Image($r('app.media.list_img2')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img3')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img4')).width(142).height(142).borderRadius(10)
                Text('My Classic List').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
              }.alignItems(HorizontalAlign.Start)
            }
            GridItem() {
              Column() {
                Image($r('app.media.list_img5')).width(142).height(142).borderRadius(10)
                Text('Summer Playlist').fontColor($r('app.color.color_white')).fontSize(18).margin({top: 10})
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
      }.margin({top: 20})
    }
  }
}