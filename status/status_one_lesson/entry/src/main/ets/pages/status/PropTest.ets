import { DEFAULT } from '@ohos/hypium'

@Component
export default struct PropTest{
 @Prop value:string="";
 build() {
    Row(){
      Text(this.value);
    }
 }
}