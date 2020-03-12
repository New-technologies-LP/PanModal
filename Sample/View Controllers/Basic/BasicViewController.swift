//
//  BasicViewController.swift
//  PanModal
//
//  Created by Stephen Sowole on 2/26/19.
//  Copyright © 2019 PanModal. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1019607843, green: 0.1137254902, blue: 0.1294117647, alpha: 1)
    }
}

extension BasicViewController: PanModalPresentable {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    var panScrollable: UIScrollView? {
        return nil
    }

    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(200)
    }

    var anchorModalToLongForm: Bool {
        return false
    }
    
    var cornerRadius: CGFloat {
        return CGFloat.zero
    }
    
    var dragIndicatorView: PanModalDragViewProtocol {
        let view: DragView = DragView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40.0))
        return view
    }
}


class DragView: UIView, PanModalDragViewProtocol {
    
    var dragIndicator: UIView {
        return UIView()
    }
    
    var viewAlpha: CGFloat {
        get {
            return alpha
        }
        
        set {
            alpha = newValue
        }
    }
    
    var view: UIView {
        return self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .white
    }
    
}
