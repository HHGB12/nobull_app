import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["hiddenObject"]
  toggleHidden(e) {
    this.hiddenObjectTarget.classList.toggle('d-hide')
  }
}