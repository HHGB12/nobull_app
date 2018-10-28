import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["countField", "countOut"]

  removeTags(value) {
    var txt = value;
    var rex = /(<([^>]+)>)/ig;
    return (txt.replace(rex, ""));
  }
  countCharacters(e) {
    this.countOutTarget.innerText = this.removeTags(this.countFieldTarget.value).length
  }
}