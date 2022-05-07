import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Time "mo:base/Time";

actor DBank {
  stable var currentValue: Float  = 300;
  currentValue := 300;

  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 321093120932910;

  // Debug.print(debug_show(id))

  public func topUp(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue))
  };
  
  // Allow users to withdrawl an amount from the currentValue
  // Decrease the currentValue by the amount

  public func withdrawl(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if(tempValue >= 0) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue))
    } else {
      Debug.print("Amount too large, currentValue less than zero")
    }
  };
  
  public query func checkBalance():  async Float {
    return currentValue;
  };

  // topUp();

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    // 1.01 Interest rate
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }
}

