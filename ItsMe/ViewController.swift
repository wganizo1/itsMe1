//
//  ViewController.swift
//  ItsMe
//
//  Created by Wellington Ganizo on 4/26/21.
//

import UIKit

import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
       super.viewDidLoad()
       let myURL = URL(string:"https://alterbliss.co.za/legacy")
       let myRequest = URLRequest(url: myURL!)
       webView.load(myRequest)
    }
    override func loadView() {
       let webConfiguration = WKWebViewConfiguration()
       webView = WKWebView(frame: .zero, configuration: webConfiguration)
       webView.uiDelegate = self
       view = webView
    }
 }
