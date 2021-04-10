<template>
  <div>Button示例</div>
  <h1>示例1</h1>
  <Button theme="button">button</Button>
  <Button theme="link">link</Button>
  <Button theme="text">text</Button>
  <h1>示例2</h1>
  <Button size="big">big</Button>
  <Button >normal</Button>
  <Button size="small">small</Button>
</template>

<script lang="ts">
import Button from "../lib/Button.vue"
export default {
  components:{Button},
}
</script>