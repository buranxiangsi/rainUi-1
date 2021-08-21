<demo>
清空
</demo>
<template>
  <div>
    <Input v-model="input" clearable placeholder="请输入内容"/>
  </div>
</template>

<script lang="ts">
import { Input } from "../lib/index";
export default {

  data(){
    return{
      input:"Hello World",
    }
  },
  components: {
    Input,
  },

}
</script>
