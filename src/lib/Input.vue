<template>
  <div class="raindrop-input-wrapper">
    <input class="raindrop-input"
           :class="classes"
           :disabled="disabled"
           :placeholder="placeholder"
           :clearable="clearable"
           :value="modelValue"
           @input="onInput"
    />
    <Button v-if="clearable" class="raindrop-input-button" @click="onClick">清除</Button>
  </div>

</template>

<script lang="ts">
import { computed } from "vue";
import Button from "./Button.vue";

export default {
  components: {Button},
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
    placeholder:{type:String},
    modelValue: {type:String},
    onClick:{type:Function},
    onInput:{type:Function}

  },
  // emits:['update:modelValue'],
  setup(props,context){
    const { size } = props
    const classes = computed(()=>{
      return {
        [`raindrop-size-${size}`]: size,
      }
    })
    const onInput = (e)=>{
      context.emit('update:modelValue', e.target.value)
    }
    const onClick=(e)=>{
      context.emit('update:modelValue', e.target.value)
    }
    return {
      classes,
      onClick,
      onInput
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
  .raindrop-input-button{
    display: inline-block;
    margin-left: 10px ;
    height: 34px;
    line-height: 20px;
    font-size: 15px;
  }
}


</style>