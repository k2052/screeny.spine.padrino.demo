class Screenshot extends Spine.Model
  @configure "Screenshot", "image", "position"
  @extend Spine.Model.Ajax
  @extend AttributeTracking

  @fetch (params) ->
    @ajax().fetch(params) 

window.Screenshot = Screenshot
