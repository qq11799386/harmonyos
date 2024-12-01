import PropTest from './status/PropTest';
import LinkTest from './status/LinkTest'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State LinkStr:String = "childComponent";
  @State LinkObj:Person = {name:"Ethan",age:27}
  build() {
    Column(){
       Button(){
         Text(){
           Span("Click")
           Span("Me")
         }
       }
       .width(135)
       .height(65)
       .borderRadius(10)
       .type(ButtonType.Normal)
       .onClick(()=>{
          this.message = "I'm Clicked"
        })
      PropTest({value:this.message})


      Button(this.LinkObj.name)
        .borderRadius(5)
        .type(ButtonType.Normal)
        .onClick(()=>{
          this.LinkObj.name = "child"
        })

      LinkTest({value:this.LinkObj}).margin({top:15})

    }.alignItems(HorizontalAlign.Center)
    .width("100%")
  }
}


export class  Person{
 name?:string;
 age?:number;
}



// @State：
// @State装饰的变量拥有其所属组件的状态，可以作为其子组件单向和双向同步的数据源。当其数值改变时，会引起相关组件的渲染刷新。
// @Prop：
// @Prop装饰的变量可以和父组件建立单向同步关系，@Prop装饰的变量是可变的，但修改不会同步回父组件。
// @Link：
// @Link装饰的变量可以和父组件建立双向同步关系，子组件中@Link装饰变量的修改会同步给父组件中建立双向数据绑定的数据源，父组件的更新也会同步给@Link装饰的变量。