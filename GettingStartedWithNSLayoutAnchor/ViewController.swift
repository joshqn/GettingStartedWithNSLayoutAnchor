//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

class ViewController: UIViewController {
  
  // Variable we'll use to hold the constraints we'd like to activate
  var activeConstraints:[NSLayoutConstraint] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // [1]
    let myView = UIView(frame: .zero)
    // [2]
    myView.backgroundColor = UIColor(red: 252/256, green: 160/256, blue: 61/256, alpha: 1.0)
    // [3]
    myView.translatesAutoresizingMaskIntoConstraints = false
    // [4]
    self.view.addSubview(myView)
    
    /*
    // NSLayoutConstraint Array with the constraints for myView
    let viewConstraints = [
      NSLayoutConstraint(item: myView, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0),
      NSLayoutConstraint(item: myView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 0),
      NSLayoutConstraint(item: myView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1.0, constant: 0),
      NSLayoutConstraint(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
    ]
    
    
    // Activating constraints inside of viewConstraints
     NSLayoutConstraint.activate(viewConstraints)
 
    */
 
    // Create a constant to represent our superView's layoutMarginsGuide
    let margins = self.view.layoutMarginsGuide
    
    // Anchors myView to the Top of the superView
    let AnchorTop = [
      myView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor),
      myView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
      myView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
      myView.heightAnchor.constraint(equalToConstant: 100)
    ]
    
    // Centers myView in the superView
    let AnchorCenter = [
      myView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      myView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      myView.heightAnchor.constraint(equalToConstant: 100),
      myView.widthAnchor.constraint(equalToConstant: 100)
    ]
    
    // Anchors myView to the bottom of the superView
    let AnchorBottom = [
      // Anchor with a -20 constant
      myView.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor, constant: -20),
      myView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
      myView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
      myView.heightAnchor.constraint(equalToConstant: 100)
    ]
    
    // Set the constraints you'd like to active here
    activeConstraints = AnchorBottom
    
    activeConstraints.forEach { (constraint) in
      constraint.isActive = true
    }
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

