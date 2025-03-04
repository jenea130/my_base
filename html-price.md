```html
<div class="card__price" data-value="EUR">500</div>
```
```css
.card__price::before {
	content: attr(data-value);
}
```