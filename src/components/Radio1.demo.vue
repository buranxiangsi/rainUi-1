<demo>
常规用法
</demo>

<template>
  <Radio v-model="radio" label="1">备选项</Radio>
  <Radio v-model="radio" label="2">备选项</Radio>
</template>

<script lang="ts">
import {Radio} from '../lib/index'
export default {
  components: {
    Radio,
  },
  data(){
    return {
      radio:'1'
    }
  }
}
</script>