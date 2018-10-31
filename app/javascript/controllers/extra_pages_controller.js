import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["textarea", "selector"]

  initialize() {
    this.updateShowingFields()
  }
  updateShowingFields() {
    let arr = this.textareaTargets.slice(0, this.getSelectorCount())
    this.hideAllFields()
    arr.forEach(el => {
      el.classList.remove('d-hide')
    });
  }
  getSelectorCount() {
    return this.selectorTarget.value
  }
  hideAllFields() {
    this.textareaTargets.forEach(el => {
      el.classList.add('d-hide')
    });
  }



}