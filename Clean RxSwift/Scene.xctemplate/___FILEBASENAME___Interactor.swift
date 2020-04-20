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

import RxSwift
import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Input: class {
    var UseCase1RequestSubject: PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase1.Request> { get }
    var UseCase2RequestSubject: PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase2.Request> { get }
}

protocol ___FILEBASENAMEASIDENTIFIER___Output {
    var UseCase1ResponseSubject: PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase1.Response> { get }
    var UseCase2ResponseSubject: PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase2.Response> { get }
}

class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Output {
    weak var input: ___FILEBASENAMEASIDENTIFIER___Input! {
        didSet {
            input.UseCase1RequestSubject.map(handle).bind(to: UseCase1ResponseSubject).disposed(by: disposeBag)
            input.UseCase2RequestSubject.map(handle).bind(to: UseCase2ResponseSubject).disposed(by: disposeBag)
        }
    }

    var UseCase1ResponseSubject = PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase1.Response>()
    var UseCase2ResponseSubject = PublishSubject<___VARIABLE_sceneName: identifier___Models.UseCase2.Response>()

    var worker: ___VARIABLE_sceneName: identifier___Worker = ___VARIABLE_sceneName: identifier___Worker()

    let disposeBag = DisposeBag()

    // MARK: - Business logic

    func handle(_: ___VARIABLE_sceneName: identifier___Models.UseCase1.Request) -> ___VARIABLE_sceneName: identifier___Models.UseCase1.Response {
        // Let the worker do some work and return the results
        return ___VARIABLE_sceneName: identifier___Models.UseCase1.Response()
    }

    func handle(_: ___VARIABLE_sceneName: identifier___Models.UseCase2.Request) -> ___VARIABLE_sceneName: identifier___Models.UseCase2.Response {
        // Let the worker do some work and return the results
        return ___VARIABLE_sceneName: identifier___Models.UseCase2.Response()
    }
}
