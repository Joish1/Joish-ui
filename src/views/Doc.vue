<template>
  <div class="layout">
    <Topnav toggle-menu-button-visible class="nav"/>
    <div class="content">
      <transition name="slide">
        <aside v-if="asideVisble">
          <h2>文档</h2>
          <ol>
            <li>
              <router-link to="/doc/intro">介绍</router-link>
            </li>
            <li>
              <router-link to="/doc/install">安装</router-link>
            </li>
            <li>
              <router-link to="/doc/get-started">开始使用</router-link>
            </li>
          </ol>
          <h2>组件列表</h2>
          <ol>
            <li>
              <router-link to="/doc/switch">Switch 组件</router-link>
            </li>
            <li>
              <router-link to="/doc/button">Button 组件</router-link>
            </li>
            <li>
              <router-link to="/doc/dialog">Dialog 组件</router-link>
            </li>
            <li>
              <router-link to="/doc/tabs">Tabs 组件</router-link>
            </li>
          </ol>
        </aside>
      </transition>
      <main>
        <router-view/>
      </main>
    </div>
  </div>
</template>

<script lang="ts">

import Topnav from '../components/Topnav.vue';
import {inject, Ref} from 'vue';

export default {
  components: {Topnav},
  setup() {
    const asideVisble = inject<Ref<boolean>>('asideVisible');
    return {asideVisble};
  }
};
</script>
<style lang="scss" scoped>


.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;

  > .nav {
    flex-shrink: 0;
  }

  > .content {
    display: flex;
    padding-top: 60px;
    padding-left: 285px;

    main {
      height: 100vh;
      overflow: auto;
      flex-grow: 1;
      padding: 60px;
    }

    @media (max-width: 500px) {
      padding-left: 0;
      main {
        height: 80vh;
        overflow: auto;
        flex-grow: 1;
        padding: 32px;
      }
    }
  }
}

.content {
  display: flex;
  padding-top: 60px;
  padding-left: 285px;

  > main {
    height: 100vh;
    overflow: auto;
    flex-grow: 1;
    padding: 60px;
  }

  @media (max-width: 500px) {
    padding-left: 0;
    main {
      height: 80vh;
      overflow: auto;
      flex-grow: 1;
      padding: 32px;
    }
  }

  aside {
    position: absolute;
    top: 0;
    left: 0;
    width: 285px;
    height: 110vh;
    padding: 16px 0;
    padding-top: 80px;
    background: #fff;
    box-shadow: 5px 0 5px rgba(#333, 0.1);
    z-index: 1;
    transition: all 0.4s cubic-bezier(0.68, 0.18, 0.53, 0.18) 0.1s;

    > h2 {
      margin-bottom: 4px;
      margin-top: 16px;
      padding: 0 40px;
    }

    > ol {
      line-height: 40px;

      > li {
        > a {
          position: relative;
          height: 40px;
          color: #6f2e6a;
          display: block;
          padding: 4px 50px;
          text-decoration: none;
        }

        &:hover {
          background: #E5EFFE;
          border-bottom: none;
        }

        .router-link-active {
          background: #E5EFFE;
          border-right: 3px solid #557BB7;
          @media (min-width: 500px) {
            border-right: none;
            &::after {
              content: "";
              display: block;
              animation: bdrolate 0.8s;
              position: absolute;
              top: 0;
              right: 0;
              width: 3px;
              height: 40px;
              background-color: #557BB7;
            }
          }
        }
      }
    }

    @keyframes bdrolate {
      0% {
        transform: rotateX(90deg);
      }
      100% {
        transform: rotateX(0deg);
      }
    }
  }
}
</style>