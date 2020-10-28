function autocomplete(inp, arr) {
          /*the autocomplete function takes two arguments,
          the text field element and an array of possible autocompleted values:*/
          var currentFocus;
          /*execute a function when someone writes in the text field:*/
          inp.addEventListener("input", function(e) {
              var a, b, i, val = this.value;
              /*close any already open lists of autocompleted values*/
              closeAllLists();
              if (!val) { return false;}
              currentFocus = -1;
              /*create a DIV element that will contain the items (values):*/
              a = document.createElement("DIV");
              a.setAttribute("id", this.id + "autocomplete-list");
              a.setAttribute("class", "autocomplete-items");
              /*append the DIV element as a child of the autocomplete container:*/
              this.parentNode.appendChild(a);
              /*for each item in the array...*/
              for (i = 0; i < arr.length; i++) {
                /*check if the item starts with the same letters as the text field value:*/
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                  /*create a DIV element for each matching element:*/
                  b = document.createElement("DIV");
                  /*make the matching letters bold:*/
                  b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                  b.innerHTML += arr[i].substr(val.length);
                  /*insert a input field that will hold the current array item's value:*/
                  b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                  /*execute a function when someone clicks on the item value (DIV element):*/
                  b.addEventListener("click", function(e) {
                      /*insert the value for the autocomplete text field:*/
                      inp.value = this.getElementsByTagName("input")[0].value;
                      /*close the list of autocompleted values,
                      (or any other open lists of autocompleted values:*/
                      closeAllLists();
                  });
                  a.appendChild(b);
                }
              }
          });
          /*execute a function presses a key on the keyboard:*/
          inp.addEventListener("keydown", function(e) {
              var x = document.getElementById(this.id + "autocomplete-list");
              if (x) x = x.getElementsByTagName("div");
              if (e.keyCode == 40) {
                /*If the arrow DOWN key is pressed,
                increase the currentFocus variable:*/
                currentFocus++;
                /*and and make the current item more visible:*/
                addActive(x);
              } else if (e.keyCode == 38) { //up
                /*If the arrow UP key is pressed,
                decrease the currentFocus variable:*/
                currentFocus--;
                /*and and make the current item more visible:*/
                addActive(x);
              } else if (e.keyCode == 13) {
                /*If the ENTER key is pressed, prevent the form from being submitted,*/
                e.preventDefault();
                if (currentFocus > -1) {
                  /*and simulate a click on the "active" item:*/
                  if (x) x[currentFocus].click();
                }
              }
          });
          function addActive(x) {
            /*a function to classify an item as "active":*/
            if (!x) return false;
            /*start by removing the "active" class on all items:*/
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            /*add class "autocomplete-active":*/
            x[currentFocus].classList.add("autocomplete-active");
          }
          function removeActive(x) {
            /*a function to remove the "active" class from all autocomplete items:*/
            for (var i = 0; i < x.length; i++) {
              x[i].classList.remove("autocomplete-active");
            }
          }
          function closeAllLists(elmnt) {
            /*close all autocomplete lists in the document,
            except the one passed as an argument:*/
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
              if (elmnt != x[i] && elmnt != inp) {
                x[i].parentNode.removeChild(x[i]);
              }
            }
          }
          /*execute a function when someone clicks in the document:*/
          document.addEventListener("click", function (e) {
              closeAllLists(e.target);
          });
        }

        /*An array containing all the country names in the world:*/
        var countries = ["Rice (Brown)-353.7", "Rice Parboiled-351.5", "Rice Raw milled-356.3", "Wheat whole-321.9", "Wheat flour-320.2", "Bulgar wheat-341.7", "Refined flour-351.8", "Ragi-320.7", "Rice flakes-353.7", "Wheat semolina-333.6", "Wheat vermicelli-332.6", "Barley-315.7", "Bajra-347.9", "Jowar-334.1", "Quinoa-328.3", "Amaranth seed Black-356.1", "Bengal gram dal-329.1", "Bengal gram whole-287", "Black gram whole-291.3", "Cow pea brown-320.2", "Cow pea white-320.2", "Green gram dal-325.7", "Green gram whole-293.7", "Horse gram whole-329.5", "Lentil dal-322.4", "Peas dry-303.2", "Rajma red-299.2", "Red gram dal-330.7", "Red gram whole-273.9","Soya bean brown-381.4", "Amaranth leaves-30.5","Beet greens-34.6", "Brussels sprouts-44.2", "Cabbage Chinese-17.9", "Cabbage green-21.5", "Cauliflower leaves-35.4", "Colocasia leaves green-43.4", "Drumstick leaves-67.3", "Fenugreek leaves-34.4", "Lettuce-21.7", "Mustard leaves-30.3", "Parsley-72.8", "Radish leaves-26.05", "Spinach-24.3", "Ash gourd-17.4", "Bamboo shoot tender-16.2", "Bitter gourd-20.7", "Bottle gourd-10.9", "Brinjal-25.3", "Broad beans-29.3", "Capsicum-16.2", "Cauliflower-22.9", "Celery stalk-16.4", "Cho-Cho-Marrow-18.8", "Cluster beans-40.1", "Cucumber-19.5", "French beans-24.3", "Knol-Khol-16", "Kovai-19.1", "Ladies finger-27.4", "Parwar-24.1", "Peas,fresh-81.2", "Plantain stem-39.4", "Pumpkin-23.1", "Ridge gourd-13.1", "Snake gourd-12.4", "Tomato-20.7", "Zucchini, green-20", "Beetroot-35.6", "Carrot-33.2", "Potato brown-69.7", "Radish, white-32.2", "Sweet potato,brown-108.9", "Tapioca-79.8", "Yam-84.3", "Apple-62.3", "Apricot, dried-31.5", "Avocado-144.3", "Banana-110.6", "Blackberry fruit-54.2", "Cherries red-59.7", "Blackcurrants-54.2", "Custard apple-98.9", "Dates, dry-320.2", "Fig-81.5", "Grapes-60.7", "Guava-32.2", "Jack fruit-72.1", "Sweet lime-27.2", "Litchi-53.7", "Mango-41.8", "Musk melon-23.1", "Orange-37.2", "Papaya-23.9", "Peach-40.1", "Pear-37.5", "Pineapple-43", "Plum-56.8", "Pomegranate-54.7", "Raisins, black-305.6", "Sapota-73.3", "Strawberry-24.6", "Watermelon-20.3", "Wood apple-78.1", "Green chillies-45.6", "Coriander seeds-268.8", "Curry leaves-63.5", "Garlic-123.8", "Ginger, fresh-54.9", "Mint leaves-37","Onion-48", "Asafoetida-331.5", "Cardamom, green-255", "Red chillies-236.6", "Cloves-186.6","Cumin seeds-304.4", "Black cumin (Kalonji)-345", "Fenugreek seeds-234.9", "Nutmeg-463.6","Basil seeds-22", "Anise seeds-153.3", "Pepper, black-217.4", "Poppy seeds-422.5", "Turmeric powder-280.5", "Almond-609.2", "Arecanut dried-350.6", "Cashew nut-582.6", "Coconut dry-624", "Coconut fresh-408.9", "Gingelly seeds-507.6", "Ground nut-520", "Linseeds-443.8", "Pine seed-594.1", "Pistachio nuts-539.4", "Sunflower seeds-586.2", "Walnut-671", "Flax seeds-534","Chia seeds-486", "Jaggery cane-353.7", "Sugarcane, juice-57.8", "Milk, whole, buffalo-107.3","Milk, whole, cow-72.8", "Paneer-257.8", "Khoa-315.9", "Soy milk-54", "Tofu-76", "Egg, whole, raw-134.7", "Egg white, raw-44.6", "Egg, yolk, raw-296.8", "Chicken, leg, skinless-383.6", "Chicken, thigh, skinless-199.8", "Chicken, breast, skinless-168.2", "Chicken, liver-123.8", "Goat-188", "Sheep, shoulder-200.7", "Sheep, chops-118.5", "Beef, chops-139.8", "Pork, shoulder-237.3", "Pork, chops-178.7", "Cat fish-108.9", "Mackerel-101", "Matha-92.9", "Pomfret-123", "Salmon-172.3", "Sardine-152.2", "Shark-95.1", "Silver fish-132.6", "Catla-94.1", "Tuna-112.3","Crab-81.9", "Lobster-89.6", "Oyster-60.2", "Tiger prawns-65.2", "Clam-58", "Squid-80", "Ghee-920", "Butter-717", "Oil-900", "Cheese-264.5", "Coconut water-15.2"];


        /*initiate the autocomplete function on the "source-station" element, and pass along the countries array as possible autocomplete values:*/
        autocomplete(document.getElementById("diet-intake"), countries);
        autocomplete(document.getElementById("destination-station"), countries);
