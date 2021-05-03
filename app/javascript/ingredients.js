const pfc = function () {
   
   const selectMeet = document.getElementById("meet");
    selectMeet.addEventListener('change', function (){
      const meetSelectBox = document.getElementById("meet");
      const dataNumP = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-protein");
      const dataNumF = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-fat");
      const dataNumC = meetSelectBox.options[ meetSelectBox.selectedIndex].getAttribute("data-carbo");
      // console.log(dataNumP);
      // console.log(dataNumF);
      // console.log(dataNumC);

      const quantityInput = document.getElementById("quan-input");
      quantityInput.addEventListener("input", () => {
         const inputValue = quantityInput.value;

         const mulProInput = document.getElementById("pro-content")
         const mulFatInput = document.getElementById("fat-content")
         const mulCarboInput = document.getElementById("carbo-content")

         mulProInput.innerHTML = Math.floor(inputValue * dataNumP)
         mulFatInput.innerHTML = Math.floor(inputValue * dataNumF)
         mulCarboInput.innerHTML = Math.floor(inputValue * dataNumC)
         // console.log(inputValue * dataNumP);
         // console.log(inputValue * dataNumF);
         // console.log(inputValue * dataNumC);
      })   
  })
};

// const totalPro = document.getElementById("total-pro");
// totalPro.innerHTML = Math.floor(inputValue * dataNumP)
 
window.addEventListener("load", pfc);
 