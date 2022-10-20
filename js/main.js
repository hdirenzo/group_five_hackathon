// Imports
import { getData } from "./modules/dataMiner.js";

(() => {

    console.log('main run...ok')

    // Variables
    let btnArrow = document.querySelector(".arrow");
    let featuresDiv = document.querySelector(".featuresDiv");
    let featuresContent = document.querySelector(".featuresContent");

    // Functions
     function getJSONData (featuresList) {
         console.log("getJSONData...ok");

         // Make the thing an object with keys
         let productSpecsObj = Object.keys(featuresList);

         // Run a loop for each item in the JSON file. We're passing in a variable called objectID that will do things
         productSpecsObj.forEach(objectID => {
             // admittedly, this is stupid but it works
                 // target the first child, then target the children
             let panel = featuresContent.cloneNode(true),
              featuresStuff = panel.children;

             panel.firstElementChild.id = objectID;

             // populate our template items with the data from the JSON file in order of appearance
             featuresStuff[1].textContent = featuresList[objectID].name;
             featuresStuff[2].textContent = featuresList[objectID].year;
             featuresStuff[3].textContent = featuresList[objectID].brand;
             featuresStuff[4].textContent = featuresList[objectID].type;
             featuresStuff[5].textContent = featuresList[objectID].material;
             featuresStuff[6].textContent = featuresList[objectID].price;
             featuresStuff[7].textContent = featuresList[objectID].colour;
             featuresStuff[8].textContent = featuresList[objectID].install;
             featuresStuff[9].textContent = featuresList[objectID].shipment;
             featuresStuff[10].textContent = featuresList[objectID].heating;
             featuresStuff[11].textContent = featuresList[objectID].accessories;

             // add the completed element to the page
             featuresDiv.appendChild(panel);
         })
     }

     function moveCarousel() {
        
     }

    // function flipCard(favThing) {

    //     // Simple gsap animation
    //     gsap.to(`#${favThing}`, {y:50, duration: 0.1,})
    //     gsap.to(`#${favThing}`, {y:0, duration: 0.1, delay:0.1,})

    //     // We are seeing if there are any classes with cardHide inside our card, and making a removing and adding function
    //     let cardIdentifier = document.querySelector(`#${favThing}`);
    //     let classAdder = cardIdentifier.querySelectorAll(".cardHide");
    //     let classRemover = cardIdentifier.querySelectorAll(".cardInfo");

    //     // if the length of the classAdder array is more than one, we have bitches to yeet out of there
    //     if(classAdder.length > 1) {
    //         console.log("card flipped to true");

    //         // Data Editing
    //         // A loop that adds the visible information to each element, and removes the previous one
    //         classAdder.forEach(classAdder => {
    //             classAdder.classList.add('cardInfo');
    //             classAdder.classList.remove('cardHide');
    //         })

    //         // Then styles the card in the intended way
    //         cardIdentifier.querySelector('.card').style.backgroundColor = "black";
    //         cardIdentifier.querySelector('.card').style.opacity = "0.80";

    //     // if the lentgh isn't more than one, it has to be zero, so there are the other kind of bitches to yeet 
    //     } else {
    //         console.log("card flipped to false");

    //         // Loop that does the same as above just the inverse
    //         classRemover.forEach(classRemover => {
    //             classRemover.classList.add('cardHide');
    //             classRemover.classList.remove('cardInfo');
    //         })

    //         // Same as above
    //         cardIdentifier.querySelector('.card').style.backgroundColor = "transparent";
    //         cardIdentifier.querySelector('.card').style.opacity = "1";

    //     }
    // }

    btnArrow.addEventListener("click", moveCarousel());

    getData(`./data.json`, getJSONData);
})();