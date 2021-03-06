# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in home.js.
#

$ ->
  $('.inlinesparkline').each (index) ->
    $(this).sparkline $(this).parent().parent().parent().prev('#repository_participation').text().replace('[', '').replace(']', '').split(','),
      type: "discrete"
      lineColor: "#2d4611"

  if $('#hacking_form #location').length > 0
    $('#hacking_form #location').autocomplete
      source: $('#hacking_form #location').data('autocomplete-source')

  $('input#location').focus()

  $('.deploy-button').click ->
    $(this).parent().addClass('active')
    console.log('Class added');

  $('ul#site-sections li').mouseenter ->
    desc = $(this).data('desc')
    $('.talker').show().html(desc);

  $('ul#site-sections li').mouseleave ->
    $('.talker').hide().html("");

  $('#app-flipper').scrollLeft(100);

  if $('table#sortable').length > 0
    $('table#sortable').tablesorter()

  setTimeout (->
    $("#flash").slideUp()
  ), 5000

  $('ul#user-grid li').each ->
    $(this).qtip
      content:
          text: $(this).text()
      position:
        my: 'bottom center'
        at: 'top center'
      style:
        classes: 'ui-tooltip-light ui-tooltip-shadow'
      show:
        solo: true
      hide:
        fixed: true
        delay: 500
