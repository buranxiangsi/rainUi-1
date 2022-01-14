<template>
  <h1>Layout 布局</h1>
  <Demo :component="LayoutDemo1" />
</template>

<script lang="ts">
import Demo from "./Demo.vue";
import LayoutDemo1 from "./Layout1.demo.vue"
export default {
  components:{Demo, },
  setup(){
    return {
      LayoutDemo1,
    }
  }
}
</script>