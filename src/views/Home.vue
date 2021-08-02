<template>
  <div >
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>雨滴UI</h1>
        <h2>一个简单的UI框架</h2>
        <p class="actions">
          <a href="">Github</a>
          <router-link to="/doc">Start</router-link>
        </p>
      </div>

    <div class="features">
      <ul>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>骄傲地使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-typescript"></use>
          </svg>
          <h3>基于 TypeScript </h3>
          <p>源代码采用 TypeScript 书写（非严格检查）</p>
        </li>
        <li>
          <svg class="icon">
            <use xlink:href="#icon-dengpao"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
  </div>
</template>

<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  components: {Topnav}
}
</script>

<style lang="scss" scoped>
$border-radius: 4px;
$color: #000;
$h1: 28px;
$font-family: "宋体";
.topnavAndBanner{

}
.features {
  margin:auto;
  margin-top: 140px;
  padding: 0 20px;

  @media (min-width: 800px) {
    width: 800px;
    >ul{
      >li{
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    >ul{
      >li{
        width: 33.3333%;
      }
      >li:nth-child(1){
        border-right: 2px solid #000;
      }
      >li:nth-child(2){
        border-right: 2px solid #000;
      }
    }
  }
  >ul{
    display: flex;
    flex-wrap: wrap;
    >li{
      margin: 30px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      >svg{
        grid-area: icon;
        width: 64px;
        height: 64px;
      }
      >h3{
        grid-area: title;
        font-size: 28px;
      }
      >p{
        grid-area: text;
        font-size: 10px;
      }
    }
  }

}

.banner{
  color: $color;
  padding-top: 180px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  h1{
    font-size: $h1*2;
    padding: 13px 0;
    font-family: $font-family;
    font-weight: bold;
    letter-spacing: 40px;
    margin-left: 40px;
  }
  h2{
    letter-spacing: 10px;
    font-size: $h1 / 1.4;
    font-family: $font-family;
    padding: 20px 0;
  }
  >.actions{
    margin: 20px 0;
    $h: 48px;
    background: $color;
    height: $h;
    line-height: $h;
    a{
      margin: 0 8px;
      color: white;
      display: inline-block;
      padding: 0 8px;
      border-color: $border-radius;
      &:hover{
        color: red;
        text-decoration: none;
      }
    }
  }
}
</style>