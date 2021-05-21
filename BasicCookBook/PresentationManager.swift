//
//  PresentationManager.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/22.
//

import UIKit

enum PresentationDirection {
    case left
    case top
    case right
    case bottom
}


// MARK: - UIViewControllerTransitioningDelegate
final class PresentationManager: NSObject {
    var direction: PresentationDirection = .left
    var disableCompactHeight = false
}

extension PresentationManager: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        PresentationAnimator(direction: direction, isPresentation: true)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        PresentationAnimator(direction: direction, isPresentation: false)
    }
}

// MARK - UIAdaptivePresentationControllerDelegate
extension PresentationManager: UIAdaptivePresentationControllerDelegate {
    
}
