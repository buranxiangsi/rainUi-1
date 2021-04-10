<template>
  <div>Button示例</div>
  <h1>示例</h1>
  <Button @click="onClick"
          @focus="onClick"
          @mouseover="onClick">Hello</Button>
</template>

<script lang="ts">
import Button from "../lib/Button.vue"
export default {
  components:{Button},
  setup(){
    const onClick = ()=>{
      console.log('Hi')
    }
    return{onClick}
  }
}
</script>