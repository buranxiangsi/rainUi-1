<template>
<label :class="wrapClass"  >
  <span :class="radioClass">
    <span :class="innerClass"></span>
     <input type="radio" 
            :class="inputClass"
         
            
            

            
      />
  </span>
  <span><slot></slot></span>
</label>

</template>

<script lang="ts">
import { computed } from "vue"
export default {
  props:{
    label:{},
    value: {},
    modelValue:[String, Number, Boolean],
    checked:Boolean,
    trueValue:{
      type: Boolean,
      default: true
    },
    falseValue:{
      type: Boolean,
      default: false
    }
    
    

  },
  setup(props,context){
    console.log(props)
    const prefixCls = 'raindrop-radio'
    const wrapClass = computed(()=>{
      return[
        `${prefixCls}-wrapper`,
        {
        }
      ]
    })
    const radioClass = computed(()=>{
      return [
        `${prefixCls}`,
        {
        }
      ]
    })
    const innerClass = computed(()=>{
      return [
        `${prefixCls}-inner`,
        {[`${prefixCls}-inner-checked`]:props.trueValue,}
      ]
    })
    const inputClass = computed(()=>{
      return [
        `${prefixCls}-input`
      ]
    })
  }
}
</script>

<style lang="scss">
.raindrop-radio-wrapper {
    margin-right: 30px;
    line-height: 1;
    position: relative;
    display: inline-block;
    white-space: nowrap;
    cursor: pointer;
    font-weight: 500;
    .raindrop-radio{
      white-space: nowrap;
      line-height: 1;
      cursor: pointer;
      display: inline-block;
      position: relative;
      vertical-align: middle;
      margin-right: 10px;
      .raindrop-radio-inner{
        position: relative;
        border-radius: 100%;
        border: 1px solid #dcdfe6;
        width: 14px;
        height: 14px;
        background-color: #fff;
        cursor: pointer;
        display: inline-block;
        transition: all .2s ease-in-out;
      }
      .raindrop-radio-inner-checked{
        border:5px solid rgb(24, 144, 255);
      }
      .raindrop-radio-input{
        opacity: 0;
        outline: none;
        position: absolute;
        z-index: -1;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        margin: 0;


      }
    } 
    
}


</style>