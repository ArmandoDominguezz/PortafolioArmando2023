<template>
  <!--lHh Lpr lFf-->
  <q-layout view="hhh Lpr lFf">
    <q-header elevated class="bg-secondary">
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />

        <q-toolbar-title> DISEÑO DE SISTEMAS I (DSI135) </q-toolbar-title>

        <div>2023-04-02</div>
      </q-toolbar>
    </q-header>

    <q-footer elevated class="bg-secondary text-center q-pb-md">
      <q-toolbar >
        <q-toolbar-title>PEGUNTAS FRECUENTES</q-toolbar-title>
      </q-toolbar>
      <q-toolbar>
        <q-toolbar-title>CONTACTANOS</q-toolbar-title>
      </q-toolbar>
      <div class="text-orange text-h6 text-weight-regular">armando22dominguez@gmail.com</div>
    </q-footer>

    <q-drawer v-model="leftDrawerOpen" show-if-above bordered>
      <q-list>
        <q-item-label header> Mi Perfil </q-item-label>

        <div>
          <q-item clickable to="/" v-ripple>
            <q-item-section side>
              <q-avatar size="65px">
                <img
                  src="src/images/Mi Perfil.jpg"
                />
                <!--<img src="https://cdn.quasar.dev/img/avatar.png" />-->
              </q-avatar>
            </q-item-section>
            <q-item-section >
              <q-item-label class="text-bold text-blue-grey-14">Kevin Armando Dominguez</q-item-label>
              <q-item-label caption class="text-bold text-blue-grey-4">DZ15004</q-item-label>
            </q-item-section>
          </q-item>
        </div>

        <q-separator color="orange" inset />

        <EssentialLink
          class="q-py-md"
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from "vue";
import EssentialLink from "components/EssentialLink.vue";

const linksList = [
  {
    title: "Mi Proyecto",
    caption: "Trata Sobre TripSV",
    icon: "insights",
    link: "#/MiProyecto",
  },
  {
    title: "Mi Conocimiento",
    caption: "Framework y Lenguajes de programacion Que Se Usar",
    icon: "emoji_objects",
    link: "#/MiConocimiento",
  },
];

export default defineComponent({
  name: "MainLayout",

  components: {
    EssentialLink,
  },

  setup() {
    const leftDrawerOpen = ref(false);

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
