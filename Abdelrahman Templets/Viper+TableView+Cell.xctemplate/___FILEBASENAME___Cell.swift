//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
protocol ___FILEBASENAME___CellAction {
    func configureCell()
}
class ___FILEBASENAME___Cell: UITableViewCell {

    //outlets
    
    //variables
    
    //---------
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    static var nib : UINib {
        return UINib(nibName: identifire, bundle: nil)
    }
    
    static var identifire : String {
        return String(describing: self)
    }
    
}
extension ___FILEBASENAME___Cell : ___FILEBASENAME___CellAction {
    
    func configureCell() {
   
    }
    
}
