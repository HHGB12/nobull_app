import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = [
    "navbar", "body"
  ]

  initialize() {
    if (this.bodyTarget.classList.contains('index')) {
      this.navbarTarget.classList.add('is-not-fixed')
    }
  }

  onScroll() {
    if (window.scrollY > 200) {
      this.navbarTarget.classList.remove('is-not-fixed')
      this.navbarTarget.classList.add('is-fixed')
    } else {
      this.navbarTarget.classList.remove('is-fixed')
      this.navbarTarget.classList.add('is-not-fixed')
    }
  }
}