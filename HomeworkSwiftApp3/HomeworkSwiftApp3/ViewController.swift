//
//  ViewController.swift
//  HomeworkSwiftApp3
//
//  Created by Артем Сиренко on 3/23/24.
//

import UIKit
import WebKit
import Foundation


// В этом коде мы создаем WKWebView, загружаем страницу авторизации VK, и после успешной авторизации извлекаем access token и user id из URL
class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

      var accessToken: String?
      var userID: String?

      override func viewDidLoad() {

          super.viewDidLoad()

          webView = WKWebView(frame: view.bounds)
          webView.navigationDelegate = self
          view.addSubview(webView)


          let url = URL(string: "https://oauth.vk.com/authorize?client_id=51883839&display=mobile&redirect_uri=https://oauth.vk.com/blank.html&scope=friends,groups,photos&response_type=token&v=5.131")

          webView.load(URLRequest(url: url!))

          

      }

     

      func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {

          if let response = navigationResponse.response as? HTTPURLResponse {

              if let url = response.url, let fragment = url.fragment {

                  let params = fragment.components(separatedBy: "&")

                  for param in params {

                      let keyValue = param.components(separatedBy: "=")

                      if keyValue.count == 2 {

                          let key = keyValue[0]

                          let value = keyValue[1]

                          if key == "access_token" {

                              accessToken = value
                              print(accessToken!)

                          } else if key == "user_id" {

                              userID = value
                              printContent(userID!)

                          }

                      }

                  }

              }

          }

          decisionHandler(.allow)

          showMainTabBar()

      }

     

      func showMainTabBar() {

          let mainTabBar = MainTabBarController(accessToken: accessToken, userID: userID)

          navigationController?.pushViewController(mainTabBar, animated: true)

      }

  }
    
    
//    private lazy var webView: WKWebView = {
//        let webView = WKWebView(frame: view.bounds)
//        webView.navigationDelegate = self
//        return webView
//    }()
//    
//    var accesToken: String?
//    var userID: String?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setupViews()
//
//        if let url = URL(string: "https://oauth.vk.com/authorize?client_id=5272907&scope=friends, groups, photos&redirect_uri=https://oauth.vk.com/blank.html&display=page&response_type=token&v=5.131") {
//        let request = URLRequest(url: url)
//        webView.load(request)
//        }
//
//    }
//
//    private func setupViews() {
//        view.addSubview(webView)
//    }
//
//    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
//
//          if let response = navigationResponse.response as? HTTPURLResponse {
//
//              if let url = response.url, let fragment = url.fragment {
//
//                  let params = fragment.components(separatedBy: "&")
//
//                  for param in params {
//
//                      let keyValue = param.components(separatedBy: "=")
//
//                      if keyValue.count == 2 {
//
//                          let key = keyValue[0]
//
//                          let value = keyValue[1]
//
//                          if key == "access_token" {
//
//                              accesToken = value
//
//                          } else if key == "user_id" {
//
//                              userID = value
//
//                          }
//
//                      }
//
//                  }
//
//              }
//
//          }
//
//          decisionHandler(.allow)
//
//         
//
//          showMainTabBar()
//
//      }
//    
//    func showFriendList() {
//        let friendsListViewController = FriendsViewController(userID: userID, accessToken: accesToken)
//        navigationController?.pushViewController(friendsListViewController, animated: true)
//    }
//    
//    func showMainTabBar() {
//
//            let mainTabBar = MainTabBar(accessToken: accessToken, userID: userID)
//            navigationController?.pushViewController(mainTabBar, animated: true)
//
//        }
//
//
//
//}

