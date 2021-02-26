import places from 'places.js';

const initAutocompleteNew = () => {
  const addressInput = document.getElementById('clinic_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocompleteNew };