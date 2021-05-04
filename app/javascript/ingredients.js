const pfc = function () {
   
   function keisan(){
     
     const dataNumP = selectMeet.options[ selectMeet.selectedIndex].getAttribute("data-protein");
     const dataNumF = selectMeet.options[ selectMeet.selectedIndex].getAttribute("data-fat");
     const dataNumC = selectMeet.options[ selectMeet.selectedIndex].getAttribute("data-carbo");

     const inputValue = quantityInput.value;

     const mulProInput = document.getElementById("pro-content")
     const mulFatInput = document.getElementById("fat-content")
     const mulCarboInput = document.getElementById("carbo-content")

     mulProInput.innerHTML = Math.floor(inputValue * dataNumP)
     mulFatInput.innerHTML = Math.floor(inputValue * dataNumF)
     mulCarboInput.innerHTML = Math.floor(inputValue * dataNumC)




     const dataFishNumP = selectFish.options[ selectFish.selectedIndex].getAttribute("data-protein");
     const dataFishNumF = selectFish.options[ selectFish.selectedIndex].getAttribute("data-fat");
     const dataFishNumC = selectFish.options[ selectFish.selectedIndex].getAttribute("data-carbo");

     const inputFishValue = quantityFishInput.value;

     const mulProFishInput = document.getElementById("fish-pro-content")
     const mulFatFishInput = document.getElementById("fish-fat-content")
     const mulCarboFishInput = document.getElementById("fish-carbo-content")

     mulProFishInput.innerHTML = Math.floor(inputFishValue * dataFishNumP)
     mulFatFishInput.innerHTML = Math.floor(inputFishValue * dataFishNumF)
     mulCarboFishInput.innerHTML = Math.floor(inputFishValue * dataFishNumC)


     const totalProInput = document.getElementById("total-protein")
     totalProInput.value = Math.floor(inputFishValue * dataFishNumP + inputValue * dataNumP)


   };

   const selectMeet = document.getElementById("meet");
   selectMeet.addEventListener('change', function (){
      keisan();
   })  
   const quantityInput = document.getElementById("quan-input");
   quantityInput.addEventListener("input", () => {
      keisan();
   })   
  

   const selectFish = document.getElementById("fish");
   selectFish.addEventListener('change', function (){
      keisan();
   })  
   const quantityFishInput = document.getElementById("fish-quan-input");
   quantityFishInput.addEventListener("input", () => {
      keisan();
   })   
};



 
window.addEventListener("load", pfc);

 