# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-09-08
- session_start_value: $31.77
- Circuit breaker: inactive (drawdown 0%)
- Last updated: 2026-09-08 17:47 UTC

## Account Snapshot
- Total value: $31.77 (pending TLT fill)
- Cash: ~$6.73 (pending fill: $31.77 - $25.00 premium - $0.04 fees)
- Options exposure: TLT $82.5C Sep 11 x1 @ $0.25 cost (pending fill)
- 15% cash floor: $4.77 (15% of $31.77)
- Drawdown from session start: 0%

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|------|------|------|----|-----|
| TLT | C | $82.5 | 2026-09-11 | 3 | 1 | $0.25 | $0.255 | +2% | 0.127 | SWING |

## Post-Earnings Watchlist
| Ticker | C/P | Dir | Beat% | ReportDate | Added |
|--------|-----|-----|-------|------------|-------|
| — | — | — | — | — | — |

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| TLT | C | $82.5 | 2026-09-11 | $0.25 | 17:47 UTC | 6aa04a29 |

## Carry-Forward
1. TLT $82.5C 9/11 DTE=3 cost=$0.25 mark=$0.255 IV=0.127 SWING | ScanD CPI Sep 11 pre-event
2. EXIT: pnl≥0.75 sell GTC; pnl≤-0.40 sell GTC; DTE≤2 exit Sep 9 tick (sell before CPI)
3. KR earnings Sep 11 AM (G2=3/4 CALLS but G3 conflict, skip). TCOM Sep 15 (G2/G3 conflict).
4. LEN Sep 16 PM: G2=1/4 PUTS + G3=PUTS ✓ — budget barrier ($2.83/contract min, need $283).
5. GME: EPS beat from $238M eBay derivative gain (non-recurring), revenue -20%, skip.
6. FOMC Sep 15-16. CPI+PPI Sep 11. Pre-CPI IV low (0.127) — favorable entry today.
7. ROIV +20%, SEI +17%, FCEL +19% daily movers — no budget for options on $40-65 stocks.
8. Account too small for most options (≤$27 budget). TLT mini-ticks ($0.01) uniquely affordable.

## Session Log
[13:00 UTC] NEW DAY 2026-09-08. Reset start=$31.77, CB=inactive, floor=$4.77, max_cost=$27.00
[17:47 UTC] ScanA1 FAIL: GME dir not confirmed (eBay gain non-recurring). UNFI spread gate fail.
[17:47 UTC] ScanA2 FAIL: KR G2/G3 conflict. TCOM G2/G3 conflict. LEN budget fail ($283/contract).
[17:47 UTC] ScanD PASS: TLT $82.5C 9/11 BUY $0.25 GFD placed (6aa04a29) | CPI Sep 11 macro
