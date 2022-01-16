<template>
 <div class="raindrop-row"  :style="styles"><slot></slot></div>
</template>

<script lang="ts">
import { computed } from "vue"
export default {
  props:{
    gutter:Number,
  },
  // computed: {
  //   styles(){
  //     let style ={}
  //     if(this.gutter){
  //       style = {
  //         marginLeft: this.gutter / -2 + 'px',
  //         marginRight: this.gutter / -2 + 'px'
  //       }
  //     }
  //     return style
  //   }
  // },
  setup(props){
    const {gutter} = props
    const styles = computed(()=>{
      const style:any = {}
      if(gutter){
        // 计算间距
        style.marginLeft = gutter / -2 + 'px';
        style.marginRight = style.marginLeft;
      }
      return style
    })
    return {styles}
  }

}
</script>

<style lang="scss">
.raindrop-row {
  display: -webkit-box;
  
  }
</style>