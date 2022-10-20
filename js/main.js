// Imports
import { getData } from "./modules/dataMiner.js";

(() => {

    // Variables
    let imageShowcase = document.querySelector("#clickableImage");
    let showcase = document.querySelector(".showcase");
    let featuresDiv = document.querySelector("#featuresDiv");
    let featuresContent = document.querySelector("#JSONFeatures");
    let imageCount = 1;

    // Functions
     function getJSONData (featuresList) {
         console.log("getJSONData...ok");

         // Make the thing an object with keys
         let productSpecsObj = Object.keys(featuresList);

         // Run a loop for each item in the JSON file. We're passing in a variable called objectID that will do things
         productSpecsObj.forEach(objectID => {
            // Make a copy of the panel thing and let the stuff equal the children
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
        if (imageCount == 6) {
            imageCount = 1;
        } else {
            imageCount++;
        }
            showcase.firstElementChild.src = `images/3d_renders/smart_thermostat_${imageCount}.jpg`;
        console.log(imageCount);
     }

imageShowcase.addEventListener("click", (event)=>moveCarousel());
getData(`./data.json`, getJSONData);
})();