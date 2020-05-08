

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


// style of photo upload button new itinerary

const changePhotoUpload = () => {

const realFileBtn = document.getElementById("itinerary_photos");
const customBtn = document.getElementById("custom-button");
const customTxt = document.getElementById("custom-text");

customBtn.addEventListener("click", function() {
  realFileBtn.click();
});

realFileBtn.addEventListener("change", function() {
  if (realFileBtn.files) {
    customTxt.innerHTML = `${realFileBtn.files.length} attached`;
  } else {
    customTxt.innerHTML = "No file chosen, yet.";
  }
});
}
export default changePhotoUpload;
// style of photo upload button destination photos



