$(document).ready(function() {

  $('.card-answer').hide();

  $('button').on('click', function(){
  $('.card-answer').toggle();
  });
});



// $('img').hide();


//   $('a').on('click', function(){
//     console.log("grabbing list item")
//     var link = $(this).parent().find('a');
//     var img = $(this).parent().find('img')
//     img.toggle();
//   });