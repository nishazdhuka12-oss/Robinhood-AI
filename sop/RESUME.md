# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-10
- session_start_value: $98.25 (set at 13:34 UTC — new day)
- Circuit breaker: inactive
- Last updated: 2026-07-10 14:30 UTC

## Account Snapshot
- Total value: $95.21
- Cash: $36.21
- Options exposure: $59.00
- 15% cash floor: $14.74 (15% of $98.25)
- Buying power: $36.21

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| BAC | C | $61 | 2026-07-17 | 7 | 1 | $0.62 | $0.59 | -4.84% | 32.8% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|

## CARRY-FORWARD NOTES FOR NEXT TICK
- BAC SWING-EARN: reports July 14 AM (4 days). days_to_report = 4. At days_to_report ≤ 2, run IV expansion eval every tick: exit if IV > 0.80 AND gain ≥ 15%, or delta < 0.55. Current: IV 32.8%, delta 0.333, P&L -4.84%. HOLD.
- BUDGET: max_cost = $36.21 - $14.74 = $21.47. Binding constraint this tick.
- KEY $23C 7/17 (id: a7767cce): BEST SETUP — passes ALL quality gates: spread 16.7%, CoP 40.3%, delta 0.664, IV 29.1%, OI 1,955. KEY 4/4 beat rate, reports July 21, stock $23.345 > 20-day avg $22.97. ONLY blocker: cost $60 vs budget $21.47. Enter if budget frees up (BAC sold or other cash event).
- RF $31C 7/17: 3/4 beats, reports July 17, stock $30.885 > 20-day avg $29.73. ATM call $0.65 ($65/contract) — over budget. OTM strikes ($32C+) all fail spread gate (120-143% spread) and CoP gate.
- XLF $56C 7/17: SCAN D (CPI Jul 14 + bank earnings). XLF at $55.715. Mark was $0.445 last tick, now likely higher. Budget blocks entry ($21.47 max).
- JBHT: SCAN C candidate — Bernstein Outperform, PT raised $192→$329 (+71.4%). Reports July 15 (5 days). Need stock price and options quote next tick — likely over budget but worth checking if it pulled back.
- WDFC: Beat +48.4% Jul 9 PM, stock +16.84% today — EXCEEDS 15% post-earnings move limit. Disqualified.
- C, WFC, GS, JPM: All report July 14, all 4/4 or 3/4 beats, but options far too expensive for budget.
- NFLX: Reports July 16. Beat rate unknown (first check: estimate $0.79). Check beat history if budget improves.
- KEY best option strategy: exit must be by July 17 (4 days before July 21 earnings). July 17 options capture directional move + partial IV expansion but miss final pre-earnings IV spike (Aug 21 is next expiry — too long).

## Session Log (today — one line per event)
[13:34 UTC] New session 2026-07-10. session_start_value = $98.25. Portfolio: $98.25 cash, $0 options, no open positions.
[13:34 UTC] Circuit breaker inactive. Drawdown 0%. Reconcile: no open positions in account or RESUME.
[13:42 UTC] SCAN A PASS 2 — BAC $61C 7/17 buy 1 @ $0.65 limit GFD. Order ID: 6a50f6c5. Catalyst: BAC earnings July 14 (4 calendar days). 4/4 beat rate, price $59.74 > 20-day avg $57.77, delta 0.336, CoP 24.8%, IV 34.5%, spread 8%, OI 2,190, cost $65. Tag SWING-EARN. No broker alerts on review.
[13:58 UTC] Reconcile: BAC order 6a50f6c5 FILLED at $0.62/sh ($62 total). Moved to Open Positions. Mark now $0.565, unrealized -8.87%. Portfolio: total $92.21, cash $36.21, options $56.00.
[13:58 UTC] Circuit breaker: drawdown 6.15% ($98.25→$92.21). Below 12% threshold. Inactive.
[13:58 UTC] BAC $61C 7/17 position review: DTE=7, P&L=-8.87%. No exit triggered (a)-(e). HOLD.
[14:05 UTC] SCAN A Pass 2 new trade scan: ERIC $12C fails spread/budget; IV 81.2% elevated. WFC/C options unaffordable. XLF $56C $44.50 > $21.47 budget. No new trade. Daily minimum satisfied (BAC filled 13:42 UTC).
[14:30 UTC] STEP 2: Portfolio $95.21 (+$3.00 vs 14:05), options $59.00, cash $36.21. BAC mark $0.59 (+$0.025 vs prior tick), P&L now -4.84%.
[14:30 UTC] STEP 4: Drawdown = (98.25-95.21)/98.25 = 3.09%. Circuit breaker inactive.
[14:30 UTC] STEP 5: BAC $61C — mark $0.59, P&L -4.84%, DTE 7, days_to_report 4. No exit triggered: not +75%, not -40%, DTE>2, no catalyst reversal, days_to_report not ≤2. HOLD.
[14:30 UTC] STEP 6: SCAN A Pass 1 — WDFC disqualified (+16.84% exceeds 15% move limit); LEVI fading (−0.9% today, momentum gone); DAL skipped (carry-forward). SCAN A Pass 2 — RF 3/4 beats (reports Jul 17), KEY 4/4 beats (reports Jul 21): all affordable strikes fail spread gate (120-143%) and/or CoP gate. KEY $23C ATM passes all gates but costs $60 vs $21.47 budget. SCAN B: no PDUFA dates found in window. SCAN C: JBHT Bernstein upgrade +71% PT (likely over budget), TOL Citi upgrade +20.5% PT (too expensive). SCAN D: XLF at $55.715, $56C over budget. No new trade placed. Budget ($21.47) is binding constraint.
