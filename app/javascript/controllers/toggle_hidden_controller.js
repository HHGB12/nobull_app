import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["hiddenObject", "toggleable"]

  initialize() {
    // With this in mind, always start with hiddenObject as status = hidden.
    if (this.hasToggleableTarget) {
      if (this.toggleableTarget.checked || this.toggleableTarget.selected) {
        this.toggleHidden()
      }
    }
  }

  toggleHidden(e) {
    this.hiddenObjectTarget.classList.toggle('d-hide')
  }
}