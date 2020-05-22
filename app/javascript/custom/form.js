
const characterCount = () => {
  console.log("charctercount");
  const textbox = document.getElementById('itinerary_summary');

  textbox.addEventListener('keyup', (event) => {
      const target = event.currentTarget;
      const maxLength = target.getAttribute("maxlength");
      const currentLength = target.value.length;

      if (currentLength >= maxLength) {

          // return console.log("You have reached the maximum number of characters.");
          const charcount = document.getElementById('charcount');
          charcount.innerHTML = "You have reached the maximum number of characters.";
      } else {

          // const charsLeft = maxLength - currentLength;
          // document.getElementById('charcount');
          charcount.innerHTML = `${maxLength - currentLength} characters left`;
          console.log(`${maxLength - currentLength} characters left`);
      }
  });
}



// style of photo upload button new itinerary

const changePhotoUpload = () => {
  console.log("Itineraryupload");

const realFileBtn = document.getElementById("itinerary_photos");
const customBtn = document.getElementById("custom-button");
const customTxt = document.getElementById("custom-text");

  customBtn.addEventListener('click', () => {
    
    realFileBtn.click();
});

realFileBtn.addEventListener('change', () => {
  
  if (realFileBtn.files) {
    customTxt.innerHTML = `${realFileBtn.files.length} attached`;
  } else {
    customTxt.innerHTML = "No file chosen, yet.";
  }
});
}



// style of photo upload button destination photos

const changePhotoUploadDest = () => {
  console.log("Destupload");

  const customBtnDest = document.getElementById("custom-button-dest");
  const realFileBtnDest = document.getElementById("destination_photos");
  const customTxtDest = document.getElementById("custom-text-dest");

  if (customBtnDest) {
  customBtnDest.addEventListener("click", () => {
    realFileBtnDest.click();
  });
  }
  
  realFileBtnDest.addEventListener("change", () => {
   
    if (realFileBtnDest.files) {
      customTxtDest.innerHTML = `${realFileBtnDest.files.length} attached`;
    } else {
      customTxtDest.innerHTML = "No file chosen, yet.";
    }
  });
  }


// style of photo upload button activity photos

  const changePhotoUploadAct = () => {
    console.log("Actstupload");
  
    const customBtnAct = document.getElementById("custom-button-act");
    const realFileBtnAct = document.getElementById("activity_photos");
    const customTxtAct = document.getElementById("custom-text-act");
  
    if (customBtnAct) {
    customBtnAct.addEventListener("click", () => {
      realFileBtnAct.click();
    });
    }
    
    realFileBtnAct.addEventListener("change", () => {
     
      if (realFileBtnAct.files) {
        customTxtAct.innerHTML = `${realFileBtnAct.files.length} attached`;
      } else {
        customTxtAct.innerHTML = "No file chosen, yet.";
      }
    });
    }

// style of photo upload button accommodation photos

const changePhotoUploadAcc = () => {
  console.log("Actstupload");

  const customBtnAcc = document.getElementById("custom-button-acc");
  const realFileBtnAcc = document.getElementById("accommodation_photos");
  const customTxtAcc = document.getElementById("custom-text-acc");

  if (customBtnAcc) {
  customBtnAcc.addEventListener("click", () => {
    realFileBtnAcc.click();
  });
  }
  
  realFileBtnAcc.addEventListener("change", () => {
   
    if (realFileBtnAcc.files) {
      customTxtAcc.innerHTML = `${realFileBtnAcc.files.length} attached`;
    } else {
      customTxtAcc.innerHTML = "No file chosen, yet.";
    }
  });
  }
    

  // avatar change

  const changeAvatar = () => {
    console.log("Avatar");
  
    const customBtnAvatar = document.getElementById("custom-button-avatar");
    const realFileBtnAvatar = document.getElementById("user_avatar");
    const customTxtAvatar = document.getElementById("custom-text-avatar");
  
    if (customBtnAvatar) {
    customBtnAvatar.addEventListener("click", () => {
      realFileBtnAvatar.click();
    });
    }
    
    realFileBtnAvatar.addEventListener("change", () => {
     
      if (realFileBtnAvatar.files) {
        customTxtAvatar.innerHTML = `${realFileBtnAvatar.files.length} attached`;
      } else {
        customTxtAvatar.innerHTML = "No file chosen, yet.";
      }
    });
    }



    // app/javascript/components/photo_preview.js
const previewImageOnFileSelect = () => {
  // we select the photo input
  const input = document.getElementById('user_avatar');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      displayPreview(input);
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.getElementById('photo-preview').src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.getElementById('photo-preview').classList.remove('hidden');
    document.querySelector('.avatar-profile').classList.add('hidden');
  }
}
 
  export { characterCount, changePhotoUpload, changePhotoUploadDest, changePhotoUploadAct, changePhotoUploadAcc, changeAvatar, previewImageOnFileSelect };
  
