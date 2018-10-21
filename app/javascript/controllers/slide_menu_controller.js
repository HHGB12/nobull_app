import {
  Controller
} from "stimulus"

export default class extends Controller {
  toggleSidebar(event) {
    this.targets.find("sidebar").classList.toggle('active')
  }
}