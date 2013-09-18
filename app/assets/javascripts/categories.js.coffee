# initalize Masonry
$container = $(".two_column").masonry()

# layout Masonry again after all images have loaded
$container.imagesLoaded ->
  $container.masonry
  	itemSelector: ".panel-default"
  	gutter: 30