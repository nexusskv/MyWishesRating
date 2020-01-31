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
    var viewModel: WishViewModel!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel           = WishViewModel()
        
        viewModel.setupUI(self)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewModel.reloadTable(self)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        DataContainer.shared.selectedType = nil
    }
}
