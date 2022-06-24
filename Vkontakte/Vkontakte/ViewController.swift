//import UIKit
//
//class ViewController: UIViewController {
//
//
//
//    @IBOutlet weak var textFieldPassword: UITextField!
//    @IBOutlet weak var textFieldLogIn: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationController?.setNavigationBarHidden(true, animated: false)
//
//
//    }
//
//
//
//    @IBAction func tapButtonLogIn(_ sender: Any) {
//
//        guard let login = textFieldLogIn.text,
//              let password = textFieldPassword.text,
//              login == "",
//              password == "" else {return}
//        performSegue(withIdentifier: "Login", sender: nil)
//
//    }
//
//}
