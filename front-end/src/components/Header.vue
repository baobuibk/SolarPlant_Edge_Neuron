<template>
  <emqx-header class="header">
    <template #title>
      <img src="../assets/images/logo.png" alt="neuron-logo" width="141" />
    </template>

    <template v-slot:right>
      <div>


<span class="el-dropdown-link" @click="goOverview">
    <span class="nonsense">|</span>
    <router-link id="overview-link" class="ychang" to="/overview" :class="{ deactivated: currentRoute === '/overview' }">{{ $t('common.overview') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goMonitor">
    <span class="nonsense">|</span>
    <router-link id="monitor-link" class="ychang" to="/monitoring/data" :class="{ deactivated: currentRoute === '/monitoring/data' }">{{ $t('common.monitor') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goGraph">
    <span class="nonsense">|</span>
    <router-link id="graph-link" class="ychang" to="/graph" :class="{ deactivated: currentRoute === '/graph' }">{{ $t('common.graph') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goDevice">
    <span class="nonsense">|</span>
    <router-link id="device-link" class="ychang" to="/configuration/south-driver" :class="{ deactivated: currentRoute === '/configuration/south-driver' }">{{ $t('common.device') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goApp">
    <span class="nonsense">|</span>
    <router-link id="app-link" class="ychang" to="/configuration/north-driver" :class="{ deactivated: currentRoute === '/configuration/north-driver' }">{{ $t('common.app') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goSystem">
    <span class="nonsense">|</span>
    <router-link id="system-link" class="ychang" to="/system" :class="{ deactivated: currentRoute === '/system' }">{{ $t('common.system') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="goAdmin">
    <span class="nonsense">|</span>
    <router-link id="admin-link" ref="adminLink" class="ychang" to="/admin/change-password" :class="{ deactivated: currentRoute === '/admin/change-password' }">{{ $t('common.admin') }}</router-link>
    <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;&nbsp;&nbsp;</span>

<span v-if="!EN_LANG" class="dropdown-item" @click="changeLanguage">
  <span class="nonsense">|</span>
  <span class="languageChanging">{{ langLabel }}</span>
  <span class="nonsense">|</span>
</span>

<span class="languageChanging">&nbsp;&nbsp;</span>

<span class="el-dropdown-link" @click="logout">
    <span class="nonsense">|</span>
    <router-link class="ychang" to="/login">{{ $t('common.logout') }}</router-link>
    <span class="nonsense">|</span>
</span>



      </div>
    </template>
  </emqx-header>
</template>

<script lang="ts" setup>
import { computed } from 'vue'
import { useStore } from 'vuex'
import { useRouter } from 'vue-router'
import { downloadLogs } from '@/api/admin'
import { useDownload } from '@/composables/useDownload'
import useLang, { setLang } from '@/composables/useLang'
import { EN_LANG } from '@/config/index'

const store = useStore()
const router = useRouter()


let currentRoute = '';

// Hàm để cập nhật giá trị của currentRoute dựa trên URL hiện tại
const updateCurrentRouteFromURL = () => {
  const hash = window.location.hash;
  if (hash) {
    currentRoute = hash.substring(2); // Loại bỏ ký tự '#/' từ hash
  }
  console.log(currentRoute);
};

// Gọi hàm cập nhật currentRoute khi trang được tải lại
window.addEventListener('load', () => {
  updateCurrentRouteFromURL();
  updateAllLinkColors();
});


const updateCurrentRoute = (newRoute) => {
  currentRoute = newRoute;
};

const goMonitor = () => {
  updateCurrentRoute('/monitoring/data');
  router.push({ name: 'DataMonitoring' });
  console.log(currentRoute);
};

const goGraph = () => {
  updateCurrentRoute('/graph');
  router.push({ name: 'License' });
  console.log(currentRoute);
};

const goDevice = () => {
  updateCurrentRoute('/configuration/south-driver');
  router.push({ name: 'SouthDriver' });
  console.log(currentRoute);
};

const goApp = () => {
  updateCurrentRoute('/configuration/north-driver');
  router.push({ name: 'NorthDriver' });
  console.log(currentRoute);
};

const goAdmin = () => {
  updateCurrentRoute('/admin/change-password');
  router.push({ name: 'ChangePassword' });
  console.log(currentRoute);
};

const goSystem = () => {
  updateCurrentRoute('/system');
  router.push({ name: 'About' });
  console.log("VuotquarouterPush")
  console.log(currentRoute);
};

const goOverview = () => {
  updateCurrentRoute('/overview');
  router.push({ name: 'Overview' }).then(() => {
    console.log("VuotquarouterPush")
    location.reload();
  });
};



const goLicense = () => {
  router.push({ name: 'License' })
}

const goAbout = () => {
  router.push({ name: 'About' })
}

const { downloadFile } = useDownload()
const downloadLogsFile = () => {
  downloadLogs().then((res) => {
    const { data, headers } = res
    downloadFile(headers, data)
  })
}

const { langList } = useLang()
const { changeLang } = setLang()
const changeCurrentLang = (lang: string) => {
  changeLang(lang)
}
const lang = computed({
  get() {
    return store.state.lang
  },
  set(val: string) {
    changeCurrentLang(val)
  },
})

const logout = async () => {
  try {
    changeCurrentLang(lang.value)
    store.commit('LOGOUT')
    router.push({ name: 'Login' })
  } catch (error) {
    console.error(error)
  }
}

const langLabel = computed(() => langList.find((item) => item.value === lang.value)?.label || '')

function changeLanguage() {
  lang.value = lang.value === 'zh' ? 'en' : 'zh';
  console.log(currentRoute);
  updateAllLinkColors();
}

const updateLinkColor = (linkId, routePath) => {
  const link = document.getElementById(linkId);

  if (link) {
    const isCurrentRoute = router.currentRoute.value.path === routePath;
    link.style.color = isCurrentRoute ? 'orange' : 'white';
  }
};

const updateAllLinkColors = () => {
  updateLinkColor('overview-link', '/overview');
  updateLinkColor('monitor-link', '/monitoring/data');
  updateLinkColor('graph-link', '/graph');
  updateLinkColor('device-link', '/configuration/south-driver');
  updateLinkColor('app-link', '/configuration/north-driver');
  updateLinkColor('admin-link', '/admin/change-password');
  updateLinkColor('system-link', '/system');
};
    router.afterEach(() => {
      updateAllLinkColors(); // Cập nhật màu sắc sau mỗi chuyển đổi route
    });

    // Gọi hàm cập nhật màu sắc khi component được mount
    updateAllLinkColors();


</script>

<style lang="scss">
@import '@/styles/emqx-ui-variables.scss';

.header {
  .el-dropdown {
    color: #fff;
  }
}
.dropdown-item {
  margin-left: 14px;
}
.header-menu {
  .emqx-dropdown-item {
    padding-left: 24px;
    padding-right: 24px;
  }
  .emqx-dropdown-item {
    display: flex;
    align-items: center;
  }
}
.active-lang {
  color: $--color-primary !important;
}
.username {
  margin-bottom: 12px;
}
.account-setting {
  .el-button {
    height: 20px;
    min-height: 20px;
    padding: 0;
    line-height: 20px;
    color: #0d446e;
    &:not(:last-child) {
      position: relative;
      padding-right: 6px;
      margin-right: 6px;
      &::after {
        content: '';
        height: 100%;
        width: 1px;
        background-color: #d4dbe0;
      }
    }
  }
}
.iconfont.iconAdministration1 {
  font-size: 20px;
  position: relative;
  left: 1px;
}
.user-bg {
  display: inline-block;
  margin-left: 24px;
  margin-right: 10px;
  width: 28px;
  height: 28px;
  line-height: 28px;
  background: #104d7c;
  border-radius: 50%;
  text-align: center;
}
.el-dropdown-link{
  font-size: 18px;
  font-family: monospace;
  font-weight: bold;
}
.languageChanging{
  font-size: 18px;
  font-family: monospace;
  font-weight: bold;
  color: bisque;
}
.ychang{
  color: #fff;
}
.ychang.deactivated{
  color: orange;
}

</style>
