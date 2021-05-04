const pfc = function () {
   
   function keisan(){
     
      /* お肉ゾーン */ 
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



      /* お魚ゾーン */
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

      /* 野菜ゾーン */
     const dataVegeNumP = selectVege.options[ selectVege.selectedIndex].getAttribute("data-protein");
     const dataVegeNumF = selectVege.options[ selectVege.selectedIndex].getAttribute("data-fat");
     const dataVegeNumC = selectVege.options[ selectVege.selectedIndex].getAttribute("data-carbo");

     const inputVegeValue = quantityVegeInput.value;

     const mulProVegeInput = document.getElementById("vege-pro-content")
     const mulFatVegeInput = document.getElementById("vege-fat-content")
     const mulCarboVegeInput = document.getElementById("vege-carbo-content")

     mulProVegeInput.innerHTML = Math.floor(inputVegeValue * dataVegeNumP)
     mulFatVegeInput.innerHTML = Math.floor(inputVegeValue * dataVegeNumF)
     mulCarboVegeInput.innerHTML = Math.floor(inputVegeValue * dataVegeNumC)

     /* 乳製品・卵 */
     const dataDairyNumP = selectDairy.options[ selectDairy.selectedIndex].getAttribute("data-protein");
     const dataDairyNumF = selectDairy.options[ selectDairy.selectedIndex].getAttribute("data-fat");
     const dataDairyNumC = selectDairy.options[ selectDairy.selectedIndex].getAttribute("data-carbo");

     const inputDairyValue = quantityDairyInput.value;

     const mulProDairyInput = document.getElementById("dairy-pro-content")
     const mulFatDairyInput = document.getElementById("dairy-fat-content")
     const mulCarboDairyInput = document.getElementById("dairy-carbo-content")

     mulProDairyInput.innerHTML = Math.floor(inputDairyValue * dataDairyNumP)
     mulFatDairyInput.innerHTML = Math.floor(inputDairyValue * dataDairyNumF)
     mulCarboDairyInput.innerHTML = Math.floor(inputDairyValue * dataDairyNumC)




      /* 合計ゾーン */
      /* プロテイン */
     const totalProInput = document.getElementById("total-protein")
     totalProInput.value = Math.floor( inputDairyValue * dataDairyNumP + inputVegeValue * dataVegeNumP + inputFishValue * dataFishNumP + inputValue * dataNumP)
      /* 脂質 */
     const totalFatInput = document.getElementById("total-fat")
     totalFatInput.value = Math.floor( inputDairyValue * dataDairyNumF + inputVegeValue * dataVegeNumF + inputFishValue * dataFishNumF + inputValue * dataNumF)
      /* 炭水化物 */
      const totalCarboInput = document.getElementById("total-carbo")
     totalCarboInput.value = Math.floor( inputDairyValue * dataDairyNumC + inputVegeValue * dataVegeNumC + inputFishValue * dataFishNumC + inputValue * dataNumC)
      
   };

   /* お肉発動 */
   const selectMeet = document.getElementById("meet");
   selectMeet.addEventListener('change', function (){
      keisan();
   })  
   const quantityInput = document.getElementById("quan-input");
   quantityInput.addEventListener("input", () => {
      keisan();
   })   
  
   /* 魚発動 */
   const selectFish = document.getElementById("fish");
   selectFish.addEventListener('change', function (){
      keisan();
   })  
   const quantityFishInput = document.getElementById("fish-quan-input");
   quantityFishInput.addEventListener("input", () => {
      keisan();
   })   

   /* 野菜発動 */
   const selectVege = document.getElementById("vege");
   selectVege.addEventListener('change', function (){
      keisan();
   })  
   const quantityVegeInput = document.getElementById("vege-quan-input");
   quantityVegeInput.addEventListener("input", () => {
      keisan();
   })   

   /* 乳製品・卵発動 */
   const selectDairy = document.getElementById("dairy");
   selectDairy.addEventListener('change', function (){
      keisan();
   })  
   const quantityDairyInput = document.getElementById("dairy-quan-input");
   quantityDairyInput.addEventListener("input", () => {
      keisan();
   })


};
 
window.addEventListener("load", pfc);

 