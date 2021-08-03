<demo>
禁止使用
</demo>
<template>
  <div>
    <Input placeholder="请输入内容" :disabled="true"/>
  </div>
</template>

<script lang="ts">
import Input from "../lib/Input.vue";
export default {
  components: {
    Input,
  }
}
</script>