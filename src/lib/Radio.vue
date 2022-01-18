<template>
<label class="raindrop-radio">
  <span class="raindrop-input">
    <span class="raindrop-input-inner">
    </span>
     <input type="radio" 
            class="raindrop-input-original"
            

            
      />
  </span>
  <span><slot></slot></span>
</label>

</template>

<script lang="ts">
// import { computed } from "vue"
export default {
  props:{
  },
  setup(){
  },
}
</script>

<style lang="scss">
.raindrop-radio {
    margin-right: 30px;
    border: 1px solid red;
    line-height: 1;
    position: relative;
    display: inline-block;
    white-space: nowrap;
    cursor: pointer;
    font-weight: 500;
    .raindrop-input{
      white-space: nowrap;
      line-height: 1;
      cursor: pointer;
      display: inline-block;
      position: relative;
      vertical-align: middle;
      margin-right: 10px;
    
      .raindrop-input-inner{
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
      .raindrop-input-original{
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