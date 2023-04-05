<template>
  <q-page >

    <!--Page Section Title-->
    <h6 class="q-ml-md q-my-md">Mi Conocimiento</h6>

    <!--First Row Of Cards -->
    <div class="row ">

      <!--Card Java-->
      <div class="col-2 q-ml-xl">
        <q-card class="my-card">
        <q-img src="src/images/JAVA.png"></q-img>
        <div class="text-center text-h6 text-white bg-dark">
            Java
        </div>
      </q-card>
    </div>

    <!--Card MySQL-->
    <div class="col-2 q-ml-md">
      <q-card class="my-card">
        <q-img src="src/images/mysql.png"></q-img>
        <div class="text-center text-h6 text-white bg-dark">
            MySQL
        </div>
      </q-card>
    </div>

    <!--Card Vue.js-->
    <div class="col-2 q-ml-md">
      <q-card class="my-card">
        <q-img src="src/images/Vuejs.png" class="q-mt-md q-mb-sm"></q-img>
        <div class="text-center text-h6 text-white bg-dark">
            Vue.js
        </div>
      </q-card>
    </div>

    <!--Card Quasar-->
    <div class="col-2 q-ml-md">
      <q-card class="my-card">
        <q-img src="src/images/quasar.png"></q-img>
        <div class="text-center text-h6 text-white bg-dark">
            Quasar
        </div>
      </q-card>
    </div>

    <!--Card JavaScript-->
    <div class="col-2 q-ml-md">
      <q-card class="my-card">
        <q-img src="src/images/JavaScript-logo.png"></q-img>
        <div class="text-center text-h6 text-white bg-dark">
            JavaScript
        </div>
      </q-card>
    </div>
  </div>

  </q-page>
</template>

<script>
  import { defineComponent } from 'vue'

export default defineComponent({
  name: 'MiConocimiento',
})
</script>
