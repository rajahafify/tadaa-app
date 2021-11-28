// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import * as bootstrap from "bootstrap"

import Swiper from "swiper"

const swiper = new Swiper(".swiper-container", {
  spaceBetween: 10
})

// document.addEventListener('turbolinks:load', function() {
//   
// });
