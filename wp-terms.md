$args = array(
  'post_type' => 'products',
  'posts_per_page' => 4,
  'tax_query' => array(
    array(
      'taxonomy' => 'product-category',
      'field' => 'slug',
      'terms' => 'vegetable',
    ),
  ),
);

- $product_posts = new WP_Query($args);