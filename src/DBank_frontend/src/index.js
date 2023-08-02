import {DBank_backend} from "../../declarations/DBank_backend"

window.addEventListener("load",async function(){
  // console.log("finished loading");
  const currentAmount= await DBank_backend.checkBalance();
  document.getElementById("value").innerText=currentAmount 
})

document.querySelector("form").addEventListener("submit", async (event)=>{
  event.preventDefault()
  // console.log("submitted");
  const inputAmount=parseFloat(document.getElementById("input-amount").value)
  const outputAmount=parseFloat(document.getElementById("withdrawal-amount").value)

  // console.log(inputAmount,outputAmount);
  if(inputAmount!=NaN){
  await DBank_backend.topUp(inputAmount)
  }
   if(outputAmount!=NaN){
  await DBank_backend.withdraw(outputAmount)
   }

const currentAmount= await DBank_backend.checkBalance();
  document.getElementById("value").innerText=currentAmount 
})