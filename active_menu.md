- main.js
```js
import streetMap from "./modules/streetMap";
import filterDrinks from "./modules/filterDrinks";
import filterBeer from "./modules/filterBeer";
import activePage from "./modules/activePage";
import toggleMenu from "./modules/header/toggleMenu";
import modalContent from "./modules/modalContent";

window.addEventListener("DOMContentLoaded", function () {
  const modal_content = document.querySelector("#js-modal-content");

  if (modal_content) {
    modalContent();
  }
  activePage();
  toggleMenu();
  streetMap();
  filterBeer();
  console.log("some thing for me");
  filterDrinks();
});
```

- ./modules/activePage
```js
export default function activePage() {

  let activePage = window.location.href;
  const links = document.querySelectorAll(".menu__link");

  
  links.forEach((link) => {
    if (link == activePage) {
      link.classList.add('active');
    }
  });
}
```

```css
a:hover,
a.active {
	...
}
```

```pug
a.menu__link(href="/our-beer.html") Le nostre birre
```
