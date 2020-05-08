
// require("bootstrap")
global.$ = require('jquery')
require("jquery")
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("custom/user_edit")
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

// import changePhotoUpload from '../custom/form';
// changePhotoUpload();

// import characterCount from '../custom/form';
// characterCount();

import { changePhotoUpload, characterCount } from '../custom/form';
changePhotoUpload();
characterCount();

// document.addEventListener('turbolinks:load', () => {
    
// });




