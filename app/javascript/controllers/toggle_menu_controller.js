import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["menu", "icon"]


  toggleMenu() {
    this.targets.find("menu").classList.toggle('d-hide')
    this.targets.find("icon").classList.toggle('icon-arrow-down')
    this.targets.find("icon").classList.toggle('icon-arrow-right')
  }



}