$(document).on 'ready page:load', (event) ->
  $('#post_category_tokens').tokenInput '/categories.json'
  theme: 'facebook'
