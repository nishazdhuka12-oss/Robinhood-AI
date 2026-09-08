# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-09-08
- session_start_value: $31.77
- Circuit breaker: inactive (drawdown 6.4%)
- Last updated: 2026-09-08 18:21 UTC

## Account Snapshot
- Total value: $29.73
- Cash: $6.73
- Options exposure: $23.00 (TLT $82.5C Sep 11 x1)
- 15% cash floor: $4.77 (15% of $31.77)
- Drawdown from session start: 6.4% ($2.04)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|------|------|------|----|-----|
| TLT | C | $82.5 | 2026-09-11 | 3 | 1 | $0.25 | $0.220 | -12% | 0.130 | SWING |

## Post-Earnings Watchlist
| Ticker | C/P | Dir | Beat% | ReportDate | Added |
|--------|-----|-----|-------|------------|-------|
| — | — | — | — | — | — |

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| — | — | — | — | — | — | — |

## Carry-Forward
1. TLT $82.5C 9/11 DTE=3 cost=$0.25 mark=$0.220 P&L=-12% IV=0.130 SWING | CPI Sep 11
2. MANDATORY EXIT Sep 9 tick (DTE→2); also exit if pnl≥0.75 or ≤-0.40 GTC
3. CPI+PPI Sep 11. FOMC Sep 15-16. TLT hold → exit Sep 9 pre-CPI.
4. KR Sep 11 AM skip (G2/G3 conflict). TCOM Sep 15 skip (G2/G3 conflict).
5. LEN Sep 16 PM: G2=1/4 PUTS, G3=PUTS — budget barrier (~$283/contract min).
6. max_cost=$1.96 (cash $6.73 - floor $4.77). No affordable contracts exist.
7. BRZE/CASY/AVO/TTAN report Sep 8 PM — check beats next tick (budget likely barrier).
8. Account too small for most options. TLT $0.01-tick uniquely affordable at this size.

## Session Log
[13:00 UTC] NEW DAY 2026-09-08. Reset start=$31.77, CB=inactive, floor=$4.77
[17:47 UTC] ScanA1 FAIL: GME non-recurring gain. UNFI spread fail.
[17:47 UTC] ScanA2 FAIL: KR G2/G3 conflict. TCOM G2/G3 conflict. LEN budget fail.
[17:47 UTC] ScanD PASS: TLT $82.5C 9/11 BUY $0.25 GFD placed (6aa04a29)
[18:06 UTC] TLT fill confirmed @$0.25. Mark=$0.245 P&L=-2%. HOLD. No new trade (max_cost=$1.96).
[18:21 UTC] S5: TLT mark=$0.220 P&L=-12% DTE=3. No exit triggers. HOLD.
[18:21 UTC] S6: ScanA ABM beat=3% skip, GME NR, UNFI budget-fail, KR G3-skip, LEN budget-fail. NO TRADE.
