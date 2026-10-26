/// Response models for the Balance Sheet API.

/// API Response wrapper.
class BalancesheetResponse {
  final String status;
  final dynamic error;
  final BalancesheetData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BalancesheetResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BalancesheetResponse.fromJson(Map<String, dynamic> json) => BalancesheetResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BalancesheetData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Balance Sheet API.

class BalancesheetData {
  String? ticker;
  String? company;
  String? cik;
  num? fiscalYear;
  num? fiscalQuarter;
  String? filingType;
  String? filingDate;
  String? periodEnd;
  BalancesheetDataBalance? balance;
  BalancesheetDataRatios? ratios;
  BalancesheetDataFormatted? formatted;

  BalancesheetData({
    this.ticker,
    this.company,
    this.cik,
    this.fiscalYear,
    this.fiscalQuarter,
    this.filingType,
    this.filingDate,
    this.periodEnd,
    this.balance,
    this.ratios,
    this.formatted,
  });

  factory BalancesheetData.fromJson(Map<String, dynamic> json) => BalancesheetData(
      ticker: json['ticker'],
      company: json['company'],
      cik: json['cik'],
      fiscalYear: json['fiscalYear'],
      fiscalQuarter: json['fiscalQuarter'],
      filingType: json['filingType'],
      filingDate: json['filingDate'],
      periodEnd: json['periodEnd'],
      balance: json['balance'] != null ? BalancesheetDataBalance.fromJson(json['balance']) : null,
      ratios: json['ratios'] != null ? BalancesheetDataRatios.fromJson(json['ratios']) : null,
      formatted: json['formatted'] != null ? BalancesheetDataFormatted.fromJson(json['formatted']) : null,
    );
}

class BalancesheetDataBalance {
  num? totalAssets;
  num? currentAssets;
  num? cash;
  num? receivables;
  num? inventory;
  num? propertyAndEquipment;
  dynamic goodwill;
  dynamic intangibles;
  num? totalLiabilities;
  num? currentLiabilities;
  num? accountsPayable;
  num? longTermDebt;
  num? equity;
  num? retainedEarnings;

  BalancesheetDataBalance({
    this.totalAssets,
    this.currentAssets,
    this.cash,
    this.receivables,
    this.inventory,
    this.propertyAndEquipment,
    this.goodwill,
    this.intangibles,
    this.totalLiabilities,
    this.currentLiabilities,
    this.accountsPayable,
    this.longTermDebt,
    this.equity,
    this.retainedEarnings,
  });

  factory BalancesheetDataBalance.fromJson(Map<String, dynamic> json) => BalancesheetDataBalance(
      totalAssets: json['totalAssets'],
      currentAssets: json['currentAssets'],
      cash: json['cash'],
      receivables: json['receivables'],
      inventory: json['inventory'],
      propertyAndEquipment: json['propertyAndEquipment'],
      goodwill: json['goodwill'],
      intangibles: json['intangibles'],
      totalLiabilities: json['totalLiabilities'],
      currentLiabilities: json['currentLiabilities'],
      accountsPayable: json['accountsPayable'],
      longTermDebt: json['longTermDebt'],
      equity: json['equity'],
      retainedEarnings: json['retainedEarnings'],
    );
}

class BalancesheetDataRatios {
  num? currentRatio;
  num? quickRatio;
  num? cashRatio;
  num? workingCapital;
  num? debtToEquity;
  num? debtToAssets;
  num? longTermDebtToEquity;
  num? equityMultiplier;

  BalancesheetDataRatios({
    this.currentRatio,
    this.quickRatio,
    this.cashRatio,
    this.workingCapital,
    this.debtToEquity,
    this.debtToAssets,
    this.longTermDebtToEquity,
    this.equityMultiplier,
  });

  factory BalancesheetDataRatios.fromJson(Map<String, dynamic> json) => BalancesheetDataRatios(
      currentRatio: json['currentRatio'],
      quickRatio: json['quickRatio'],
      cashRatio: json['cashRatio'],
      workingCapital: json['workingCapital'],
      debtToEquity: json['debtToEquity'],
      debtToAssets: json['debtToAssets'],
      longTermDebtToEquity: json['longTermDebtToEquity'],
      equityMultiplier: json['equityMultiplier'],
    );
}

class BalancesheetDataFormatted {
  String? totalAssets;
  String? totalLiabilities;
  String? equity;
  String? workingCapital;

  BalancesheetDataFormatted({
    this.totalAssets,
    this.totalLiabilities,
    this.equity,
    this.workingCapital,
  });

  factory BalancesheetDataFormatted.fromJson(Map<String, dynamic> json) => BalancesheetDataFormatted(
      totalAssets: json['totalAssets'],
      totalLiabilities: json['totalLiabilities'],
      equity: json['equity'],
      workingCapital: json['workingCapital'],
    );
}

class BalancesheetRequest {
  String ticker;
  int? year;
  int? quarter;

  BalancesheetRequest({
    required this.ticker,
    this.year,
    this.quarter,
  });

  Map<String, dynamic> toJson() => {
      'ticker': ticker,
      if (year != null) 'year': year,
      if (quarter != null) 'quarter': quarter,
    };
}
