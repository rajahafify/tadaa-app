import { Controller } from '@hotwired/stimulus'

import Swiper from "swiper"

export default class extends Controller {
  connect() {
    console.log('swiper_controller.js')
    const swiper = new Swiper(".swiper-container", {
      spaceBetween: 15
    })
  }
}
