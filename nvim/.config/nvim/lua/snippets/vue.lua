local luasnip = require 'luasnip'
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets('vue', {
  s('scaffold', {
    t {
      '<template>',
      ' <div class="container">',
      '   ',
    },
    i(1),
    t {
      '',
      ' </div>',
      '</template>',
      '',
      '<script setup lang="ts">',
      '</script>',
      '',
      '<style scoped>',
      '</style>',
      '',
    },
  }),
})
