<template>
  <div class="raindrop-input-wrapper">
    <input class="raindrop-input"
           :class="classes"
           :disabled="disabled"
           :placeholder="placeholder"



    />
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

  },
  setup(props){
    const { size } = props
    const classes = computed(()=>{
      return {
        [`raindrop-size-${size}`]: size,
      }
    })
    return { classes }
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
    width: 160px;
    height: 35px;
    padding:10px 14px;
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
    height: 25px;
  }
  input:focus{
    outline: none;
    border: 1px solid $borderColor;
  }
  input:hover{
    outline: none;
    border: 1px solid $borderColor;

  }


}


</style>