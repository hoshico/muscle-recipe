const pfc = function () {
   
   const selectMeet = document.getElementById("meet");
    selectMeet.addEventListener('change', function (){
      const meetSelectBox = document.getElementById("meet");
      const dataNumP = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-protein");
      const dataNumF = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-fat");
      const dataNumC = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-carbo");
   

      const quantityInput = document.getElementById("quan-input");
      quantityInput.addEventListener("input", () => {
         const inputValue = quantityInput.value;

         const mulProInput = document.getElementById("pro-content")
         const mulFatInput = document.getElementById("fat-content")
         const mulCarboInput = document.getElementById("carbo-content")

         mulProInput.innerHTML = Math.floor(inputValue * dataNumP)
         mulFatInput.innerHTML = Math.floor(inputValue * dataNumF)
         mulCarboInput.innerHTML = Math.floor(inputValue * dataNumC)

         var totalPro = Math.floor(inputValue * dataNumP)

      })   
  })
};


// const mulProInput = document.getElementById("pro-content");
// mulProInput.addEventListener("input", () => {
//    const lastP = mulProInput.value;
//    const totalPro = document.getElementById("total-pro");
//    totalPro.innerHTML = Math.floor(lastP)
// })  






 
window.addEventListener("load", pfc);

 