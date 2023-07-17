import Debug "mo:base/Debug";
actor DBank{
  var currentvalue=300;
  currentvalue:=400;
  let id=4572853543753754;


  public func topUp(amount:Nat){
    currentvalue+=amount;
    Debug.print(debug_show(currentvalue));
  };

  public func withdraw(amount:Nat){
    currentvalue-=amount;
    Debug.print(debug_show(currentvalue))
  }
}
