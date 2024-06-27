// lib/controllers/event_listener_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    // TODO: ¡Imprime algo en la consola!
    console.log("hello from controller")
  }

  disable() {
    this.element.setAttribute('disabled', '');
    this.element.innerText = 'Bingo!';
  }
}
