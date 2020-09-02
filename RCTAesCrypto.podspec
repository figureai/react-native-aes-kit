require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
s.name = 'RCTAesCrypto'
s.version = package["version"]
s.summary = package["description"]
s.author = package["author"]

s.homepage = package["homepage"]

s.license = package["license"]
s.platform = :ios, "8.0"

s.source = { :git => "https://github.com/rocwangv/react-native-aes-kit.git", :tag => "#{s.version}" }
s.source_files = "ios/RCTAesCrypto/*.{h,m}"
s.subspec 'AesKit' do |t|
    t.source_files='ios/RCTAesCrypto/AesKit/**/*'
end
s.dependency 'React'
end