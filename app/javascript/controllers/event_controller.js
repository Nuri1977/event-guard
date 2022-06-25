import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "eventscroll" ]

  eventScroll() {
    this.eventscrollTarget.scrollIntoView({ behavior: "smooth" });
  }
}
