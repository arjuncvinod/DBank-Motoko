import Debug "mo:base/Debug";
actor DBank{
  var currentvalue=300;
  currentvalue:=100;
  let id=4572853543753754;


  public func topUp(){
    currentvalue+=2;
    Debug.print(debug_show(currentvalue));
  };
}
