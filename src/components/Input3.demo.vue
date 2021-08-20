<demo>
尺寸
</demo>
<template>
  <div>
    <Input v-model="input1" size="big" placeholder="big input" />
    <Input v-model="input2" size="normal" placeholder="normal input" />
    <Input v-model="input3" size="small" placeholder="small input" />
  </div>
</template>

<script lang="ts">
import { Input } from "../lib/index";
export default {
  data(){
    return{
      input1:"",
      input2:"",
      input3:"",
    }
  },
  components: {
    Input,
  },
}
</script>