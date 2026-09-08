# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-09-08
- session_start_value: $31.77
- Circuit breaker: inactive (drawdown 3.3% < 12%)
- Last updated: 2026-09-08 19:31 UTC

## Account Snapshot
- Total value: $30.73
- Cash: $6.73
- Options exposure: $24.00 (TLT $82.5C Sep 11 x1)
- 15% cash floor: $4.77 (15% of $31.77)
- Drawdown from session start: 3.3% ($1.04)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|------|------|------|----|-----|
| TLT | C | $82.5 | 2026-09-11 | 3 | 1 | $0.25 | $0.235 | -4% | 0.132 | SWING |

## Post-Earnings Watchlist
| Ticker | C/P | Dir | Beat% | ReportDate | Added |
|--------|-----|-----|-------|------------|-------|
| — | — | — | — | — | — |

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| — | — | — | — | — | — | — |

## Carry-Forward
1. TLT $82.5C 9/11 DTE=3 cost=$0.25 mark=$0.235 P&L=-4% IV=0.132 SWING
2. MANDATORY EXIT Sep 9 first tick (DTE→2); place sell limit GTC at mark
3. CPI Sep 11, FOMC Sep 15-16. TLT macro thesis intact but near expiry.
4. BRZE/CASY/AVO/TTAN/INNV Sep 8 PM — check beats at close/AH for Scan A1 next tick
5. LEN Sep 16 PM: G2=1/4 PUTS, G3=PUTS — re-eval after TLT exits and cash allows
6. CB previously tripped; now INACTIVE (drawdown recovered to 3.3%). Re-eval each tick.

## Session Log
[13:00 UTC] NEW DAY 2026-09-08. Reset start=$31.77, CB=inactive, floor=$4.77
[17:47 UTC] ScanA1 FAIL: GME non-recurring gain. UNFI spread fail.
[17:47 UTC] ScanA2 FAIL: KR G2/G3 conflict. TCOM G2/G3 conflict. LEN budget fail.
[17:47 UTC] ScanD PASS: TLT $82.5C 9/11 BUY $0.25 GFD placed (6aa04a29)
[18:06 UTC] TLT fill confirmed @$0.25. Mark=$0.245 P&L=-2%. HOLD. No new trade (max_cost=$1.96).
[18:21 UTC] S5: TLT mark=$0.220 P&L=-12% DTE=3. No exit triggers. HOLD.
[18:21 UTC] S6: ScanA/D fail. NO TRADE.
[18:40 UTC] S5: TLT mark=$0.225 P&L=-10% DTE=3. No exit triggers. HOLD.
[18:58 UTC] CB TRIPPED: total=$26.73 drawdown=15.9%. S5: TLT mark=$0.190 P&L=-24%. HOLD.
[19:15 UTC] S5: TLT mark=$0.210 P&L=-16% DTE=3. CB=12.7%. No exit triggers. HOLD.
[19:31 UTC] CB INACTIVE: total=$30.73 drawdown=3.3%. TLT mark=$0.235 P&L=-4% DTE=3. HOLD.
[19:31 UTC] S6: ScanA POST GME/UNFI/ABM fail; PRE Sep9-10 DTR<3; NO TRADE.
