//
//  PanModalDragView.swift
//  PanModal
//
//  Created by Алексей Петров on 12.03.2020.
//  Copyright © 2020 Detail. All rights reserved.
//

#if os(iOS)

import UIKit

public class PanModalDragView: UIView, PanModalDragViewProtocol {
    
    public var viewAlpha: CGFloat {
        
        set {
            alpha = newValue
        }
        
        get {
            return alpha
        }
        
    }
    
    public var view: UIView {
        return self
    }
    
    public var dragIndicator: UIView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        dragIndicator = UIView(frame: CGRect(x: 0, y: 0, width: 36.0, height: 5.0))
        dragIndicator.backgroundColor = .gray
        backgroundColor = .clear
        dragIndicator.center = center
        addSubview(dragIndicator)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        dragIndicator.center = center
    }
}

#endif
