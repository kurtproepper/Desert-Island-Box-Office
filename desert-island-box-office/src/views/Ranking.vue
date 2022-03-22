<script>
import { defineComponent } from "vue";
import { VueDraggableNext } from "vue-draggable-next";
export default defineComponent({
  components: {
    draggable: VueDraggableNext,
  },
  data() {
    return {
      enabled: true,
      list: [
        { name: "Star Wars", id: 1 },
        { name: "Goodfellas", id: 2 },
        { name: "The Grand Budapest Hotel", id: 3 },
        { name: "Spider-Man: Into the Spider-Verse", id: 4 },
        { name: "The Social Network", id: 5 },
      ],
      dragging: false,
    };
  },
  methods: {
    log(event) {
      console.log(event);
    },
  },
});
</script>

<template>
  <div class="flex m-10">
    <draggable class="dragArea list-group w-full" :list="list" @change="log">
      <div
        class="list-group-item bg-gray-300 m-1 p-3 rounded-md text-center"
        v-for="element in list"
        :key="element.name"
      >
        {{ element.name }}
      </div>
    </draggable>
  </div>
</template>
