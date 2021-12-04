import { Controller } from "@hotwired/stimulus"
import { post } from "@rails/request.js"

// Connects to data-controller="purchasable"
export default class extends Controller {
  static values = {
    id: String,
    type: String,
  }
  async click() {
    const response = await post('/cart_items', {
      body: JSON.stringify({
        purchasable_id: this.idValue,
        purchasable_type: this.typeValue,
      })
    })
    if(response.ok) {
      debugger
    }
  }
}
