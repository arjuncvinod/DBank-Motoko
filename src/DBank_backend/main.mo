import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";
actor DBank{
stable var currentvalue:Float=2000;
  currentvalue:=400;
  let id=4572853543753754;
 stable var startTime=Time.now();
 startTime:=Time.now();
 Debug.print(debug_show(startTime));


  public func topUp(amount:Float){
    currentvalue+=amount;
    Debug.print(debug_show(currentvalue));
  };

  public func withdraw(amount:Float){
    if(amount < currentvalue){
    currentvalue-=amount;
    Debug.print(debug_show(currentvalue))
    }else{
      Debug.print("Not enough Money")
    }
  };
  public query func checkBalance(): async Float {
    return currentvalue;
  };
  public func compound(){
    var currentTime = Time.now();
    var timeElapsedNs = currentTime - startTime;
    var timeElapsedS = timeElapsedNs / 1000000000;
    Debug.print(debug_show(timeElapsedS));

    currentvalue := currentvalue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime:=currentTime;
  }
}
