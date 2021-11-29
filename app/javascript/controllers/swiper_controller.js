import { Controller } from '@hotwired/stimulus'

import Swiper from 'swiper/bundle'

export default class extends Controller {
  connect() {
    console.log('swiper_controller.js')
    const swiper = new Swiper(".swiper-container", {
      spaceBetween: 15,

      pagination: {
        el: '.swiper-pagination',
      },

      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

      scrollbar: {
        el: '.swiper-scrollbar',
      },
    })
  }
}
