//
//  ViewController.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/19.
//

import UIKit

// MARK: - UIViewController

class DetailsViewController: UIViewController {
    var recipeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    var closeButton: UIButton = {
        let button = UIButton()
        return button
    }()
    var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    var descriptionLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    var recipe: Recipe?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.view.addSubview(recipeImage)
        self.view.addSubview(closeButton)
        self.view.addSubview(nameLabel)
        self.view.addSubview(descriptionLabel)

        recipeImage.snp.makeConstraints { make in
            make.left.equalTo(self.view.snp.left)
            make.top.equalTo(self.view.snp.top)
            make.right.equalTo(self.view.snp.right)
            make.height.equalTo(self.view.snp.width)
        }
        closeButton.snp.makeConstraints {make in
            make.top.equalTo(self.view.snp.top).offset(10)
            make.right.equalTo(self.view.snp.right).offset(10)
            make.width.height.equalTo(50)
        }
        nameLabel.snp.makeConstraints {make in
            make.left.equalTo(self.view.snp.left)
            make.bottom.equalTo(self.recipeImage.snp.bottom)
            make.width.equalTo(self.view.snp.width)
            make.height.equalTo(50)
        }
        descriptionLabel.snp.makeConstraints {make in
            make.left.equalTo(self.view.snp.left)
            make.top.equalTo(self.recipeImage.snp.bottom).offset(10)
            make.width.equalTo(self.view.snp.width)
        }
        
        recipeImage.image = recipe?.image
        nameLabel.text = recipe?.name
        descriptionLabel.text = recipe?.description
        descriptionLabel.numberOfLines = 0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIView.animate(withDuration: 0.2) {
            self.closeButton.alpha = 0
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

