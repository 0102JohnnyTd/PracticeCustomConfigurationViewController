//
//  CustomConfigurationViewController.swift
//  PracticeCustomConfigurationViewController
//
//  Created by Johnny Toda on 2023/02/16.
//

import UIKit

final class CustomConfigurationViewController: UIViewController {
    @IBOutlet private weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
    }
}

// CollectionView上のItemのLayoutを設定
extension CustomConfigurationViewController {
    private func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .estimated(44), heightDimension: .estimated(44))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.interItemSpacing = .flexible(10)

        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = 10
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)

        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension CustomConfigurationViewController {
    private func configureHierarchy() {
        collectionView.collectionViewLayout = createLayout()
    }
}
