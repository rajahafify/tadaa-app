import { Controller } from '@hotwired/stimulus'

import Swiper from 'swiper/bundle'

export default class extends Controller {
  connect() {
    const swiper = new Swiper(".swiper-container", {
      spaceBetween: 15,
      effects: "cube",
      loop: true,

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
