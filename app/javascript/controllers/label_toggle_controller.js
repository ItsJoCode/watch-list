import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="label-toggle"
export default class extends Controller {
  static targets = ["emaillabel", "passwordLabel", "email", "password"];

  toggleLabel() {
    this.emaillabelTarget.classList.toggle("hidden");
    this.emaillabelTarget.classList.toggle("label-visible");
    this.emailTarget.classList.toggle("custom-input");
  }

  togglePasswordLabel() {
    this.passwordLabelTarget.classList.toggle("hidden");
    this.passwordLabelTarget.classList.toggle("label-visible");
    this.passwordTarget.classList.toggle("custom-input");
  }

  togglePlaceholder() {
    if (this.emailTarget.placeholder) {
      this.emailTarget.dataset.placeholder = this.emailTarget.placeholder;
      this.emailTarget.placeholder = "";
    } else {
      this.emailTarget.placeholder = this.emailTarget.dataset.placeholder;
      this.emailTarget.dataset.placeholder = "";
    }
  }

  togglePasswordPlaceholder() {
    if (this.passwordTarget.placeholder) {
      this.passwordTarget.dataset.placeholder = this.passwordTarget.placeholder;
      this.passwordTarget.placeholder = "";
    } else {
      this.passwordTarget.placeholder = this.passwordTarget.dataset.placeholder;
      this.passwordTarget.dataset.placeholder = "";
    }
  }
}
