<template>
  <input type="text" v-model="state.inputValue" />
  <button @click="onClick" :disabled="state.hasError">追加</button>
  <p v-if="state.hasError" class="error">タイトルが長すぎ！</p>
</template>

<script lang="ts">
import { defineComponent, reactive, toRefs, watchEffect } from 'vue'

interface State {
  inputValue: string
  hasError: boolean
}

export default defineComponent({
  emit: ['add'],
  setup(_, context) {
    const {inputValue, hasError} = toRefs(reactive<State>({
      inputValue: '',
      hasError: false
    }))
    const onClick = () => {
      context.emit('add', inputValue),
      inputValue.value = ''
    }
    watchEffect(() => {
      if (inputValue.value.length > 10) {
        hasError.value = true
      } else {
        hasError.value = false
      }
    })

    return {
      inputValue,
      hasError,
      onClick
    }
  }
})
</script>

<style scoped>
.error {
  color: red;
}
</style>