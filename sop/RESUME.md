# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-10
- session_start_value: $98.25 (set at 13:34 UTC — new day)
- Circuit breaker: inactive
- Last updated: 2026-07-10 14:57 UTC

## Account Snapshot
- Total value: $100.21
- Cash: $36.21
- Options exposure: $64.00
- 15% cash floor: $14.74 (15% of $98.25)
- Buying power: $36.21

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| BAC | C | $61 | 2026-07-17 | 7 | 1 | $0.62 | $0.640 | +3.23% | 33.65% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|

## CARRY-FORWARD NOTES FOR NEXT TICK
- BAC SWING-EARN: reports July 14 AM (4 days). At days_to_report ≤ 2 (Mon Jul 13), run IV expansion eval every tick: exit if IV > 0.80 AND gain ≥ 15%, or delta < 0.55. Current: IV 33.65%, delta 0.347, P&L +3.23%. HOLD.
- BUDGET: max_cost = $36.21 - $14.74 = $21.47. Binding constraint every tick.
- KEY $23C 7/17 (id: a7767cce): BEST PRE-EARNINGS SETUP — passes ALL quality gates: spread 16.7%, CoP 40.3%, delta 0.664, IV 29.1%, OI 1,955. KEY 4/4 beat rate, reports July 21 (11 days), stock $23.345 > 20-day avg $22.97. ONLY blocker: cost $60 vs budget $21.47. Enter immediately if budget frees up (BAC exit or cash event). Last viable entry: ~July 18 (3 days before Jul 21 report).
- FHN $26C 7/17: 4/4 beat rate (ALL 6 recent quarters beat), reports July 15 AM (5 days = TODAY IS LAST DAY to enter pre-earnings; Monday Jul 13 = 2 days to report = hard skip). FHN at $25.815, above 20-day avg $25.33. $26C 7/17: delta 0.471, CoP 31.7%, IV 43.2%, spread 36.4% (OI 11,301 ≥ 500 → Hard Rule 9 cap 20%) — FAILS SPREAD even if budget improves. FHN pre-earnings window EXPIRED after today's session. No FHN trade possible.
- HBAN $19C 8/21: 3/4 beat rate, reports July 23 AM (13 days). HBAN at $17.895 > 20-day avg $17.56. $19C 8/21 (id: 827bfe05): delta 0.274, CoP 20.1%, IV 25.5%, spread 40% (OI 1,331 ≥ 500 → Hard Rule 9 cap 20%) — FAILS SPREAD. $18C 8/21 (id: 0cf2916c): delta 0.511, CoP 32.8%, spread 24% > 20% cap — FAILS SPREAD and over budget ($63). Both fail Hard Rule 9 spread gate. Enter if spread tightens and budget improves.
- FITB/TFC/RF/USB (Jul 17 reports): All ATM options over budget. OTM strikes fail CoP or spread gates.
- SCAN D (XLF CPI Jul 14): All XLF 7/17 options over budget or fail CoP/delta at viable strikes.
- JBHT SCAN C: Bernstein Outperform, PT $192→$329 (+71.4%). Reports July 15 PM (5 days). Options likely far over budget (stock ~$200+). Check price if budget frees up before close today.
- WDFC: Beat +48.4% Jul 9 PM, stock +16.84% — EXCEEDS 15% move limit. Permanently disqualified.
- C, WFC, GS, JPM (Jul 14): All 4/4 or 3/4 beats, but options far too expensive for budget.
- NFLX (Jul 16): Beat rate needs checking. Check if budget improves. Options likely expensive.
- TSLA (Jul 22, 12 days): Pre-earnings candidate. Beat rate unknown. Options expensive.

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
[14:57 UTC] STEP 2: Portfolio $100.21 (+$5.00 vs session start $98.25). BAC options value $64.00. Cash $36.21. BAC mark $0.640 (adjusted), P&L +3.23%, IV 33.65%, delta 0.347. Quote fresh 14:47 UTC.
[14:57 UTC] STEP 4: Portfolio $100.21 vs start $98.25 → UP $1.96 (+2.0%). No drawdown. Circuit breaker inactive.
[14:57 UTC] STEP 5: BAC $61C — mark $0.640, P&L +3.23%, DTE=7, days_to_report=4. No exit triggered: (a) not +75%; (b) not -40%; (c) DTE>2; (d) no catalyst reversal; (e) days_to_report=4, not ≤2. HOLD.
[14:57 UTC] STEP 6 SCAN A Pass 1: DAL beat +6.1% today AM, but stock -1.79% ($87.41 vs $89.00 prev close). Stock down on beat — direction does not confirm CALLS. Options all over $21.47 budget anyway. LEVI +0.04% (flat). SMPL beat +20% Jul 9 AM — options likely over budget for stock in $30s range. WDFC still disqualified. AZZ beat +10.1% Jul 8 PM — industrial co, options expensive. No Pass 1 candidates qualify.
[14:57 UTC] STEP 6 SCAN A Pass 2: FHN 4/4 beat rate, reports Jul 15 (5 days), price $25.815 > 20-day avg $25.33. FHN $26C 7/17: spread 36.4% FAILS Hard Rule 9 (OI 11,301 ≥ 500 → cap 20%). $27C 7/17: CoP 15.4% FAILS gate (need ≥20%), spread 40% FAILS. FHN pre-earnings window expires today (Jul 13 = 2 days to report = hard skip). HBAN 3/4 beat rate, reports Jul 23 (13 days), price $17.895 > 20-day avg $17.56. HBAN $18C 8/21: spread 24% FAILS Hard Rule 9 (OI 2,193 ≥ 500 → cap 20%), also over budget ($63). $19C 8/21: spread 40% FAILS, over budget ($25). $20C 8/21: spread 120% FAILS, CoP 11.4% FAILS. KEY $23C: still best setup, still $60 > $21.47 budget. FITB/TFC/USB all over budget.
[14:57 UTC] STEP 6 SCAN B: CAPR PDUFA Aug 22 (43 days) — too far. AdCom Jul 29 (19 days) — AdCom is not a PDUFA date. No qualifying SCAN B events.
[14:57 UTC] STEP 6 SCAN C: JBHT Bernstein upgrade +71.4% PT confirmed. Stock ~$200+, options far over budget. Pass.
[14:57 UTC] STEP 6 SCAN D: XLF CPI play (Jul 14). XLF options: all viable strikes over budget or fail CoP/delta within Hard Rule 9 spread cap. Pass.
[14:57 UTC] STEP 6 SCAN E/F: No sector movers >3% with verified catalyst. Daily minimum already satisfied (BAC). No new trade placed. Budget ($21.47) + spread (Hard Rule 9) are binding constraints.
