# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-23
- session_start_value: $108.01
- Circuit breaker: ACTIVE (drawdown 30.55% ≥ 12%)
- Last updated: 2026-07-23 14:51 UTC (09:51 CT)

## Account Snapshot
- Total value: $75.01
- Cash: $44.01
- Options exposure: $31.50 (1× T Jul31 $23C mark $0.315)
- 15% cash floor: $16.20 (15% of $108.01)
- Buying power: $44.01
- Drawdown from session start: 30.55% → CB ACTIVE

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| T | C | $23 | 2026-07-31 | 8 | 1 | $0.55 | $0.315 | −42.7% | 0.296 | POST-EARN |

## Post-Earnings Watchlist
(empty)

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| T | C | $23 | 2026-07-31 | $0.30 | 14:51 | 6a622a74-2107-41b5-bc3b-96d44a8a5bd3 |

## Carry-Forward
1. SESSION: start $108.01, CB ACTIVE 30.55% (total $75.01), floor $16.20. No new trades.
2. T Jul31 $23C: EXIT ORDER live — sell limit $0.30 GTC order 6a622a74. Trigger: P&L≤−40% (hit).
3. On fill: cash ~$74, all-cash, CB stays active. No new trades rest of session.
4. BKR: 4/4 beats → CALLS, reports Jul26 PM (3 DTR). Eval when CB inactive + budget clear.
5. T DTE≤2 exit fires Jul29 — cancel sell order if unfilled and re-place same day if needed.

## Session Log
[13:32 UTC] NEW DAY RESET 2026-07-23. start=$108.01. CB inactive. Floor $16.20. T pos carried.
[13:41 UTC] CB TRIPPED 27.8% (total $78.01 vs $108.01). T $23C mark $0.34 P&L −38.18% HOLD (stop $0.33).
[14:00 UTC] T $23C mark $0.350 P&L −36.36% HOLD (above $0.33 stop). CB 26.85%. S6 skip.
[14:17 UTC] T $23C briefly touched $0.33 (−40%), bounced to $0.350 (−36.36%). HOLD. CB 26.85%. S6 skip.
[14:34 UTC] T $23C mark $0.340 P&L −38.18%. Stop $0.330 not hit. HOLD. CB 27.77%. S6 skip.
[14:51 UTC] T $23C mark $0.315 P&L −42.7% → EXIT(b) fired. Sell limit $0.30 GTC placed. Order 6a622a74.
