
const characterCount = () => {

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

  
  export { characterCount, changePhotoUpload, changePhotoUploadDest };
  
