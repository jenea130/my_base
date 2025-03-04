btnComponent

```php
<?php function btnComponent($url, $text, $class_name){ ?>
  <a href="<?php echo $url; ?>" class="btn <?php echo $class_name; ?>"><?php echo $text; ?></a>
<? } ?>
```

подключаешь в functions.php

```php
<?php btnComponent('https://some.com', 'read more', 'btn--dark'); ?>
```

только у тебя должно быть так

```php
<?php function btnComponent($url, $text, $class_name){ ?>
  <a href="<?php echo $url; ?>" class="btn <?php echo $class_name; ?>">
    <span><?php echo $text; ?></span>
    <?php get_template_part( 'template-parts/icons/icon-btn' ); ?>
  </a>
<? } ?>
```