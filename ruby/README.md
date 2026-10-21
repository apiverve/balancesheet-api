# Balance Sheet API - Ruby Gem

Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders' equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_balancesheet'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_balancesheet
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_balancesheet'

# Initialize the client
client = APIVerve::Balancesheet::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  ticker: "AAPL",
  year: 0,
  quarter: 0
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ticker: "AAPL", year: 0, quarter: 0 })
  puts response["data"]
rescue APIVerve::Balancesheet::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Balancesheet::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Balancesheet::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ticker": "AAPL",
    "company": "Apple Inc.",
    "cik": "0000320193",
    "fiscalYear": 2025,
    "fiscalQuarter": 4,
    "filingType": "10-K",
    "filingDate": "2025-10-31",
    "periodEnd": "2025-09-27",
    "balance": {
      "totalAssets": 359241000000,
      "currentAssets": 147957000000,
      "cash": 35934000000,
      "receivables": 39777000000,
      "inventory": 5718000000,
      "propertyAndEquipment": 49834000000,
      "goodwill": null,
      "intangibles": null,
      "totalLiabilities": 285508000000,
      "currentLiabilities": 165631000000,
      "accountsPayable": 69860000000,
      "longTermDebt": 78328000000,
      "equity": 73733000000,
      "retainedEarnings": -14264000000
    },
    "ratios": {
      "currentRatio": 0.89,
      "quickRatio": 0.86,
      "cashRatio": 0.22,
      "workingCapital": -17674000000,
      "debtToEquity": 3.87,
      "debtToAssets": 0.79,
      "longTermDebtToEquity": 1.06,
      "equityMultiplier": 4.87
    },
    "formatted": {
      "totalAssets": "$359.24B",
      "totalLiabilities": "$285.51B",
      "equity": "$73.73B",
      "workingCapital": "-$17.67B"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/balancesheet?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/balancesheet?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/balancesheet?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
