//
//  RecipeTableViewCell.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/19.
//

import UIKit
import SnapKit

// MARK: - UITableViewCell

class RecipeTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "RecipeTableViewCell"
    
    var shadowView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor.clear.cgColor
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2.5)
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 10
        return view
    }()
    var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 15.0
        view.layer.masksToBounds = true
        return view
    }()
    var recipeImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
  
    var recipe: Recipe? {
        didSet {
            recipeImageView.image = recipe?.image
            nameLabel.text = recipe?.name
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        self.contentView.addSubview(shadowView)
        self.shadowView.addSubview(containerView)
        self.containerView.addSubview(recipeImageView)
        self.containerView.addSubview(nameLabel)
        
        shadowView.snp.makeConstraints { make in
            make.left.equalTo(self.contentView.snp.left).offset(20)
            make.top.equalTo(self.contentView.snp.top).offset(20)
            make.width.equalTo(335)
            make.height.equalTo(350)
        }
        containerView.snp.makeConstraints { make in
            make.left.equalTo(self.shadowView.snp.left).offset(0)
            make.top.equalTo(self.shadowView.snp.top).offset(0)
            make.width.equalTo(self.shadowView.snp.width)
            make.height.equalTo(self.shadowView.snp.height)
        }
        recipeImageView.snp.makeConstraints { make in
            make.left.equalTo(self.containerView.snp.left).offset(0)
            make.top.equalTo(self.containerView.snp.top).offset(0)
            make.width.equalTo(self.containerView.snp.width)
            make.height.equalTo(self.containerView.snp.height)
        }
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(self.containerView.snp.left).offset(0)
            make.bottom.equalTo(self.containerView.snp.bottom).offset(0)
            make.width.equalTo(self.containerView.snp.width)
            make.height.equalTo(34)
        }
    }

}

// MARK: - Bounce Animation

extension RecipeTableViewCell {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        animate(isHighlighted: true)
    }
  
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        animate(isHighlighted: false)
    }
  
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        animate(isHighlighted: false)
    }

    private func animate(isHighlighted: Bool, completion: ((Bool) -> Void)? = nil) {
        let animationOptions: UIView.AnimationOptions = [.allowUserInteraction]
        if isHighlighted {
            UIView.animate(
                withDuration: 0.5,
                delay: 0,
                usingSpringWithDamping: 1,
                initialSpringVelocity: 0,
                options: animationOptions,
                animations: {
                    self.transform = .init(scaleX: 0.95, y: 0.95)
                },
                completion: completion)
        } else {
            UIView.animate(
                withDuration: 0.5,
                delay: 0,
                usingSpringWithDamping: 1,
                initialSpringVelocity: 0,
                options: animationOptions,
                animations: {
                    self.transform = .identity
                }, completion: completion)
        }
    }
}

