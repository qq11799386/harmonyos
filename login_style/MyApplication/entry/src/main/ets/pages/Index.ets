import LoginIndex from './Login/LoginIndex';

@Entry
@ComponentV2
struct Index {
  @Local message: string = 'Hello World';
  value:string | number = "12412"
  build() {
    Column(){
      LoginIndex();
    }.width("100%")
    .height("100%")

  }
}