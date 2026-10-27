Pod::Spec.new do |s|
  s.name             = 'APIVerveBalanceSheet'
  s.version          = '1.2.3'
  s.summary          = 'Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets,...'
  s.description      = <<-'DESC'
Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders' equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity.

This iOS/macOS SDK provides a convenient way to access the Balance Sheet from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/balancesheet?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/balancesheet-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBalanceSheet/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
