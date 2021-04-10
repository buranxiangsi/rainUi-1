<template>
  <div>Button示例</div>
  <h1>示例</h1>
  <Button>你好</Button>
  <Button theme="button">button</Button>
  <Button theme="link">link</Button>
  <Button theme="text">text</Button>
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