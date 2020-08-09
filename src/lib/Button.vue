<template>
  <button class="gulu-button"
   :class="{[`theme-${theme}`]:theme}">
   <!--如果theme是undefind就把这个class关掉
   如果theme不是undefind那么这个class就存在-->
    <slot />
  </button>
</template>
<script lang="ts">
export default {
  props: {
    theme: {
      type: String,
      default:'button'
    },
  },
}
</script>
<style lang="scss" scoped>
</style>