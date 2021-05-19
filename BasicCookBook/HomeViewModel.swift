//
//  HomeViewModel.swift
//  BasicCookBook
//
//  Created by bean Milky on 2021/05/19.
//

import Foundation

struct HomeViewModel {
    let items: [Recipe]
    var numberOfRows: Int {
        return items.count
    }
    
    
    init() {
        items = Recipe.all()
    }
    
}
