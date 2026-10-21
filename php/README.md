# Balance Sheet API - PHP Package

Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders' equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity.

## Installation

Install via Composer:

```bash
composer require apiverve/balancesheet
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Balancesheet\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'ticker' => 'AAPL',
    'year' => 0,
    'quarter' => 0
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Balancesheet\Client;
use APIVerve\Balancesheet\Exceptions\APIException;
use APIVerve\Balancesheet\Exceptions\ValidationException;

try {
    $response = $client->execute(['ticker' => 'AAPL', 'year' => 0, 'quarter' => 0]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/balancesheet?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/balancesheet?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/balancesheet?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
