\<template>
  <div class="main">
    <Header class="header" />
    <emqx-container normal class="body" :page-min-width="1250">
      <template #page-content>
        <div>
          <Breadcrumb />
          <router-view />
        </div>
      </template>
    </emqx-container>
  </div>
</template>

<script lang="ts">
import { computed, defineComponent } from 'vue'
import Header from '@/components/Header.vue'

import { useStore } from 'vuex'
import Breadcrumb from '@/components/Breadcrumb.vue'

export default defineComponent({
  name: 'Home',
  components: {
    Header,
    Breadcrumb,
  },
  setup() {
    const store = useStore()
    const isSubAppLoading = computed(() => store.state.isSubAppLoading)

    return {
      isSubAppLoading,
    }
  },
})
</script>
