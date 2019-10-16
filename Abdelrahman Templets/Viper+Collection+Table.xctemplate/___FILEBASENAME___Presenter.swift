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
    func reloadTableView()
}

class ___VARIABLE_productName:identifier___Presenter{
    
	private weak var delegate: ___VARIABLE_productName:identifier___Presentation!
	private  var interactor: ___VARIABLE_productName:identifier___InteractorUseCase!
    var itemsCollection = [Any](){didSet{ delegate.reloadCollectionView()}}
    var itemsTable = [Any](){didSet{ delegate.reloadTableView()}}

    init(delegate: ___VARIABLE_productName:identifier___Presentation, interactor : ___VARIABLE_productName:identifier___InteractorUseCase) {
		self.delegate = delegate
        self.interactor = interactor
	}
    
    func numberOfItemInSection()-> Int {
        return itemsCollection.count
    }
    
    func numberOfSectionsTable()->Int{
        return itemsTable.count
    }
    
    func numberOfRowAtSection()->Int{
        return 1
    }
    
    func configureCellCollectionViewAt(indexPath: IndexPath) {
        
    }
    
    func configureCellTableViewAt(indexPath: IndexPath) {
        
    }
    
    func didSelectedCollectionItemAt(indexPath: IndexPath) -> Any {
        return (itemsCollection[indexPath.item])
    }
    
    func didSelectedTableRowAt(indexPath: IndexPath) -> Any {
        return (itemsTable[indexPath.item])
    }

}
