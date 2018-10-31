import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["dropArea", "uploadElem"]


  dragged(e) {
    console.log('draged')
    e.preventDefault()
    e.stopPropagation()

  }

  handleDrop(e) {
    console.log('dropped')
    let dt = e.dataTransfer
    let files = dt.files

    this.handleFiles(files)
  }

  handleFiles(files) {
    ([...files]).forEach(this.uploadFile)
  }

  uploadFile(file) {

  }


}