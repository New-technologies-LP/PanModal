//
//  PanModalDragViewProtocol.swift
//  PanModal
//
//  Created by Алексей Петров on 12.03.2020.
//  Copyright © 2020 Detail. All rights reserved.
//

#if os(iOS)


import UIKit

public protocol PanModalDragViewProtocol: AnyObject {
    
    var dragIndicator: UIView { get }
    var viewAlpha: CGFloat { get set }
    var view: UIView { get }
}

#endif
