Pod::Spec.new do |s|
  s.name         = "XCTAssertUnrecoverable"
  s.version      = "1.0.0"
  s.summary      = "Make it possible to test that universal error / logic failure occurs"
  s.description  = <<-DESC
    Your description here.
  DESC
  s.homepage     = "git@github.com:ukitaka/XCTAssertUnrecoverable.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ukitaka" => "yuki.takahashi.1126@gmail.com" }
  s.social_media_url   = ""
  s.swift_version = '4.1'
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "git@github.com:ukitaka/XCTAssertUnrecoverable.git.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "XCTest"
end
