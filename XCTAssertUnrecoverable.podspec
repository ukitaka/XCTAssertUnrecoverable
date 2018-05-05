Pod::Spec.new do |s|
  s.name         = "XCTAssertUnrecoverable"
  s.version      = "1.0.0"
  s.summary      = "Make it possible to test that universal error / logic failure occurs"
  s.description  = <<-DESC
  This library makes it possible to test that universal error / logic failure occurs, even if you use `fatalError`, `preconditionFailure` and so on.
  This library provides just one function `XCTAssertUnrecoverable`.

  ```swift
  import XCTest
  import XCTAssertUnrecoverable

  class ExampleTests: XCTestCase {
      func testExample() {
          XCTAssertUnrecoverable {
              // some program that will be crash.
          }
      }
  }
  ```
  DESC
  s.homepage     = "https://github.com/ukitaka/XCTAssertUnrecoverable.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ukitaka" => "yuki.takahashi.1126@gmail.com" }
  s.social_media_url   = ""
  s.swift_version = '4.1'
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ukitaka/XCTAssertUnrecoverable.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "XCTest"
end
