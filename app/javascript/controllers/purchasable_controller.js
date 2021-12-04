import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

// Connects to data-controller="purchasable"
export default class extends Controller {
  click() {
    console.log('clicked')
  }
}
