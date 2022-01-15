<demo>
分栏间隔
</demo>
<template>
   
     <Row :gutter=20 >
      <Col :span="6" ><div class="flex-content bg-purple"></div></Col>
      <Col :span="6" ><div class="flex-content bg-purple-light"></div></Col>
      <Col :span="6" ><div class="flex-content bg-purple"></div></Col>
      <Col :span="6" ><div class="flex-content bg-purple-light"></div></Col>
    </Row>
    
</template>

<script lang="ts">
import {Row} from "../lib/index";
import {Col} from "../lib/index";
export default {
  components: {
    Row,
    Col  
  }
}
</script>

<style lang="scss">
.raindrop-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .raindrop-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .flex-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
</style>