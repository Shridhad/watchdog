(function() {

  this.Stoplight = {
    Models: {},
    Collections: {},
    Views: {},
    App: {}
  };

  this._.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g,
    evaluate: /\{\[([\s\S]+?)\]\}/g
  };

}).call(this);
