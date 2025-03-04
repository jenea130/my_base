- jquery
- slick.min.js
- slick.scss

my.scss
	@import "../libs/slick.scss";
index.pug
	script(src="assets/libs/slick.min.js")
	script(src="assets/libs/jquery-3.7.0.min.js")

script(src="assets/jquery/custom-jquery.js")

```jquery
$(document).ready(function () {
	const slider = $(".gallery__slider");

	if (slider) {
		gallerySlider();
	}

	function gallerySlider() {
		slider.slick({
			infinite: true,
			slidesToShow: 3,
			slidesToScroll: 1,
			speed: 1000,
			arrows: false,
			dots: false,
			autoplay: true,
			autoplaySpeed: 2000,
			easing: "ease",
			responsive: [
				{
					breakpoint: 992,
					settings: {
						slidesToShow: 2,
					},
				},
				{
					breakpoint: 576,
					settings: {
						slidesToShow: 1,
					},
				},
			],
		});
	}
});
```

.slick-list {
	margin: 0 -1.5rem;
}

.studies .slick-slide {
	margin: 0 1.5rem;
}

```jquery
const slider = $(".studies__wrap");
if (slider) {
	studiesSlider();
}
function studiesSlider() {
	slider.slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		speed: 1000,
		arrows: false,
		dots: false,
		// variableWidth: true
		responsive: [
			{
				breakpoint: 1200,
				settings: {
					slidesToShow: 2,
				},
			},
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 1,
				},
			},
		],
	});
	const studies__arrow_prev = $(".studies__arrow--prev");
	const studies__arrow_next = $(".studies__arrow--next");
	studies__arrow_prev.on("click", function () {
		slider.slick("slickPrev");
	});
	studies__arrow_next.on("click", function () {
		slider.slick("slickNext");
	});
}
```
