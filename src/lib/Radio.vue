<template>
<label class="raindrop-radio-wrapper" :class="[{'is-checked':model===label},{'disabled':disabled}]" >
  <span class="raindrop-radio" :class="[{'is-checked':model===label},{'disabled':disabled}]">
    <span class="raindrop-radio-inner" :class="[{'is-checked':model===label},{'disabled':disabled}]"></span>
     <input type="radio" 
            class="raindrop-radio-input"
            :value="label"
            v-model="model"
            :disabled = "disabled"
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
    checked:Boolean,
    disabled:Boolean
  },
  computed: {
    model:{
      get(){
        return this.value
      },
      set(val){
        this.$emit('update:value',val)
      }
    }
  },
 
  
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
    .raindrop-radio-inner.is-checked{
        border:5px solid rgb(24, 144, 255);
      }
    .raindrop-radio-inner.disabled{
        background-color: #f5f7fa;
        border-color: #e4e7ed;
        cursor: not-allowed
      }
    
}
.raindrop-radio-wrapper.disabled{
  color: #939393;
  border-color: #e4e7ed;
  cursor: not-allowed
}


</style>