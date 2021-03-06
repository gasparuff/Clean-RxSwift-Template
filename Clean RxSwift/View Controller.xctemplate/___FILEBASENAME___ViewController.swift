//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit
import RxSwift

protocol ___FILEBASENAMEASIDENTIFIER___Input
{
    var UseCase1ViewInputSubject:PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase1.ViewModel> { get }
    var UseCase2ViewInputSubject:PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase2.ViewModel> { get }
}

protocol ___FILEBASENAMEASIDENTIFIER___Output
{
    var UseCase1RequestOutputSubject:PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase1.Request> { get }
    var UseCase2RequestOutputSubject:PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase2.Request> { get }
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ___FILEBASENAMEASIDENTIFIER___Output
{
    var UseCase1RequestOutputSubject = PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase1.Request>()
    var UseCase2RequestOutputSubject = PublishSubject<___VARIABLE_sceneName:identifier___Models.UseCase2.Request>()

    var input:___FILEBASENAMEASIDENTIFIER___Input!
    
    // MARK: - Object lifecycle
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        ___VARIABLE_sceneName:identifier___Configurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureInputStream()
        configureOutputStreams()
    }
    
    //MARK: - Stream Configuration
    
    func configureOutputStreams() {
        //TODO: Configure the ViewController's forwardStream here
    }
    
    func configureInputStream() {
        //TODO: Subscribe to the input's forwardStream from here
    }
}
