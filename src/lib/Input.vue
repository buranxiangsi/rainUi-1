<template>
  <input class="raindrop-input"/>
</template>

<script lang="ts">
export default {
  props:{
  },
  setup(props){
  },
}
</script>

<style lang="scss">
$borderColor:#40aaff;
$border-color: #dcdfe6;
$border-radius: 4px;
.raindrop-input{
   width: 160px;
   height: 35px;
   padding:10px 14px;
   border: 1px solid $border-color;
   border-radius: $border-radius;
}
input:focus{
  outline: none;
  border: 1px solid $borderColor;
}

</style>