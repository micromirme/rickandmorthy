//
//  RMCharacterDetailViewController.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 12.01.2023.
//

import UIKit

class RMCharacterDetailViewController: UIViewController {
    
    // MARK: - Private properties
    private let viewModel: RMCharacterDetailViewModel
    
    // MARK: - Init
    
    init(viewModel: RMCharacterDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
}
