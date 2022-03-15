<demo>
disabled
</demo>

<template>
  <Radio v-model:value="radio" disabled label="禁用">备选项</Radio>
  <Radio v-model:value="radio" disabled label="选中且禁用">备选项</Radio>
</template>

<script lang="ts">
import {Radio} from '../lib/index'
export default {
  components: {
    Radio,
  },
  data(){
    return {
      radio:'选中且禁用'
    }
  }
}
</script>