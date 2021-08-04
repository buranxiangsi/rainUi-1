<demo>
尺寸
</demo>
<template>
  <div>
    <Input v-model="input3" size="big" placeholder="big input" />
    <Input v-model="input4" size="normal" placeholder="normal input" />
    <Input v-model="input5" size="small" placeholder="small input" />
  </div>
</template>

<script lang="ts">
import Input from "../lib/Input.vue";
export default {
  data(){
    return{
      input3:"",
      input4:"",
      input5:""
    }
  },
  components: {
    Input,
  },
}
</script>