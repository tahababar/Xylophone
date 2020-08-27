//
//  ViewController.swift
//  Xylophone
//



/*functions in swift:-
func myFunction(parameter: DataType){
 //Do something with parameter mentioned in brackets in signature
 }
 //u can also write functions without using parameters
*/
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad();
    }

    @IBAction func keyPressed(_ sender: UIButton) { //press ctrl and drag a button to this place here to create a function, to attach all buttons to this, press ctrl to the dot in right, and attach with each button one by one
        playSound(soundName: sender.currentTitle!); //calling the function, added ! because otherwise error comes..added to confirm that we have checked that all buttons will indeed have a title
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) //for time delays..here for alpha to normalize
        {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
    }
     
    }
    
    func playSound(soundName: String) {  //in swift, we declare functions using func, and can use them by calling them anywhere above or below function
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav");
        player = try! AVAudioPlayer(contentsOf: url!);
        player.play();
                
    }
}

