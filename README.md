# [Balance Sheet API](https://apiverve.com/marketplace/balancesheet?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Balance Sheet is a stock balance sheet API that returns the statement of financial position for a US public company by ticker - assets, liabilities and shareholders&#x27; equity - straight from SEC filings: current assets, cash, receivables, current liabilities, equity and more. Paid plans add total assets and liabilities, long-term debt, and liquidity and leverage ratios like current ratio, quick ratio and debt-to-equity.

The Balance Sheet API provides a simple, reliable way to integrate balance sheet functionality into your applications. Built for developers who need production-ready balance sheet capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/balancesheet?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/balancesheet?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/balancesheet)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.BalanceSheet)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-balancesheet/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_balancesheet)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/balancesheet)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_balancesheet)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callBalanceSheetAPI() {
    try {
        const params = new URLSearchParams({
            ticker: 'AAPL'
        });

        const response = await fetch(`https://api.apiverve.com/v1/balancesheet?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callBalanceSheetAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/balancesheet?ticker=AAPL" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/balancesheet
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/balancesheet) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.BalanceSheet
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.BalanceSheet) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-balancesheet
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-balancesheet/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_balancesheet
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_balancesheet) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/balancesheet
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/balancesheet) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_balancesheet
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_balancesheet) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:balancesheet-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/balancesheet-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Balance Sheet API](https://apiverve.com/marketplace/balancesheet?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/balancesheet](https://docs.apiverve.com/ref/balancesheet)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Balance Sheet API is commonly used for:

- **Web Applications** - Add balance sheet features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with balance sheet capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Balance Sheet API:

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

---

## Support & Community

- 🏠 **API Home**: [Balance Sheet API](https://apiverve.com/marketplace/balancesheet?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
