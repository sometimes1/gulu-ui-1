<template>
  <div>
    <Switch :value="bool" @updeta:value="bool=$event" />
    <!--  等同于
      <Switch v-model:value="bool" />
       -->
  </div>
</template>
<script lang="ts">
import Switch from '../lib/Switch1.vue'
import { ref } from 'vue'
export default {
  components: { Switch },
  setup() {
    const bool = ref(false)
    return { bool }
  },
}
</script>