import UnderSection from "./UnderSection";
import UserInput from "./UserInput"

@Component
export default  struct LoginIndex {
  build() {
    Column(){
        Text("账号登录")
          .fontColor("#3c4965")
          .fontSize(28)
        Text("请登录以获得独家XX服务")
          .fontColor("#a7a7a7")
          .fontSize(14)
          .margin({top:"20px"})
      UserInput();
      UnderSection();
    }
    .padding({left:"8%",right:"8%",bottom:"3%",top:"8%"})
    .width("100%")
    .height("100%")
    .alignItems(HorizontalAlign.Center)
  }
}