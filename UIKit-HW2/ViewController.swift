//
//  ViewController.swift
//  UIKit-HW2
//
//  Created by Дима on 11/14/24.
//

import UIKit

class ViewController: UIViewController {
    let subscriptions = (name: "Подписок", width: 79)
    let subscribers = (name: "Подписчиков", width: 107)
    let posts = (name: "Поcтов", width: 57)
    let about = (name: "О себе", width: 55)
    let descript = (name: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco", height: 100)
    
    let subscriptionsCount = (value: 99, width: 26)
    let subscribersCount = (value: 120, width: 35)
    let postsCount = (value: 300, width: 39)
    
    let subscriptionsLabel = UILabel()
    let subscriptionsCountLabel = UILabel()
    let subscribersLabel = UILabel()
    let subscribersCountLabel = UILabel()
    let postsLabel = UILabel()
    let postsCountLabel = UILabel()
    let aboutLabel = UILabel()
    let descriptionLabel = UILabel()
    
    let addPostButton = UIButton()
    let exitButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margins : CGFloat = 23
        let spacingKeys : Int = (Int(view.frame.width) - subscriptions.width - subscribers.width - posts.width) / 4
        
        subscriptionsLabel.text = subscriptions.name
        subscriptionsLabel.font = .boldSystemFont(ofSize: .init(16))
        subscriptionsLabel.frame = CGRect(x: spacingKeys, y: 123, width: subscriptions.width, height: 19)
        view.addSubview(subscriptionsLabel)

        subscriptionsCountLabel.text = String(subscriptionsCount.value)
        subscriptionsCountLabel.font = .systemFont(ofSize: .init(20))
        subscriptionsCountLabel.frame = CGRect(x: spacingKeys + subscriptions.width / 2 - subscriptionsCount.width / 2, y: 152, width: subscriptionsCount.width, height: 24)
        view.addSubview(subscriptionsCountLabel)
        
        subscribersLabel.text = subscribers.name
        subscribersLabel.font = .boldSystemFont(ofSize: .init(16))
        subscribersLabel.frame = CGRect(x: 2 * spacingKeys + Int(subscriptionsLabel.frame.width), y: 123, width: subscribers.width, height: 19)
        view.addSubview(subscribersLabel)

        subscribersCountLabel.text = String(subscribersCount.value)
        subscribersCountLabel.font = .systemFont(ofSize: .init(20))
        subscribersCountLabel.frame = CGRect(x: 2 * spacingKeys + subscriptions.width + subscribers.width / 2 - subscribersCount.width / 2, y: 152, width: subscribersCount.width, height: 24)
        view.addSubview(subscribersCountLabel)
        
        postsLabel.text = posts.name
        postsLabel.font = .boldSystemFont(ofSize: .init(16))
        postsLabel.frame = CGRect(x: 3 * spacingKeys + Int(subscriptionsLabel.frame.width) + Int(subscribersLabel.frame.width), y: 123, width: posts.width, height: 19)
        view.addSubview(postsLabel)

        postsCountLabel.text = String(postsCount.value)
        postsCountLabel.font = .systemFont(ofSize: .init(20))
        postsCountLabel.frame = CGRect(x: 3 * spacingKeys + subscriptions.width + subscribers.width + posts.width / 2 - postsCount.width / 2, y: 152, width: postsCount.width, height: 24)
        view.addSubview(postsCountLabel)
        
        addPostButton.setTitle("Добавить пост", for: .normal)
        addPostButton.titleLabel?.font = .boldSystemFont(ofSize: .init(16))
        addPostButton.frame = CGRect(x: margins, y: 201, width: view.frame.width - 2 * margins, height: 37)
        addPostButton.backgroundColor = .black
        addPostButton.setTitleColor(.white, for: .normal)
        addPostButton.layer.cornerRadius = 20
        view.addSubview(addPostButton)
        
        aboutLabel.text = about.name
        aboutLabel.font = .boldSystemFont(ofSize: .init(16))
        aboutLabel.frame = CGRect(x: Int(margins), y: 275, width: about.width, height: 19)
        view.addSubview(aboutLabel)
        
        descriptionLabel.text = descript.name
        descriptionLabel.font = .systemFont(ofSize: .init(16))
        descriptionLabel.numberOfLines = 0
        descriptionLabel.frame = CGRect(x: margins, y: 304, width: view.frame.width - 2 * margins, height: CGFloat(descript.height))
        view.addSubview(descriptionLabel)

        exitButton.setTitle("Выйти", for: .normal)
        exitButton.titleLabel?.font = .boldSystemFont(ofSize: .init(16))
        exitButton.frame = CGRect(x: margins, y: view.frame.height - 109, width: view.frame.width - 2 * margins, height: 37)
        exitButton.backgroundColor = .white
        exitButton.setTitleColor(UIColor(red: 0, green: 87 / 255, blue: 1, alpha: 1), for: .normal)
        exitButton.layer.cornerRadius = 20
        view.addSubview(exitButton)
    }


}

