[$, _, Backbone, Models, Collections, Views] = [@jQuery, @_, @Backbone, @Stoplight.Models, @Stoplight.Collections, @Stoplight.Views]

class Views.SuccessTile extends Backbone.View
  tagName: 'div'
  className: 'wrapper'

  template: _.template(
    """
      <article class="project success">
        <video preload="auto" autoplay="autoplay" muted="muted" loop="loop">
          <source src="//i.imgur.com/EZoBi4O.mp4" type="video/mp4">
        </video>
      </article>
    """)

  render: =>
    @$el.html(@template({}))

    this
