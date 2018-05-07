$("ul").addClass('menu-list').not(':first').addClass('is-closed');
$(".is-closed").siblings('a').addClass('menu-has-children has-closed');

$("a.menu-has-children").on('click', function(){
  var firstUL = $(this).siblings('ul');
  if(firstUL.hasClass('is-closed'))
  {
    $(this).removeClass('has-closed');
    firstUL.removeClass('is-closed');
  }
  else
  {
    $(this).addClass('has-closed');
    firstUL.addClass('is-closed');
  }
});
