<template>
  <button v-bind="$attrs">
    <slot />
  </button>
</template>
<script lang="ts">
export default {
  inheritAttrs: false, // 继承属性改为false
  props: {},
  setup(props, context) {
    // es6语法括展操作符
    // size取出来，其他的都放在rest
    const { size, ...rest } = context.attrs
    return { size, rest }
  },
}
</script>
<style lang="scss" scoped>
div {
  border: 1px solid red;
}
</style>