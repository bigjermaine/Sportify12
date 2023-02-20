//
//  AuthViewController.swift
//  Sportify12
//
//  Created by Apple on 20/02/2023.
//

import UIKit
import WebKit

class AuthViewController: UIViewController,WKNavigationDelegate {
    
    private let webview: WKWebView = {
    let prefs = WKWebpagePreferences()
    prefs.allowsContentJavaScript = true
    let config = WKWebViewConfiguration()
    config.defaultWebpagePreferences = prefs
    let webview = WKWebView(frame: .zero, configuration: config)
        
    return webview
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .white
        webview.navigationDelegate = self
        view.addSubview(webview)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        webview.frame = view.bounds
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
