$(document).ready ->
  app.init()

app =
  scroll_speed: 700 # in ms

  init: ->
    @bind_events()

  bind_events: ->
    # Handle TOC anchor link scrolling
    $(document).on 'click', '.toc a', (e) ->
      e.preventDefault()
      offset = $($(this).attr('href')).offset().top

      $('html,body').animate
        scrollTop: offset + 'px'
      , app.scroll_speed

    # Handle back to top scrolling
    $(document).on 'click', '.backtotop', (e) ->
      e.preventDefault()
      $('html,body').animate
        scrollTop: '0px'
      , app.scroll_speed

    # Handle nav toggle button
    $(document).on 'click', '.nav-toggle', (e) ->
      $('.navigation').slideToggle()
      if $(this).text() is 'Menü'
        $(this).text 'Schließen'
      else
        $(this).text 'Menü'



# Sidebar navigation
# Scroll sidebar if larger than window height
# Still needed?

# $(document).ready(function () {
#   var last_scroll_pos;
#   last_scroll_pos = 0;
#   return $(window).scroll(function (e) {
#     var pos, s, w;
#     s = $('.navigation');
#     w = $(window);
#     if (s.height() > w.height()) {
#       if (last_scroll_pos > $('html,body').scrollTop()) {
#         if (parseInt(s.css('top')) < 0) {
#         s.css('top', parseInt(s.css('top')) + last_scroll_pos - $('html,body').scrollTop());
#         } else {
#           s.css('top', '0px');
#         }
#       } else {
#         pos = $(window).height() + $('html,body').scrollTop();
#         if (parseInt(s.css('top')) > (s.height() - w.height()) * -1) {
#         s.css('top', parseInt(s.css('top')) + last_scroll_pos - $('html,body').scrollTop());
#         } else {
#           s.css('top', (s.height() - w.height()) * -1);
#         }
#       }
#     }
#     return last_scroll_pos = $('html,body').scrollTop();
#   });
# });
