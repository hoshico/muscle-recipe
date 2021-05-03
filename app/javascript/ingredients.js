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
         console.log(inputValue * dataNumP);
         console.log(inputValue * dataNumF);
         console.log(inputValue * dataNumC);
      })   
  })
};
 
window.addEventListener("load", pfc);
 