import DialogRegister from "../DialogRegister"
import { TipsDialog } from "@kit.ArkUI";

@Component
export  default  struct UnderSection  {
  @State userInfo:UserInfo = new UserInfo();
  cancel:()=>void = ()=>{
    this.dialog.close();
  };
  submit:(userInfo:UserInfo)=>void = (userInfo:UserInfo)=>{
    console.log(JSON.stringify(userInfo));
  };

  dialog:CustomDialogController = new CustomDialogController({
    // builder:DialogRegister({
    //   userinfo:this.userInfo,
    //   cancel:this.cancel.bind(this),
    //   submit:this.submit.bind(this)
    // }),
    builder:TipsDialog({title:"tipsDialog",content:"this is a dialog"}),
    width:"80%",
    cancel:this.cancel,
    autoCancel:false,



  })

  build() {
    Column(){
      Row({space:10}){
            Text(){
              Span("还没有账号？")
              Span("立即注册")
                .fontColor(Color.Blue)
                .onClick(()=>{
                  this.dialog.open();
                })
            }

      }
    }.width("100%")
     .height(30)
  }
}

// export interface  Userinfo{
//   user:string
//   password:string
// }

export class UserInfo{
  user?:string
  password?:string


}

