# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-09-09
- session_start_value: $39.73
- Circuit breaker: inactive (0% drawdown)
- Last updated: 2026-09-09 13:36 UTC

## Account Snapshot
- Total value: $39.73
- Cash: $6.73 (TLT sell pending)
- Options exposure: $33.00 (TLT $82.5C Sep 11 x1 mark=$0.33)
- 15% cash floor: $5.96 (15% of $39.73)
- Drawdown from session start: 0%

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|------|------|------|----|-----|
| TLT | C | $82.5 | 2026-09-11 | 2 | 1 | $0.25 | $0.33 | +32% | 0.164 | SWING |

## Post-Earnings Watchlist
| Ticker | C/P | Dir | Beat% | ReportDate | Added |
|--------|-----|-----|-------|------------|-------|
| SIG | C | CALLS | +26.6% | 2026-09-09 AM | 13:36 UTC |
| ASO | C | CALLS | +11.1% | 2026-09-09 AM | 13:36 UTC |
| SUNB | C | CALLS | +15.7% | 2026-09-09 AM | 13:36 UTC |
| KFY | C | CALLS | +5.1% | 2026-09-09 AM | 13:36 UTC |
| CNM | C | CALLS | +16.0% | 2026-09-09 AM | 13:36 UTC |
| SAIL | C | CALLS | +12.5% | 2026-09-09 AM | 13:36 UTC |

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| TLT | C | $82.5 | 2026-09-11 | $0.30 | 13:36 UTC | 6aa160ca-9c6a-48f0-9d68-db6a37975213 |

## Carry-Forward
1. TLT $82.5C 9/11 DTE=2 sell $0.30 GTC (6aa160ca) pending; mark=$0.33 P&L=+32%
2. Post-TLT fill: cash ~$36.73 floor=$5.96 max_cost~$30.77 — budget opens next tick
3. Post-earn watchlist: SIG/ASO/SUNB/KFY/CNM/SAIL CALLS — run gates+move≤15% at UTC≥14:00
4. LEN Sep 16 PM G2=1/4 PUTS G3=PUTS DTE=7 SWING-EARN — run full gates post-TLT fill
5. FDX Sep 21 PM (unverified) — run G2/G3; AZO Sep 22 AM DTR=13 check G2/G3
6. TCOM Sep 15 PM G2/G3 conflict — skip
7. Sep10 reporters CPRT/ORCL/ADBE/RH: DTE=1 at report → skip
8. CPI Sep 11, FOMC Sep 15-16 — macro backdrop for any macro scan

## Session Log
[13:00 UTC] NEW DAY 2026-09-09. Reset start=$39.73, CB=inactive, floor=$5.96
[13:36 UTC] S5: TLT DTE=2 exit trigger(c). Sell limit $0.30 GTC placed (6aa160ca). P&L=+32%
[13:36 UTC] S6: budget $0.77 < $5 min cost. NO TRADE — all scans blocked.
[13:36 UTC] ScanA1 POST: SIG+26.6%/ASO+11.1%/SUNB+15.7%/KFY+5.1%/CNM+16%/SAIL+12.5% → watchlist
