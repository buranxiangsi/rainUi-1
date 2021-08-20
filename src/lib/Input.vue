<template>
  <div class="raindrop-input-wrapper">
    <input class="raindrop-input"
           :class="classes"
           :disabled="disabled"
           :placeholder="placeholder"
           :clearable="clearable"
           :value="value"
    />
    <span>
       <i v-if="clearable" class="raindrop-input-icon" @click="showClear"><slot/></i>
    </span>

  </div>

</template>

<script lang="ts">
import { computed } from "vue";

export default {
  props:{
    disabled:{
      type: Boolean,
      default: false,
    },
    clearable:{
      type: Boolean,
      default: false,
    },
    size:{
      type: String,
      default:'normal'
    },
    placeholder:String,
    value: String
  },
  setup(props){
    const { size } = props
    const classes = computed(()=>{
      return {
        [`raindrop-size-${size}`]: size,
      }
    })

    const showClear=()=>{
    }

    return {
      classes,
      showClear,
    }
  }

}
</script>

<style lang="scss">
$borderColor:#40aaff;
$border-color: #dcdfe6;
$border-radius: 4px;
$grey: grey;
.raindrop-input-wrapper{
  display: inline-block;
  margin-right: 10px;
  .raindrop-input{
    width: 200px;
    height: 35px;
    padding:10px 18px;
    border: 1px solid $border-color;
    border-radius: $border-radius;
    margin: 10px 0;
    &[disabled]{
      cursor: not-allowed;
      color: $grey;
    }
    &[disabled]:hover{
      border-color: $border-color;
    }
  }
  .raindrop-size-big{
    width: 200px;
    height: 50px;
  }
  .raindrop-size-small{
    width: 120px;
    height: 30px;
  }
  input:focus{
    outline: none;
    border: 1px solid $borderColor;
  }
  input:hover{
    outline: none;
    border: 1px solid $borderColor;

  }
  .raindrop-input-icon{
    display: inline-block;
    position: relative;
    margin:0 2px;
    top: -4px;
    right: 17px;
    height: 1px;
    width: 10px;
    outline: none;
    border: 1px solid $grey;
    background: $grey;
  }
}


</style>