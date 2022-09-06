import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="location-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["location"]

  connect() {
    console.log(this.locationTarget)
    this.geocoder = new MapboxGeocoder({
      accessToken: this.locationTarget.dataset.key,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  disconnect() {
    this.geocoder.onRemove()
  }


#setInputValue(event) {
  console.log("Set")
  this.locationTarget.value = event.result["Search location"]
}

#clearInputValue() {
  console.log("Clear")
  this.locationTarget.value = "Search location"
}
}
