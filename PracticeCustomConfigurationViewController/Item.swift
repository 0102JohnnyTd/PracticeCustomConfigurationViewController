//
//  Item.swift
//  PracticeCustomConfigurationViewController
//
//  Created by Johnny Toda on 2023/02/16.
//

import Foundation
import UIKit

struct Item: Hashable {
    let image: UIImage?
    init(imageName: String) {
        self.image = UIImage(systemName: imageName)
    }
    private let identifier = UUID()

    static let all = Array(repeating: [
        "trash", "folder", "paperplane", "book", "tag", "camera", "pin",
        "lock.shield", "cube.box", "gift", "eyeglasses", "lightbulb"
    ], count: 25).flatMap { $0 }.shuffled().map { Item(imageName: $0) }
}
