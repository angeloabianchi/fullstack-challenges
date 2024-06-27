/* eslint-disable import/extensions */
import { Application } from "@hotwired/stimulus";

// TODO: Import the Stimulus Controller here
import EventListenerController from "./controllers/event_listener_controller.js";

window.Stimulus = Application.start();
// TODO: Register your Stimulus Controller below
window.Stimulus.register("event-listener", EventListenerController);
