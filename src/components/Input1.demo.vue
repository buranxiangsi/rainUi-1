<demo>
常规使用
</demo>
<template>
  <div>
    <Input v-model="input" placeholder="请输入内容"/>
  </div>
</template>

<script lang="ts">
import { Input } from "../lib/index";
export default {
  components: {
    Input,
  },
  data(){
    return{
      input:''
    }
  }

}
</script>