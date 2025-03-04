functions.php
```php
register_nav_menus(
	array(
		'menu-1' => esc_html__('Header', 'bs-vite'),
		'footer' => esc_html__('Footer', 'bs-vite'),
		'product' => esc_html__('Product', 'bs-vite'),
		'company' => esc_html__('Company', 'bs-vite'),
	)
);
```

header.php
```php
  <?php wp_nav_menu([
	'theme_location'  => 'menu-1',
	'menu'            => '',
	'container'       => '',
	'container_class' => '',
	'container_id'    => '',
	'menu_class'      => 'main-menu main-header__main-menu',
	'menu_id'         => 'js-main-menu',
	'echo'            => true,
	'fallback_cb'     => 'wp_page_menu',
	'before'          => '',
	'after'           => '',
	'link_before'     => '',
	'link_after'      => '',
	'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
	'depth'           => 0,
	'walker'          => '',
  ]); ?>
```