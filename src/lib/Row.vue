import { computed } from "vue"
<template>
<div class="raindrop-input-wrapper">
 <div class="raindrop-row"><slot></div>
</div>
 
</template>

<script lang="ts">
export default {
  props:{

  },
}
</script>c

<style lang="scss">
.raindrop-input-wrapper{
  display: inline;
  margin-right: 10px;
  .raindrop-row {
  box-sizing: border-box;
}
}

</style>