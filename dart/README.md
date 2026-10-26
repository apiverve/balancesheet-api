# Balance Sheet API - Dart/Flutter Client

Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders' equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity.

[![pub package](https://img.shields.io/pub/v/apiverve_balancesheet.svg)](https://pub.dev/packages/apiverve_balancesheet)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Balance Sheet API](https://apiverve.com/marketplace/balancesheet?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_balancesheet: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_balancesheet/apiverve_balancesheet.dart';

void main() async {
  final client = BalancesheetClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'ticker': 'AAPL',
      'year': 0,
      'quarter': 0
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Balance Sheet API](https://apiverve.com/marketplace/balancesheet?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/balancesheet](https://docs.apiverve.com/ref/balancesheet?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
