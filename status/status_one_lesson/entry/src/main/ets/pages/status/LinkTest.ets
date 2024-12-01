import {Person} from "../Index"

@Component
export default struct LinkTest {

  @Link value:Person
  build() {
     Column(){
       Text(this.value.name)
       Button("Change").onClick(()=>{
         this.value.name = "Parent"
       })

     }
  }
}