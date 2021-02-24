<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav/>
      <div class="banner">
        <h1>Joish UI</h1>
        <h2>一个简单好用的 UI 框架</h2>
        <p class="actions">
          <a href="https://github.com/Joish1/Joish-ui">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
  </div>
  <div class="features">
    <svg class="icon">
      <use xlink:href="#icon-vue"></use>
    </svg>
    <svg class="icon">
      <use xlink:href="#icon-ts"></use>
    </svg>
    <svg class="icon">
      <use xlink:href="#icon-light"></use>
    </svg>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';

export default {
  components: {Topnav}
};
</script>
<style lang="scss" scoped>
$blue: #3C50E0;
$border-radius: 4px;
.topnavAndBanner {
  background: linear-gradient(143deg, rgba(232, 241, 255, 1) 0%, rgba(46, 91, 164, 1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.features {
  >svg {
    width: 64px;
    height: 64px;
  }
}
.banner {
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;


  > .actions {
    padding: 8px 0;

    a {
      margin: 0 8px;
      background: $blue;
      color: #fff;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;
      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>
