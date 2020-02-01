//
//  WishViewController.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishViewController: UIViewController {
    @IBOutlet weak var dataTable: UITableView!
    @IBOutlet weak var sortView: SortView!
    var viewModel: WishViewModel!
    var sortManager: SortManager!
    var observersManager: WishObserversManager!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel           = WishViewModel()
        
        viewModel.setupUI(self)
        
        sortManager      = SortManager()
        observersManager = WishObserversManager()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        observersManager.addObservers(self)
        
        viewModel.reloadTable(self)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        observersManager.removeObservers(self)
        
        DataContainer.shared.selectedType = nil
    }  
}
