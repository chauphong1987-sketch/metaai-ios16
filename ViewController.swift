import UIKit
import WebKit

class ViewController: UIViewController {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = WKWebViewConfiguration()
        webView = WKWebView(frame: self.view.bounds, configuration: config)
        self.view.addSubview(webView)
        
        // Ép trình duyệt giả lập thành máy tính để Meta AI không chặn iOS 16
        webView.customUserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        
        if let url = URL(string: "https://www.meta.ai") {
            webView.load(URLRequest(url: url))
        }
    }
}
