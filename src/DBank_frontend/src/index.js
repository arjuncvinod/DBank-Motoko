import {DBank_backend, dBank_backend} from "../../declarations/DBank_backend"

window.addEventListener("load",async function(){
  // console.log("finished loading");
  const currentAmount= await DBank_backend.checkBalance();
  document.getElementById("value").innerText=currentAmount
})