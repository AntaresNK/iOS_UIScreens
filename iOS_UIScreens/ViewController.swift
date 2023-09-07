//
//  ViewController.swift
//  iOS_UIScreens
//
//  Created by Nazym Sayakhmet on 07.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let locationIcon = UIImageView()
    let cityLabel = UILabel()
    let dropIcon = UIButton()
    let notificationBell = UIImageView()
    let ellipseImageView = UIImageView()
    let sunImageView = UIImageView()
    let vectorImageView = UIImageView()
    
    let todayView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()

        gradient.frame = view.bounds
        gradient.colors = [UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1).cgColor, UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1).cgColor]

        view.layer.insertSublayer(gradient, at: 0)
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        locationIcon.image = UIImage(named: "Location")
        locationIcon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationIcon)
        
        cityLabel.text = "Almaty"
        cityLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        cityLabel.font = UIFont.boldSystemFont(ofSize: 24)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cityLabel)
        
        dropIcon.setBackgroundImage(UIImage(named: "drop"), for: .normal)
        dropIcon.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dropIcon)
        
        notificationBell.image = UIImage(named: "bell")
        notificationBell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(notificationBell)
        
        ellipseImageView.image = UIImage(named: "Ellipse")
        ellipseImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ellipseImageView)
        
        sunImageView.image = UIImage(named: "sun")
        sunImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sunImageView)
        
        vectorImageView.image = UIImage(named: "Vector")
        vectorImageView.translatesAutoresizingMaskIntoConstraints = false
        vectorImageView.clipsToBounds = true
        vectorImageView.contentMode = .topLeft
        view.addSubview(vectorImageView)
        
        todayView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        todayView.layer.cornerRadius = 20
        todayView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(todayView)

    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            locationIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 9),
            locationIcon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
            locationIcon.widthAnchor.constraint(equalToConstant: 24),
            locationIcon.heightAnchor.constraint(equalToConstant: 24)
            
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.centerYAnchor.constraint(equalTo: locationIcon.centerYAnchor),
            cityLabel.leadingAnchor.constraint(equalTo: locationIcon.trailingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            dropIcon.heightAnchor.constraint(equalToConstant: 24),
            dropIcon.widthAnchor.constraint(equalToConstant: 24),
            dropIcon.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor),
            dropIcon.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            notificationBell.widthAnchor.constraint(equalToConstant: 24),
            notificationBell.heightAnchor.constraint(equalToConstant: 24),
            notificationBell.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            notificationBell.centerYAnchor.constraint(equalTo: dropIcon.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            ellipseImageView.heightAnchor.constraint(equalToConstant: 10),
            ellipseImageView.widthAnchor.constraint(equalToConstant: 10),
            ellipseImageView.topAnchor.constraint(equalTo: notificationBell.topAnchor, constant: 2),
            ellipseImageView.leadingAnchor.constraint(equalTo: notificationBell.leadingAnchor, constant: 16)
        ])
        
        
        NSLayoutConstraint.activate([
            sunImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sunImageView.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10),
            sunImageView.heightAnchor.constraint(equalToConstant: 241),
            sunImageView.widthAnchor.constraint(equalToConstant: 241)
        ])
        
        NSLayoutConstraint.activate([
            vectorImageView.topAnchor.constraint(equalTo: locationIcon.bottomAnchor, constant: 9),
            vectorImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            vectorImageView.widthAnchor.constraint(equalToConstant: 87),
            vectorImageView.heightAnchor.constraint(equalToConstant: 235)
        ])
        
        NSLayoutConstraint.activate([
            todayView.widthAnchor.constraint(equalToConstant: 313),
            todayView.heightAnchor.constraint(equalToConstant: 295),
            todayView.topAnchor.constraint(equalTo: vectorImageView.bottomAnchor, constant: 34),
            todayView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])


    }


}

