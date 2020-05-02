
// require("bootstrap")
global.$ = require('jquery')
require("jquery")
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("custom/form")
require("custom/user_edit")




//import { renderEditFormOnClick } from '../custom/user_edit';

import "bootstrap";
//import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
 // renderEditFormOnClick();
})

import 'mapbox-gl/dist/mapbox-gl.css';


