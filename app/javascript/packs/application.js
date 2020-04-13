require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
//import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

import 'mapbox-gl/dist/mapbox-gl.css';
