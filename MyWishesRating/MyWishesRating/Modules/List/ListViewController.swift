//
//  ListViewController.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ListViewController: UIViewController {
    @IBOutlet weak var dataTable: UITableView!
    var viewModel: ListViewModel!
    var observersManager: ObserversManager!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel           = ListViewModel()
        observersManager    = ObserversManager()
        
        viewModel.setupUI(self)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        observersManager.addObservers(self)
        
        if DataContainer.shared.listArray == nil {
            DataManager.makeDataSource(self)
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        observersManager.removeObservers(self)
    }

    
    @objc func reloadList() {
        viewModel.reloadTable(self)
    }
}
