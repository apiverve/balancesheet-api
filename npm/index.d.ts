declare module '@apiverve/balancesheet' {
  export interface balancesheetOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface balancesheetResponse {
    status: string;
    error: string | null;
    data: BalanceSheetData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BalanceSheetData {
      ticker:        null | string;
      company:       null | string;
      cik:           null | string;
      fiscalYear:    number | null;
      fiscalQuarter: number | null;
      filingType:    null | string;
      filingDate:    Date | null;
      periodEnd:     Date | null;
      balance:       { [key: string]: number | null };
      ratios:        Ratios;
      formatted:     Formatted;
  }
  
  interface Formatted {
      totalAssets:      null | string;
      totalLiabilities: null | string;
      equity:           null | string;
      workingCapital:   null | string;
  }
  
  interface Ratios {
      currentRatio:         number | null;
      quickRatio:           number | null;
      cashRatio:            number | null;
      workingCapital:       number | null;
      debtToEquity:         number | null;
      debtToAssets:         number | null;
      longTermDebtToEquity: number | null;
      equityMultiplier:     number | null;
  }

  export default class balancesheetWrapper {
    constructor(options: balancesheetOptions);

    execute(callback: (error: any, data: balancesheetResponse | null) => void): Promise<balancesheetResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: balancesheetResponse | null) => void): Promise<balancesheetResponse>;
    execute(query?: Record<string, any>): Promise<balancesheetResponse>;
  }
}
