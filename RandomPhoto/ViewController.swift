//
//  ViewController.swift
//  RandomPhoto
//
//  Created by Yash Somkuwar on 28/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.contentMode = .scaleToFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Random Photo", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let colors: [UIColor] = [
        .systemRed,
        .systemBlue,
        .systemCyan,
        .systemGray,
        .systemPink,
        .systemTeal,
        .systemBrown
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 30, y: 250, width: 300, height: 300)
        imageView.center = view.center
        view.addSubview(button)
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        getRandomPhoto()
        view.backgroundColor = colors.randomElement()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                button.frame = CGRect(
            x: 10,
            y: view.frame.size.height-250,
            width: view.frame.size.height-500-view.safeAreaInsets.bottom,
            height: 55
        )

    }
    
    func getRandomPhoto() {
        let urlString =
            "https://source.unsplash.com/random/300*300"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }


}

