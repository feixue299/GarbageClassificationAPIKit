Pod::Spec.new do |spec|
  spec.name         = "AWGarbageClassificationAPIKit"
  spec.version      = "0.0.1"
  spec.summary      = "A AWGarbageClassificationAPIKit"
  spec.homepage     = "https://github.com/feixue299/NewsAPIKit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "wpf" => "1569485690@qq.com" }
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://github.com/feixue299/NewsAPIKit.git", :tag => "#{spec.version}" }
  spec.swift_version = '4.0'
  spec.source_files  = "Sources", "Sources/**/*.{swift}"
  spec.requires_arc = true
  spec.dependency "Moya"
end
