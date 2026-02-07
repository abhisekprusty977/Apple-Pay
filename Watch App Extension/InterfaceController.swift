import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    let paymentHandler = PaymentHandler()

    @IBAction func payPressed(sender: AnyObject) {
        paymentHandler.startPayment() { (success) in
            if success {
                self.pushController(withName: "Confirmation", context: nil)
            }
        }
    }

}
