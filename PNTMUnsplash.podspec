Pod::Spec.new do |s|

  s.name         = "PNTMUnsplash"
  s.version      = "0.0.5"
  s.summary      = "PNTMUnsplash lightweight RxWrapper around Unsplash Api."

  s.description  = <<-DESC

  PNTMUnsplash lightweight RxWrapper around Unsplash Api.

                   DESC

  s.homepage     = "https://github.com/Pintumo/PNTMUnsplash"

  s.license      = "MIT"

  s.author             = { "Evangelos Sismanidis" => "evangelos@posteo.eu" }

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Pintumo/PNTMUnsplash.git", :tag => "#{s.version}" }

  s.dependency 'Alamofire'
  s.dependency 'RxSwift'

  s.source_files  = "PNTMUnsplash", "PNTMUnsplash/*.{swift}"


	
end
