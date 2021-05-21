//
//  PresentationAnimator.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/22.
//

import UIKit

// MARK: - UIViewControllerAnimatedTransitioning
class PresentationAnimator: NSObject {
    let direction: PresentationDirection
    let isPresentation: Bool
    
    init(direction: PresentationDirection, isPresentation: Bool) {
        self.direction = direction
        self.isPresentation = isPresentation
    }
}

extension PresentationAnimator: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let viewControllerKey: UITransitionContextViewControllerKey = isPresentation ? .to : .from
        guard let viewControllerForAnimation = transitionContext.viewController(forKey: viewControllerKey) else { return }
        
        if isPresentation {
            transitionContext.containerView.addSubview(viewControllerForAnimation.view)
        }
        
        let presentedFrame = transitionContext.finalFrame(for: viewControllerForAnimation)
        var dismissedFrame = presentedFrame
        
        switch direction {
        case .left:
            dismissedFrame.origin.x = -presentedFrame.width
        case .top:
            dismissedFrame.origin.x = transitionContext.containerView.frame.size.width
        case .right:
            dismissedFrame.origin.y = -presentedFrame.height
        case .bottom:
            dismissedFrame.origin.y = transitionContext.containerView.frame.size.height
        }
        
        let fromFrame = isPresentation ? dismissedFrame : presentedFrame
        let toFrame = isPresentation ? presentedFrame : dismissedFrame
        let animationDuration = transitionDuration(using: transitionContext)
        viewControllerForAnimation.view.frame = fromFrame
        
        UIView.animate(withDuration: animationDuration,
                       animations: {
                        viewControllerForAnimation.view.frame = toFrame
                       },
                       completion: { _ in
                        transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
                       })
        
    }
    

    
}
