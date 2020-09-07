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

import {changePhotoUploadAct} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    changePhotoUploadAct();
});

import {changePhotoUploadAcc} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    changePhotoUploadAcc();
});

import {changeAvatar} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    changeAvatar();
});

import {previewImageOnFileSelect} from "../custom/form.js";
document.addEventListener('turbolinks:load', () => {  
    previewImageOnFileSelect();
});

import {initChatroomCable} from "../channels/chatroom_channel.js";
document.addEventListener('turbolinks:load', () => {  
    initChatroomCable();
});

