//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.

import Foundation

protocol ___VARIABLE_productName:identifier___Presentation: class {
    func showLoader()
    func dismissLoader()
    func showError(error : String)
    func reloadCollectionView()
}

class ___VARIABLE_productName:identifier___Presenter{
    
	private weak var delegate: ___VARIABLE_productName:identifier___Presentation!
	private  var interactor: ___VARIABLE_productName:identifier___InteractorUseCase!
    var items = [Any](){didSet{ delegate.reloadCollectionView()}}

    init(delegate: ___VARIABLE_productName:identifier___Presentation, interactor : ___VARIABLE_productName:identifier___InteractorUseCase) {
		self.delegate = delegate
        self.interactor = interactor
	}
    
    func numberOfItemInSection()-> Int {
        return items.count
    }
    
    func configureCellAt(indexPath: IndexPath) {
        
    }
    
    func didSelectedRow(indexPath: IndexPath) -> Any {
        return (items[indexPath.item])
    }

}
