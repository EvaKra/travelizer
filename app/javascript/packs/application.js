// require("bootstrap")
global.$ = require('jquery')
require("jquery")
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';



import {changePhotoUpload} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    changePhotoUpload();
  });
  
import {characterCount} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    characterCount();
    });

import {changePhotoUploadDest} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    changePhotoUploadDest();
});

