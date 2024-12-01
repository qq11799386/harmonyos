import Child from "./Child";

@Entry
@Component
struct Index {
  @State father: Father = new Father("John", 8);

  build() {
    Column() {
      //父组件容器不会被重新渲染
      Text(`name: ${this.father.son.name} age: ${this.father.son.age}`)
      Child({son: this.father.son})
    }
  }
}

@Observed
export  class Father {
  son: Son;

  constructor(name: string, age: number) {
    this.son = new Son(name, age);
  }
}
@Observed
export  class Son {
  name: string;
  age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }
}