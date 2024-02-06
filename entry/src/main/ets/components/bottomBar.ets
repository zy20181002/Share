enum ACTIVE {
  DISCOVER,
  ALBUMS,
  MY_SONGS,
  PROFILE,
}

@Component
export struct BottomBar {
  @Link currentActive: 'discover' | 'albums' | 'mySongs' | 'profile'
  @State active: number = ACTIVE.DISCOVER;

  build() {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceAround }) {
      Column() {
        Image(this.currentActive === 'discover' ? $r('app.media.ic_menu2_active') : $r('app.media.ic_menu2'))
          .width(24)
          .height(24)
        Text('DISCOVER')
          .fontSize(14)
          .fontColor(this.currentActive === 'discover' ? $r('app.color.color_red') : $r('app.color.color_white'))
      }.onClick(e => {
        this.currentActive = 'discover'
      })

      Column() {
        Image(this.currentActive === 'albums' ? $r('app.media.ic_zhuanji_active') : $r('app.media.ic_zhuanji'))
          .width(24)
          .height(24)
        Text('ALBUMS')
          .fontSize(14)
          .fontColor(this.currentActive === 'albums' ? $r('app.color.color_red') : $r('app.color.color_white'))
      }.onClick(e => {
        this.currentActive = 'albums'
      })

      Column() {
        Image(this.currentActive === 'mySongs' ? $r('app.media.ic_music_active') : $r('app.media.ic_music'))
          .width(24)
          .height(24)
        Text('MY SONGS')
          .fontSize(14)
          .fontColor(this.currentActive === 'mySongs' ? $r('app.color.color_red') : $r('app.color.color_white'))
      }.onClick(e => {
        this.currentActive = 'mySongs'
      })

      Column() {
        Image(this.currentActive === 'profile' ? $r('app.media.ic_user_active') : $r('app.media.ic_user'))
          .width(24)
          .height(24)
        Text('PROFILE')
          .fontSize(14)
          .fontColor(this.currentActive === 'profile' ? $r('app.color.color_red') : $r('app.color.color_white'))
      }.onClick(e => {
        this.currentActive = 'profile'
      })
    }
    .position({ x: 0, y: 750 })
    .width('100%')
    .height(83)
    .backgroundImage('#00000040')
    .backdropBlur(10)
  }
}