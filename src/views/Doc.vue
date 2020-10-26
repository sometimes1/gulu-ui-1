<template>
  <div>
    <div class="layout">
      <Topnav toggleMenuButtonVisible class="nav" />
      <div class="content">
        <aside v-if="menuVisible">
          <div class="left">
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
                <router-link to="/doc/Switch">Switch 组件</router-link>
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
          </div>
          <div class="right" @click="toggleCode"></div>
        </aside>
        <main>
          <router-view />
        </main>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue'
import { inject, Ref } from 'vue'
export default {
  components: {
    Topnav
  },
  setup() {
    const menuVisible = inject<Ref<boolean>>('menuVisible') //get
    const toggleCode = () => (menuVisible.value = !menuVisible.value)
    return { menuVisible, toggleCode }
  }
}
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
    flex-grow: 1;
    padding-top: 60px;
    padding-left: 156px;
    @media (max-width: 500px) {
      padding-left: 0;
    }
  }
}
.content {
  display: flex;
  > aside {
    flex-shrink: 0;
  }
  > main {
    flex-grow: 1;
    padding: 16px;
    background: white;
  }
}
aside {
  width: 100%;
  color: white;
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  z-index: 1;
  display: flex;
  > .right {
    @media (max-width: 500px) {
      width: 100%;
      background-color: transparent;
    }
  }
  > .left {
    padding: 70px 0 16px;
    height: 100%;
    background: linear-gradient(
      180deg,
      rgba(49, 49, 49, 1) 0%,
      rgba(47, 47, 47, 1) 100%
    );
    min-width: 150px;
    > h2 {
      margin: 10px 0;
      padding: 0 16px;
    }
    > ol {
      > li {
        > a {
          padding: 4px 16px;
          display: block;
          font-weight: bold;
        }
        .router-link-active {
          background: white;
          color: #313131;
        }
      }
    }
  }
  main {
    overflow: auto;
  }
}
</style> 
