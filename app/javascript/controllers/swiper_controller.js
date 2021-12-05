import { Controller } from '@hotwired/stimulus'

import Swiper from 'swiper/bundle'

export default class extends Controller {
  connect() {
     this.swiper = new Swiper(".swiper-container", {
      spaceBetween: 15,
      effects: "cube",
      loop: true,

       history: {
        key: 'talent',
        replaceState: false,
       },

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

  removeSlide(event) {
    const index = this.swiper.realIndex
    this.swiper.removeSlide(index)
  }
}
