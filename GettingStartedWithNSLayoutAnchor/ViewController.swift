//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

class ViewController: UIViewController {

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
    
    // NSLayoutConstraint Array with the constraints for myView
//    let viewConstraints = [
//      NSLayoutConstraint(item: myView, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .bottom, multiplier: 1.0, constant: 0),
//      NSLayoutConstraint(item: myView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1.0, constant: 0),
//      NSLayoutConstraint(item: myView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1.0, constant: 0),
//      NSLayoutConstraint(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
//    ]
    
    // Activating constraints inside of viewConstraints
    // NSLayoutConstraint.activate(viewConstraints)
    
    
    // [1]
    // View.ViewsAnchor.HowToConstrainTheAnchor(equalTo: WhatToConstraintTo).isActive = true
    // myView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor).isActive = true
    // myView.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor).isActive = true
    // myView.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor).isActive = true
    // [2]
    // myView.heightAnchor.constraint(equalToConstant: 100).isActive = true

    
    
    let anchors = [
      myView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor),
      myView.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor),
      myView.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor),
      myView.heightAnchor.constraint(equalToConstant: 100)
    ]
    
    anchors.forEach { $0.isActive = true }
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

