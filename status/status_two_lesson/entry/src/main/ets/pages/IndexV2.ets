import Child from "./ChildV2";

//层级嵌套引发的问题
//使用ComponentV2  @ObservedV2  把需要监控的参数前添加 @Trace  就可以实现监视参数并自动渲染组件


@Entry
@ComponentV2
struct IndexV2 {
  @Local father: Father = new Father("John", 8);

  build() {
    Column() {
      Text(`name: ${this.father.son.name} age: ${this.father.son.age}`)
      Child({father: this.father})
    }
  }
}

@ObservedV2
export  class Father {
  son: Son;

  constructor(name: string, age: number) {
    this.son = new Son(name, age);
  }
}
@ObservedV2
export  class Son {
  @Trace name: string;
  @Trace age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }
}