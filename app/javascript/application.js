// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

// install swiper js
import Swiper from "swiper"
// install swipper css
import "swiper/css"

const swiper = new Swiper(".swiper-container", {
    direction: "horizontal",
    loop: true,
    mousewheel: false,
    freeMode: true,
})
