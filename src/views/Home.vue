<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>轱辘UI</h1>
        <h2>一个历害的 UI 框架</h2>
        <p class="actions">
          <a href="https://github.com">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <svg>
        <use xlink:href="#icon-Vue" />
      </svg>
      <svg>
        <use xlink:href="#icon-ts" />
      </svg>
      <svg>
        <use xlink:href="#icon-light" />
      </svg>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue'
export default {
  components: {
    Topnav
  }
}
</script>
<style lang="scss" scoped>
$yellow: #ffca39;
$border-radius: 4px;
$blue: #000046;
.topnavAndBanner {
  background: rgb(108, 105, 105);
  background: linear-gradient(
    142deg,
    rgba(108, 105, 105, 0.7850534539473684) 0%,
    rgba(48, 48, 48, 1) 100%
  );
  // border-bottom-left-radius:50% 80px;
  // border-bottom-right-radius:50% 80px;
  clip-path: ellipse(80% 60% at 50% 40%);
}
.features {
  > svg {
    width: 64px;
    height: 64px;
  }
}
.banner {
  color: white;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  > .actions {
    padding: 8px 0;
    a {
      margin: 0 8px;
      color: $blue;
      background: $yellow;
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