```php
<a href="<?php echo get_the_permalink(23); ?>"><?php echo get_the_title(23); ?></a>

$permalink = get_the_permalink();
    <a class="link" href="<?php echo $permalink; ?>">
```

```php
<div class="page-intro__breadcrumbs">
        <ul class="breadcrumbs">
          <li>
            <a href="<?php echo home_url(); ?>">
              <svg>
              </svg>
            </a>
          </li>
          <li>
            <a href="<?php echo get_the_permalink(23); ?>"><?php echo get_the_title(23); ?></a>
          </li>
          <li><span><?php echo get_the_title(); ?></span></li>
        </ul>
      </div>
```

```php
                <?php foreach ($items as $key => $item) : ?>
                    <?php
                    $title = $item['title'];
                    $text = $item['text'];
                    ?>
                    <div class="accordion__item <?php echo $key === 0 ? 'active' : ''; ?>">
                        <div class="accordion__title"><?php echo $title; ?></div>
                        <div class="accordion__text">
                            <?php echo $text; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
```

```php
<?php the_terms(get_the_ID(), 'tag-case-studies', '', ' / ', '') ?>
```

```php
<?php echo date('Y'); ?> // php
<?php echo current_time('d m Y H:i'); ?> // wordpress
<?php echo current_time('Y'); ?> // wordpress
```

```php
<a href="<?php echo home_url(); ?>">Link</a>
```

