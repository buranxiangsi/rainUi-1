<demo>
混合布局
</demo>
<template>
    <div>
      <Row :gutter=20 >
        <Col :span="16" ><div class="flex-content bg-purple"></div></Col>
        <Col :span="8" ><div class="flex-content bg-purple-light"></div></Col>
      </Row>
      <Row :gutter=20 >
        <Col :span="8" ><div class="flex-content bg-purple"></div></Col>
        <Col :span="8" ><div class="flex-content bg-purple-light"></div></Col>
        <Col :span="4" ><div class="flex-content bg-purple"></div></Col>
        <Col :span="4" ><div class="flex-content bg-purple-light"></div></Col>
      </Row>
      <Row :gutter=20 >
        <Col :span="4" ><div class="flex-content bg-purple"></div></Col>
        <Col :span="16" ><div class="flex-content bg-purple-light"></div></Col>
        <Col :span="4" ><div class="flex-content bg-purple"></div></Col>
      </Row>
      
    </div>
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