// lib/controllers/event_listener_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['input']

  static values = {
    feedbackText: String
  }

  connect() {
    // TODO: ¡Imprime algo en la consola!
    console.log("hello from controller 2")
  }

  copy(event) {
    console.log(this.inputTarget.value);
    const input = this.inputTarget.value;
    navigator.clipboard.writeText(input);
    event.currentTarget.disabled = true;
    event.currentTarget.innerText = this.feedbackTextValue;
  }

}
