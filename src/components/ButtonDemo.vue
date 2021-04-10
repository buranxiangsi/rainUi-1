<template>
  <div>Button示例</div>
  <h1>示例1</h1>
  <div>
    <Button theme="button">button</Button>
    <Button theme="link">link</Button>
    <Button theme="text">text</Button>
  </div>
  <h1>示例2</h1>
  <div>
    <div>
      <Button size="big">大大大</Button>
      <Button>普普通</Button>
      <Button size="small">小小小</Button>
    </div>
    <div>
      <Button theme="link" size="big">大大大</Button>
      <Button theme="link">普普通</Button>
      <Button size="small" theme="link">小小小</Button>
    </div>
    <div>
      <Button size="big" theme="text">大大大</Button>
      <Button theme="text">普普通</Button>
      <Button size="small" theme="text">小小小</Button>
    </div>
  </div>
  <h1>示例3</h1>
  <div>
    <div>
      <Button level="main">main button</Button>
      <Button >normal button</Button>
      <Button level="danger">danger button</Button>
    </div>
    <div>
      <Button theme="link" level="main">main link</Button>
      <Button theme="link">normal link</Button>
      <Button theme="link" level="danger">danger link</Button>
    </div>
    <div>
      <Button theme="text" level="main">main text</Button>
      <Button theme="text">normal text</Button>
      <Button theme="text" level="danger">danger text</Button>
    </div>
  </div>
  <h1>示例4</h1>
  <div>
    <Button disabled>disabled</Button>
    <Button theme="link" disabled>disabled link</Button>
    <Button theme="text" disabled>disabled text</Button>

  </div>
</template>

<script lang="ts">
import Button from "../lib/Button.vue"
export default {
  components:{ Button },
}
</script>