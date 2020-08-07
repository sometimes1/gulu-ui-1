<template>
  <div>
    <Switch :value="y" @updeta:value="y=$event" />
    <!--  等同于
      <Switch v-model:value="y" />
       -->
  </div>
</template>
<script lang="ts">
import Switch from '../lib/Switch1.vue'
import { ref } from 'vue'
export default {
  components: { Switch },
  setup() {
    const y = ref(false)
    return { y }
  },
}
</script>