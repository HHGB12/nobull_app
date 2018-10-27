import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["hiddenObject", "checkbox"]

  initialize() {
    if (this.checkboxTarget.checked) {
      this.toggleHidden()
    }

  }
  toggleHidden(e) {
    this.hiddenObjectTarget.classList.toggle('d-hide')
  }
}