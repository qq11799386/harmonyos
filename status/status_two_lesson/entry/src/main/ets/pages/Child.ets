import { Son } from './Index';

@Component
export default struct Child {
  @ObjectLink son: Son;

  build() {
    Row() {
      Column() {
        Text(`name: ${this.son.name} age: ${this.son.age}`)
         Button("increase")
            .onClick(() => {
              this.son.age++;
            })
        }
        .width('100%')
    }
    .height('100%')
  }
}