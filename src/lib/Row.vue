<template>
 <div class="raindrop-row" :class="classes" :type="type" :style="styles" :justify="justify"><slot></slot></div>
</template>

<script lang="ts">
import { computed } from "vue"
export default {
  props:{
    gutter:Number,
    type:String,
    class:String,
    justify:String
  },
  setup(props){
    const {  gutter, type,justify } = props
    console.log(props)
    const styles = computed(()=>{
      const style:any = {}
      if(gutter){
        // 计算间距
        style.marginLeft = gutter / -2 + 'px';
        style.marginRight = style.marginLeft;
      }
      return style
    })
    const classes = computed(()=>{
      return {
        [`raindrop-row-${type}`]:type,
        [`raindrop-row-justify-${justify}`]:justify,
        [`row-bg`]:props.class,
      }
    })
    
    return {styles,classes}
  }

}
</script>

<style lang="scss">
.raindrop-row {
  display: -webkit-box;
  
  }
.raindrop-row-flex{
  display: flex;
  
}
.raindrop-row-justify-center{
  justify-content:center;
}
.raindrop-row-justify-end{
  justify-content:end;
}
.raindrop-row-justify-space-between{
  justify-content:space-between;
}

.raindrop-row-justify-space-around{
  justify-content:space-around;
}

</style>