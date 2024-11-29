@Component
export default struct ToolBar{
  aboutToAppear(): void {
  }
  build() {
    Row(){
      Row(){
        Image($r("app.media.headPhoto"))
          .width(60)
          .margin({left:"20%"})
          .borderRadius("50")
      }.width("20%")
      Row(){
        Column(){
          Row(){
            Text("张学友")
              .fontSize(16)
              .textAlign(TextAlign.Start)
              .height("35%")
              .width("80%")
            Text("+关注")
              .fontSize(12)
              .fontColor(Color.Red)
              .border({width:1,color:Color.Red})
              .padding(3)
          }
          Row(){
            Text("张学友（Jacky Cheung），1961年7月10日出生于香港，华语流行乐男歌手、影视演员、作曲人，毕业于香港崇文英文书院。")
              .textAlign(TextAlign.Start)
              .fontSize(12)
              .textOverflow({overflow:TextOverflow.Clip})
              .fontColor("#474747")
          }

        }.width("100%")
        .height("100%")
        .margin({left:"3%"})
        .alignItems(HorizontalAlign.Start)
      }.width("70%")
    }
    .backgroundColor("#f8f8f8")
    .width("100%")
    .height("80")
    .alignItems(VerticalAlign.Center)
  }
}