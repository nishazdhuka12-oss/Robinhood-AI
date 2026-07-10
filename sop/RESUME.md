# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-10
- session_start_value: $98.25 (set at 13:34 UTC — new day)
- Circuit breaker: inactive
- Last updated: 2026-07-10 14:05 UTC

## Account Snapshot
- Total value: $92.21
- Cash: $36.21
- Options exposure: $56.00
- 15% cash floor: $14.74 (15% of $98.25)
- Buying power: $36.21

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| BAC | C | $61 | 2026-07-17 | 7 | 1 | $0.62 | $0.565 | -8.87% | 33.3% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|

## CARRY-FORWARD NOTES FOR NEXT TICK
- BAC SWING-EARN: reports July 14 AM (4 days). days_to_report = 4 now. At days_to_report ≤ 2, run IV expansion eval every tick: exit if IV > 0.80 AND gain ≥ 15%, or delta < 0.55. Current: IV 33.3%, delta 0.32, P&L -8.87%.
- BUDGET: max_cost = $36.21 - $14.74 = $21.47. Very tight — most viable setups require $44+ per contract.
- BEST NEXT CANDIDATE: XLF $56C 7/17 (id: 017fd61b) at mark $0.445 ($44.50/contract). Passes ALL gates: CoP 30.6%, delta 0.43, IV 18.2%, spread 11%, OI 10,898. Blocked today by budget ($44.50 > $21.47). If BAC gains OR cash frees up, enter XLF as SCAN D (CPI + bank earnings catalyst July 14).
- C (Citigroup): 4/4 beat rate, July 14 AM. Stock at $140.75 → options far too expensive for current budget.
- WFC (Wells Fargo): 3/4 beat rate (Q1 2026 was -1.3%, borderline skip), July 14 AM. Options too expensive within budget.
- NFLX reports July 16 (6 days). Beat rate unknown — check next tick if budget improves.
- ERIC: 3/4 beats but Q1 2026 was massive miss (-76.9%). $12C spread 33% fails gate. Skip.
- DAL: Skip (beat +6.12% but stock sold off on the day).

## Session Log (today — one line per event)
[13:34 UTC] New session 2026-07-10. session_start_value = $98.25. Portfolio: $98.25 cash, $0 options, no open positions.
[13:34 UTC] Circuit breaker inactive. Drawdown 0%. Reconcile: no open positions in account or RESUME.
[13:42 UTC] SCAN A PASS 2 — BAC $61C 7/17 buy 1 @ $0.65 limit GFD. Order ID: 6a50f6c5. Catalyst: BAC earnings July 14 (4 calendar days). 4/4 beat rate, price $59.74 > 20-day avg $57.77, delta 0.336, CoP 24.8%, IV 34.5%, spread 8%, OI 2,190, cost $65. Tag SWING-EARN. No broker alerts on review.
[13:58 UTC] Reconcile: BAC order 6a50f6c5 FILLED at $0.62/sh ($62 total). Moved to Open Positions. Mark now $0.565, unrealized -8.87%. Portfolio: total $92.21, cash $36.21, options $56.00.
[13:58 UTC] Circuit breaker: drawdown 6.15% ($98.25→$92.21). Below 12% threshold. Inactive.
[13:58 UTC] BAC $61C 7/17 position review: DTE=7, P&L=-8.87%. No exit triggered (a)-(e): not +75%, not -40%, DTE>2, no catalyst reversal, days_to_report=4 (not ≤2). HOLD.
[14:05 UTC] SCAN A Pass 2 new trade scan: ERIC $12C fails spread (33%>25%) and budget ($30>$21.47); IV 81.2% elevated. WFC 3/4 beats but options unaffordable. C 4/4 beats but stock $140.75, options far over budget. SCAN D: XLF $56C best setup (CoP 30.6%, delta 0.43, IV 18.2%) but $44.50 exceeds $21.47 available. No new trade placed. Daily minimum satisfied (BAC filled 13:42 UTC).
