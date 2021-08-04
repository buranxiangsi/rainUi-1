<demo>
常规使用
</demo>
<template>
  <div>
    <Input v-model="input1" placeholder="请输入内容"/>
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
      input1:''
    }
  }

}
</script>