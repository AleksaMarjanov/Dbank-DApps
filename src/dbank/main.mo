import Debug "mo:base/Debug";

actor DBank {
  var currentValue  = 300;
  currentValue := 100;

  let id = 321093120932910;

  // Debug.print(debug_show(id))

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue))
  };
  
  // Allow users to withdrawl an amount from the currentValue

  public func withdrawl(amount: Nat) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue))
  };
  // Decrease the currentValue by the amount



  // topUp();
}

