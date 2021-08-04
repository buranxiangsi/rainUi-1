<demo>
禁止使用
</demo>
<template>
  <div>
    <Input v-model="input2" placeholder="请输入内容" disabled/>
  </div>
</template>

<script lang="ts">
import Input from "../lib/Input.vue";
export default {
  components: {
    Input,
  },
  data(){
    return{
      input2:''
    }
  }
}
</script>