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
    let frameView = UIImageView()
    let todayLabel = UILabel()
    let dateLabel = UILabel()
    let currentTemp = UILabel()
    let currentWeather = UILabel()
    let insetWind = UILabel()
    let windIcon = UIImageView()
    let windLabel = UILabel()
    let windSpeedLabel = UILabel()
    let insetRain = UILabel()
    let rainIcon = UIImageView()
    let rainLabel = UILabel()
    let rainPossibility = UILabel()
    let weeklyButton = UIButton()
    let weeklyLabel = UILabel()
    let arrowUp = UIImageView()
    
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
        
        cityLabel.text = "Алматы"
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
        
        frameView.image = UIImage(named: "Rectangle")
        frameView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(frameView)
        
        todayView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        todayView.layer.cornerRadius = 20
        todayView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(todayView)
        
        todayLabel.text = "Сегодня, "
        todayLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        todayLabel.font = UIFont.systemFont(ofSize: 18)
        todayLabel.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(todayLabel)
        
        dateLabel.text = "26 Апрель"
        dateLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        dateLabel.font = UIFont.systemFont(ofSize: 18)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(dateLabel)
        
        currentTemp.text = "22" + "°"
        currentTemp.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        currentTemp.font = UIFont.systemFont(ofSize: 100)
        currentTemp.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(currentTemp)
        
        currentWeather.text = "Солнечно"
        currentWeather.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
      //  currentWeather.font = UIFont(name: "Overpass_Bold", size: 36)
        currentWeather.font = UIFont.systemFont(ofSize: 24)
        currentWeather.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(currentWeather)
        
        insetWind.text = "|"
        insetWind.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        insetWind.font = UIFont.systemFont(ofSize: 18)
        insetWind.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(insetWind)
        
        windIcon.image = UIImage(named: "wind")
        windIcon.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(windIcon)
        
        windLabel.text = "Ветер"
        windLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        windLabel.font = UIFont.systemFont(ofSize: 18)
        windLabel.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(windLabel)
        
        windSpeedLabel.text = "15" + " km/h"
        windSpeedLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        windSpeedLabel.font = UIFont.systemFont(ofSize: 18)
        windSpeedLabel.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(windSpeedLabel)
        
        insetRain.text = "|"
        insetRain.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        insetRain.font = UIFont.systemFont(ofSize: 18)
        insetRain.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(insetRain)
        
        rainIcon.image = UIImage(named: "rain")
        rainIcon.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(rainIcon)
        
        rainLabel.text = "Дождь"
        rainLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        rainLabel.font = UIFont.systemFont(ofSize: 18)
        rainLabel.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(rainLabel)
        
        rainPossibility.text = "26" + "%"
        rainPossibility.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        rainPossibility.font = UIFont.systemFont(ofSize: 18)
        rainPossibility.translatesAutoresizingMaskIntoConstraints = false
        todayView.addSubview(rainPossibility)

        weeklyButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        weeklyButton.layer.cornerRadius = 20
        weeklyButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(weeklyButton)
        
        weeklyLabel.text = "Прогноз на неделю"
        weeklyLabel.font = UIFont.systemFont(ofSize: 16)
        weeklyLabel.textColor = UIColor(red: 68/255, green: 78/255, blue: 114/255, alpha: 1)
        weeklyLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(weeklyLabel)
        
        arrowUp.image = UIImage(named: "arrowup")
        arrowUp.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arrowUp)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            locationIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
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
            todayView.heightAnchor.constraint(equalToConstant: 300),
            todayView.topAnchor.constraint(equalTo: vectorImageView.bottomAnchor, constant: 20),
            todayView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            frameView.widthAnchor.constraint(equalToConstant: 313),
            frameView.heightAnchor.constraint(equalToConstant: 300),
            frameView.topAnchor.constraint(equalTo: vectorImageView.bottomAnchor, constant: 20),
            frameView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            todayLabel.topAnchor.constraint(equalTo: todayView.topAnchor, constant: 17),
            todayLabel.leadingAnchor.constraint(equalTo: todayView.leadingAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            dateLabel.centerYAnchor.constraint(equalTo: todayLabel.centerYAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: todayLabel.trailingAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            currentTemp.topAnchor.constraint(equalTo: todayLabel.bottomAnchor, constant: 5),
            currentTemp.leadingAnchor.constraint(equalTo: todayView.leadingAnchor, constant: 90)
        ])
        
        NSLayoutConstraint.activate([
            currentWeather.topAnchor.constraint(equalTo: currentTemp.bottomAnchor, constant: 5),
            currentWeather.centerXAnchor.constraint(equalTo: todayView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            insetWind.centerXAnchor.constraint(equalTo: todayView.centerXAnchor),
            insetWind.topAnchor.constraint(equalTo: currentWeather.bottomAnchor, constant: 25)
        ])
        
        NSLayoutConstraint.activate([
            windIcon.centerYAnchor.constraint(equalTo: insetWind.centerYAnchor),
            windIcon.heightAnchor.constraint(equalToConstant: 24),
            windIcon.widthAnchor.constraint(equalToConstant: 24),
            windIcon.leadingAnchor.constraint(equalTo: todayView.leadingAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            windLabel.centerYAnchor.constraint(equalTo: insetWind.centerYAnchor),
            windLabel.leadingAnchor.constraint(equalTo: windIcon.trailingAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            windSpeedLabel.centerYAnchor.constraint(equalTo: insetWind.centerYAnchor),
            windSpeedLabel.leadingAnchor.constraint(equalTo: insetWind.trailingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            insetRain.topAnchor.constraint(equalTo: insetWind.bottomAnchor, constant: 20),
            insetRain.centerXAnchor.constraint(equalTo: insetWind.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            rainIcon.centerYAnchor.constraint(equalTo: insetRain.centerYAnchor),
            rainIcon.heightAnchor.constraint(equalToConstant: 24),
            rainIcon.widthAnchor.constraint(equalToConstant: 24),
            rainIcon.leadingAnchor.constraint(equalTo: todayView.leadingAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            rainLabel.centerYAnchor.constraint(equalTo: insetRain.centerYAnchor),
            rainLabel.leadingAnchor.constraint(equalTo: rainIcon.trailingAnchor, constant: 15)
        ])
        
        NSLayoutConstraint.activate([
            rainPossibility.centerYAnchor.constraint(equalTo: insetRain.centerYAnchor),
            rainPossibility.leadingAnchor.constraint(equalTo: insetRain.trailingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            weeklyButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            weeklyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weeklyButton.heightAnchor.constraint(equalToConstant: 64),
            weeklyButton.widthAnchor.constraint(equalToConstant: 249)
        ])
        
        NSLayoutConstraint.activate([
            weeklyLabel.centerYAnchor.constraint(equalTo: weeklyButton.centerYAnchor),
            weeklyLabel.leadingAnchor.constraint(equalTo: weeklyButton.leadingAnchor, constant: 24)
        ])
        
        NSLayoutConstraint.activate([
            arrowUp.centerYAnchor.constraint(equalTo: weeklyButton.centerYAnchor),
            arrowUp.trailingAnchor.constraint(equalTo: weeklyButton.trailingAnchor, constant: -24)
        ])

    }


}

