# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_balancesheet"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Balance Sheet API - Ruby Client"
  spec.description   = "Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders' equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity."
  spec.homepage      = "https://apiverve.com/marketplace/balancesheet?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/balancesheet-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/balancesheet"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
