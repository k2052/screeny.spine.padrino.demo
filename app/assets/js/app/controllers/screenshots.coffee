$ = jQuery
    
class Screenshots extends Spine.Controller
  className: 'list'
    
  elements:
    '.items': 'items'
    
  constructor: ->
    super
    
    @html JST['app/views/screenshots/list']()

    Screenshot.bind 'create', =>
      @add(arguments...)

    Screenshot.bind 'refresh', =>
      @render(arguments...)
   
    Screenshot.fetch()

  render: (screenshots = []) =>    
    for screenshot in screenshots
      @items.append JST['app/views/screenshots/item'](screenshot) unless @items.children('[data-id="'+screenshot.id+'"]').length == 1
      item = @items.children('[data-id="'+screenshot.id+'"]')
      rivets.bind(item, {screenshot: screenshot})

  add: (screenshot) =>
    @items.append JST['app/views/screenshots/item'](screenshot) unless @items.children('[data-id="'+screenshot.id+'"]').length == 1
    item = @items.children('[data-id="'+screenshot.id+'"]')
    rivets.bind(item, {screenshot: screenshot})

window.Screenshots = Screenshots
