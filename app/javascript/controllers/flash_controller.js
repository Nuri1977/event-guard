import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "flashdisplay" ]

  connect(){
    setTimeout(() => this.flashClose(), 5000)
 }

  flashClose() {
    this.flashdisplayTarget.classList.add("hidden")
  }

}