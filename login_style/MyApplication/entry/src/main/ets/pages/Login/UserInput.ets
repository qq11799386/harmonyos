import { UserInfo } from "./UnderSection"

@Component
export  default  struct UserInput {

  @State userinfo:UserInfo = new UserInfo();
  submit:(userinfo:UserInfo)=>void = (userinfo:UserInfo)=>{
     this.userinfo;
  }

  build() {
    Column({space:10}){
      TextInput({placeholder:"邮箱"})
        .width("100%")
        .height("50")
        .borderRadius(5)
        .backgroundColor("#f6f8fa")
      TextInput({placeholder:"密码"})
        .width("100%")
        .height("50")
        .borderRadius(5)
        .backgroundColor("#f6f8fa")
        .type(InputType.Password)
        .margin({top:"15px"})
      Row({space:10}){
        Checkbox()
          .shape(CheckBoxShape.ROUNDED_SQUARE)
          .selectedColor("#564bd9")
          .unselectedColor("#564bd9")
        Text("记住我")
          .fontColor("#564bd9")
        Blank()
        Text("忘记密码")
          .fontColor("#564bd9")
      }.width("100%")

      Button("登录")
        .width("100%")
        .height("50")
        .backgroundColor("#564bd9")
        .type(ButtonType.Normal)
        .borderRadius(5)

      Row({space:20}){
        Divider()
          .layoutWeight(2)
        Text("第三方账号登录")
        Divider()
          .layoutWeight(2)
      }.margin({top:50})
      Row(){

        Button(){
          Image($r("app.media.qq"))
            .width(50)
            .interpolation(ImageInterpolation.High)
        }.backgroundColor(Color.Transparent)
        Button(){
          Image($r("app.media.vx"))
            .width(50)
            .interpolation(ImageInterpolation.High)
        }.backgroundColor(Color.Transparent)
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .alignItems(VerticalAlign.Center)
      .width("100%")
      .height("30%")






    }.height("70%")
     .width("100%")
    .margin({top:"25%"})
  }
}

