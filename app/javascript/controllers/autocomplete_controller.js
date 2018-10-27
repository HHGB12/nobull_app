import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = [
    "autocomplete",
    "addressField",
  ]



  initialize() {
    this.initAutocomplete();
  }
  initAutocomplete() {
    // Create the autocomplete object, restricting the search to geographical
    // location types.

    autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */
      (document.getElementById('autocomplete')), {});

    // When the user selects an address from the dropdown, populate the address
    // fields in the form.
    autocomplete.addListener('place_changed', () => {
      this.clearAddressFields()
      this.fillInAddress()
    });
  }

  clearAddressFields() {
    let fields = this.addressFieldTargets
    fields.forEach(function (el) {
      el.value = ''
    });
  };
  clearGeoFields() {
    let fields = [this.latTarget, this.lngTarget]
    fields.forEach(function (el) {
      el.value = ''
    });
  }

  fillInAddress() {
    let addressComponents = {
      locality: 'long_name',
      administrative_area_level_1: 'short_name',
      country: 'long_name',
      postal_code: 'short_name'
    }

    // Get the place details from the autocomplete object via 
    // google places api call.
    var place = autocomplete.getPlace();

    this.locationNameTarget.value = place.name
    this.addressLine1Target.value = place.formatted_address.split(',')[0]
    this.phoneNumberTarget.value = place.international_phone_number
    this.latTarget.value = place.geometry.location.lat().toFixed(4)
    this.lngTarget.value = place.geometry.location.lng().toFixed(4)
    this.websiteTarget.value = place.website

    // Get each component of the address from the place details
    // and fill the corresponding field on the form.
    // TODO Replace the following code with the above method.
    for (var i = 0; i < place.address_components.length; i++) {

      var addressType = place.address_components[i].types[0];
      if (addressComponents[addressType]) {
        var val = place.address_components[i][addressComponents[addressType]];
        document.getElementById(addressType).value = val;
      }
    }
    // this.cityTarget.value =
    //   this.regionTarget.value =
    //   this.countryTarget.value =
    //   this.postalCodeTarget.value =

  }


}