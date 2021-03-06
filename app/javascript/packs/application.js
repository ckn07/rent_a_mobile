import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

flatpickr(".datePicker", {});
initMapbox();

import { initAutocomplete } from '../plugins/init_autocomplete.js';
import { initAutocomplete2 } from '../plugins/init_autocomplete.js';
initAutocomplete();
initAutocomplete2();
