//
//  RMFooterLoadingCollectionReusableView.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 12.01.2023.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
    
    // MARK: - Static properties
    
    static let identifier = "RMFooterLoadingCollectionReusableView"
    
    // MARK: - Private properties
    
    @UsesAutoLayout
    private var spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        return spinner
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        
        configureView()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    // MARK: - Private methods
    
    private func configureView() {
        addSubview(spinner)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    // MARK: - Public methods
    
    public func startAnimating() {
        spinner.startAnimating()
    }
}
