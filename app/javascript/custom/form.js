const textarea = document.getElementById('itinerary_summary');

textarea.addEventListener("keyup", (event) => {
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
        charcount.innerHTML = `${maxLength - currentLength}/${maxLength} characters left`;
        console.log(`${maxLength - currentLength}/${maxLength} characters left`);
    }
});


