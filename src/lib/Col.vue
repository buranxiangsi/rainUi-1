<template>
 <div :span="span" class="raindrop-col" :class="classes">
  <slot>
 </div>
 
</template>

<script lang="ts">
import {computed} from "vue"
export default {
  props:{
    span:{
      type: Number,
      default: 24
    }
  },
   setup(props){
    const { span} = props
    const classes = computed(()=>{
      return {
        
        [`raindrop-col-${span}`]: span,
      }
    })
    return { classes }
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
</style>