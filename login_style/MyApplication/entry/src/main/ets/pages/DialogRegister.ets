import { UserInfo } from "./Login/UnderSection";


@CustomDialog
export  default struct DialogRegister {
  dialog:CustomDialogController;
  @Link  userinfo:UserInfo;
  submit:(userInfo:UserInfo)=>void = (userInfo:UserInfo)=>{};
  cancel:()=>void = ()=>{};
  build() {

    Column({space:10}){
        TextInput({placeholder:"请输入用户名",text: this.userinfo.user})
          .onChange((value:string)=>{
            this.userinfo.user = value;
          })
          .borderRadius(5)
        TextInput({placeholder:"请输入密码",text:this.userinfo.password})
          .type(InputType.Password)
          .borderRadius(5)
          .onChange((value:string)=>{
            this.userinfo.password = value;
          })

       Row(){
          Button("Cancel")
            .onClick(()=>{
             this.cancel();
            })
          Button("Submit")
            .onClick(()=>{
              //提交到前台注册
              this.submit(this.userinfo);
            })
       }.justifyContent(FlexAlign.SpaceEvenly)
        .width("100%")
    }.padding(15)


  }
}


