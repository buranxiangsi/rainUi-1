<template>
 <div :span="span" 
      :offset="offset"
      class="raindrop-col" 
      :class="classes" 
      :style="styles"
      >
  <slot></slot>
 </div>
 
</template>

<script lang="ts">
import {computed} from "vue"
export default {
  props:{
    span:{
      type: Number,
      default: 0
    },
    offset:Number

    
    
  },
  setup(props){
    const { span, offset} = props
    
    const classes = computed(()=>{
      return {
        [`raindrop-col-${span}`]: span,
        [`raindrop-col-offset-${offset}`]: offset,

      }
    })
    // const gutter =computed(()=>{
    //   console.log(props)
    // })
    // const styles = computed((gutter)=>{
    //   const style:any = {}
    //   if(gutter!=0){
    //     style.paddingLeft=gutter / 2 + 'px';
    //      style.paddingRight=gutter / 2 + 'px';
    //   }
     
    //   return style
    // })
    return { classes }
  },
  computed:{
    gutter(){
      // 获取父组件props.gutter值
      let parent = this.$parent.gutter;
      
      return parent 
    },
    styles(){
      const style:any={}
      if(this.gutter !=0){
        style.paddingLeft = this.gutter / 2 +'px';
        style.paddingRight = style.paddingLeft;
      }
      return style
    }
  },
  
  
  
}
</script>

<style lang="scss">
.raindrop-col{
 border-radius: 4px;
 float: left;
 box-sizing: border-box;
}
.raindrop-col-24{
  width:100%;
}
.raindrop-col-16{
  width:66.6666%;
}
.raindrop-col-12{
  width:50%;
}
.raindrop-col-8{
  width:33.3333%;
}
.raindrop-col-6{
  width:25%;
}
.raindrop-col-4{
  width: 16.667%;
}
.raindrop-col-offset-6{
  margin-left: 25%;
  
}
</style>