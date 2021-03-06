[$, _, Backbone, Models, Collections, Views] = [@jQuery, @_, @Backbone, @Stoplight.Models, @Stoplight.Collections, @Stoplight.Views]

class Views.FailureTile extends Backbone.View
  tagName: 'div'
  className: 'wrapper'

  template: _.template(
    """
      <article class="project {{ last_build_status }} {{ current_status }}">
        <h1>
          <a href="{{ build_url }}" target="_TOP">{{ name.substr(0, name.indexOf(':')) }}</a>
        </h1>
        <p class="status">
          {[ if(!!culprits.length) { ]}
          <span>
            Broken by <strong>{{ culprits }}</strong>,
          </span>
          {[ } ]}
          <time class="last-build-time invisible" datetime="{{ last_build_time }}" title="{{ human_last_build_time }}">
            {{ human_last_build_time }}
          </time>
        </p>
      </article>
    """)

  initialize: (options) ->
    @_width  = options.width
    @_height = options.height

  render: =>
    @$el.html(@template(@model.toJSON()))
    @$el.css 'width' , "#{@_width}%"
    @$el.css 'height', "#{@_height}%"

    this
