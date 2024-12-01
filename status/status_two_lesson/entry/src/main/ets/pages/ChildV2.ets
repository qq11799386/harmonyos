import { Son,Father } from './IndexV2';

@ComponentV2
export default struct Child {
 @Param  father: Father = new Father("John", 8);

  build() {
    Row() {
      Column() {
        Text(`name: ${this.father.son.name} age: ${this.father.son.age}`)
        Button("increase")
          .onClick(() => {
            this.father.son.age++;
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}