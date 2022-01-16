<template>
  <h1>Layout 布局</h1>
  <Demo :component="LayoutDemo1" />
  <Demo :component="LayoutDemo2" />
  <Demo :component="LayoutDemo3" />
  <Demo :component="LayoutDemo4" />


</template>

<script lang="ts">
import Demo from "./Demo.vue";
import LayoutDemo1 from "./Layout1.demo.vue"
import LayoutDemo2 from "./Layout2.demo.vue"
import LayoutDemo3 from "./Layout3.demo.vue"
import LayoutDemo4 from "./Layout4.demo.vue"


export default {
  components:{Demo, },
  setup(){
    return {
      LayoutDemo1,
      LayoutDemo2,
      LayoutDemo3,
      LayoutDemo4,


    }
  }
}
</script>