```php

<ul class="footer-top__social">
	<?php foreach ($socials as $item) : ?>
		<?php
		$image = $item['image'];
		$url = $item['url'];
		?>
		<li><a href="<?php echo $url; ?>" target="_blank"><img src="<?php echo $image; ?>" alt=""></a></li>
	<?php endforeach; ?>
</ul>
```

```php
<?php if ($socials) : ?>
  <ul class="our-team__social">
	<?php foreach ($socials as $item) : ?>
	  <?php
	  $url = $item['url'];
	  $type = $item['type'];
	  $icon_url = 'template-parts/icons/icon-' . $type;
	  ?>
	  <li>
		<a class="our-team__link" href="<?php echo $url; ?>">
		  <?php get_template_part($icon_url); ?>
		</a>
	  </li>
	<?php endforeach; ?>
  </ul>
<?php endif; ?>

```
