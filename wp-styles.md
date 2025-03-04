- from lavric
```php 
add_action('wp_enqueue_scripts', function () {
	wp_enqueue_style('style', get_stylesheet_uri());
	wp_enqueue_style('slick', get_template_directory_uri() . '/css/slick.css');
	wp_enqueue_style('base', get_template_directory_uri() . '/css/base.css');
	wp_enqueue_style('main', get_template_directory_uri() . '/css/style.css');

	wp_deregister_script('jquery');
	wp_enqueue_script('jquery', get_template_directory_uri() . '/js/code.jquery.com_jquery-3.7.0.min.js');
	wp_enqueue_script('slick', get_template_directory_uri() . '/js/slick.min.js');
	wp_enqueue_script('main', get_template_directory_uri() . '/js/script.js');
});

```