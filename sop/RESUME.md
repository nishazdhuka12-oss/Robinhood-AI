# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-16
- session_start_value: $154.15
- Circuit breaker: inactive
- Last updated: 2026-07-16 19:53 UTC

## Account Snapshot
- Total value: $154.15
- Cash: $154.15
- Options exposure: $0 (KEY order GFD — expires ~20:00 UTC)
- 15% cash floor: $23.12 (15% of $154.15)
- Buying power: $24.11 (~$130 reserved for pending KEY order)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
(none — KEY order pending fill; GFD expires ~20:00 UTC)

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
(none)

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
| KEY | C | $23.00 | 2026-08-21 | $1.30 | 2026-07-16 13:49 UTC | 6a58e15b-f915-4fad-9729-2d363f353c3e |

## CARRY-FORWARD NOTES FOR NEXT TICK

### ACTIVE ORDER — KEY $23C 8/21 — GFD EXPIRING ~20:00 UTC TODAY
- Order ID: 6a58e15b-f915-4fad-9729-2d363f353c3e
- Instrument ID: c6c36034-240f-4196-87c3-c978a5605270
- Limit: $1.30/share ($130/contract), GFD, regular_hours
- Mark at 19:53 UTC: $1.475 (14th consecutive tick unchanged)
- Bid $1.40 × 526, ask $1.55 × 1 — ask side nearly empty all afternoon
- Limit $0.10 below bid, $0.175 below mark — fill did not occur today
- Cannot raise limit: $1.35 × 100 = $135 > budget cap $131.03
- GFD EXPIRES ~20:00 UTC (3:00 PM CT) — order will be voided by Robinhood
- **ACTION AT NEXT TICK (AFTER-HOURS or Jul 17 open):**
  - Verify order state = cancelled/voided (confirms budget restored to ~$131.03)
  - Re-validate KEY gates for Jul 17 re-placement (all confirmed as of today)
  - Re-place tomorrow Jul 17 at open: limit = mark at time of placement, rounded to $0.05, ≤ $1.31
  - If mark still ~$1.475 → max viable limit still $1.30 (same as today)
  - If mark drops to ≤ $1.30: limit = mark rounded to $0.05 (e.g., $1.25 or $1.30)
- **HARD DEADLINE: Jul 18** (must be placed with DTE ≥ 3 targeting Jul 21 AM earnings)
- All gates confirmed: spread 10.2% ✓, delta 0.712 ✓, CoP 40.9% ✓, IV 28.4% ✓, DTE 36 ✓, OI 1168 ✓
- Beat rate 4/4, reports Jul 21 AM (5 days), CALLS, stock > SMA. Tag SWING-EARN. EXIT before Jul 21 open.

### SECOND PRIORITY — T $21P 7/31
- Beat rate 1/4 → PUTS. Reports Jul 22 AM.
- Budget: if KEY fills → net cash ~$24 (no room for T until KEY exits profitably)
- Budget: if KEY GFD expired unfilled → full ~$131.03 restored Jul 17 → T ($43) fits easily
- T deadline: Jul 18 (last viable day for DTE ≥ 3 at entry targeting Jul 31 expiry)
- T $21P Jul 31 instrument: d84c315f-863b-405b-9637-064ddf4828ef. Re-verify spread/quote Jul 17.

### SCAN A PASS 1 — CHECK AT NEXT TICK
- **NFLX**: reports Jul 16 PM (after 20:00 UTC today). Check actuals at next after-hours or Jul 17 open.
- **AA**: reports Jul 16 PM. Alcoa ~$35-40/sh → check actuals + affordable strikes Jul 17.
- **ISRG**: reports Jul 16 PM. Intuitive Surgical ~$500+ → options likely too expensive.
- **FNB**: reports Jul 16 PM. First National Bank ~$14/sh → check actuals + gates Jul 17.
- **RF (Regions Financial)**: Jul 17 AM → check actuals at Jul 17 open
- **TFC (Truist Financial)**: Jul 17 AM → check actuals at Jul 17 open
- **TRV (Travelers)**: Jul 17 AM, est $4.94 (likely expensive) → check actuals + budget Jul 17
- **FITB (Fifth Third)**: Jul 17 AM → check actuals at Jul 17 open
- **CMA (Comerica)**: Jul 17 AM → check actuals at Jul 17 open
- **ALV (Autoliv)**: Jul 17 AM → check actuals at Jul 17 open

### SCAN A PASS 2 — UPCOMING HIGH-PRIORITY CANDIDATES (days_to_report 3-14)
- ZION (Zions Bancorp): Jul 20 PM (4 days). Need beat rate → check Jul 17.
- WTFC (Wintrust Financial): Jul 20 PM (4 days). Need beat rate → check Jul 17.
- STLD (Steel Dynamics): Jul 20 PM (4 days). Need beat rate → check Jul 17.
- WRB (W.R. Berkley): Jul 20 PM (4 days). Insurance. Need beat rate → check Jul 17.
- GM (General Motors): Jul 21 AM (5 days). 4/4 beat → CALLS. Stock $77.39 → check affordable strikes.
- GOOGL (Alphabet): Jul 22 PM (6 days). 4/4 beat → CALLS. High stock price. Check affordable strikes.
- TSLA (Tesla): Jul 22 PM (6 days). 3/4 beat → CALLS. WARNING: High IV. Check Gate 4.
- TXN (Texas Instruments): Jul 22 PM (6 days). Check beat rate + gates Jul 17.
- IBM: Jul 22 PM (6 days). Check beat rate + gates Jul 17.
- LMT (Lockheed Martin): Jul 23 AM (7 days). Check beat rate + gates Jul 17.
- RTX (Raytheon): Jul 23 AM (7 days). Check beat rate + gates Jul 17.
- HON (Honeywell): Jul 23 AM (7 days). Check beat rate + gates Jul 17.

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate → Gate 2 fail
- COF: 2/4 beat rate → Gate 2 fail
- SCHW: 2/4 beat rate → Gate 2 fail
- AAL: Gate 3 conflict (price below SMA → PUTS, beat rate → CALLS)
- HAL: All strikes fail spread 50-65%
- CMCSA: Spread 33% fails ≤25% gate
- BAC: PERMANENTLY CLOSED +90.3% P&L. No re-entry.

### BUDGET NOTES
- session_start_value $154.15, min_cash_floor $23.12
- After KEY GFD expires at 20:00 UTC: full budget $131.03 restored (assuming no fill)
- T $21P ($43) fits Jul 17 budget
- KEY re-placement at $1.30: $130 ≤ $131.03 ✓ (if mark still ~$1.475 tomorrow)
- Both KEY re-placement AND T can be held simultaneously only if max_cost math works:
  - KEY $130 + T $43 = $173 > $131.03 → CANNOT hold both at same time
  - KEY takes priority (closer deadline, higher conviction). T after KEY exits or drops.

## Session Log (today — one line per event)
[13:41 UTC] NEW SESSION 2026-07-16. session_start_value = $154.15. Circuit breaker inactive (drawdown 0%). min_cash_floor = $23.12. max_cost = $131.03. Prior session date 2026-07-15 → new day reset. Watchlist + log cleared.
[13:41 UTC] STEP 2: Portfolio total $154.15, cash $154.15, options $0. BP = $29.11 (KEY $1.25 order placed pre-market at 11:23 UTC reserved ~$125). No open option positions confirmed.
[13:44 UTC] STEP 3 RECONCILE: Found prior agentic order KEY $23C 8/21 (6a58bf2a) placed at 11:23 UTC (pre-market), limit $1.25, GFD, confirmed/pending. Not logged in prior RESUME (placed between sessions). Discrepancy logged.
[13:44 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:44 UTC] STEP 5: No open option positions. No exits required.
[13:46 UTC] SCAN A Pass 1 — Jul 16 AM actuals: UNH est $4.85 actual $6.38 (+31.5% ✓) CALLS but stock $455 → options >> $131 BLOCKED. TSM est $3.77 actual $4.31 (+14.4% ✓) but stock $408 down -2.7% (sell-the-news) → BLOCKED. GE est $1.85 actual $2.02 (+9.2% ✓) but stock $348 down -3.4% → BLOCKED. STT est $3.24 actual $3.65 (+12.7% ✓) stock $188 → BLOCKED. USB est $1.27 actual $1.35 (+6.3% ✓) stock $63.88 → budget committed to KEY → no room. CFG est $1.24 actual $1.30 (+4.8%) → <5% skip. ABT est $1.28 actual $1.31 (+2.3%) → <5% skip.
[13:47 UTC] SCAN A Pass 1 — Jul 15 PM actuals: JBHT est $1.71 actual $1.91 (+11.7% ✓) CALLS, stock $293.19 up +6.1% from $276.28 ≤15% ✓, but stock $293 → ATM options >> $131 BLOCKED. UAL est $1.81 actual $1.99 (+9.9% ✓) CALLS, but stock $117.00 DOWN -3.3% from $120.97 (sell-the-news); ATM calls ~$200+ → BLOCKED by budget AND adverse direction. SNV actual null (unverified date) → skip.
[13:48 UTC] KEY $23C 8/21 quote: mark $1.40, bid $1.35, ask $1.45, spread 7.1% ✓, delta 0.681 ✓, CoP 39.8% ✓, IV 29.4% ✓, OI 1168 ✓. All gates pass. Mark $1.40 = $140 > max_cost $131.03 → BLOCKED at mark. Max viable limit at $0.05 increment = $1.30 ($130 ≤ $131.03 ✓).
[13:48 UTC] CANCELLED prior KEY $23C order 6a58bf2a (limit $1.25, below bid $1.35 → unlikely to fill). Cancel confirmed at 13:46:55 UTC.
[13:49 UTC] SCAN A Pass 2 — KEY $23C 8/21: review_option_order clean (no alerts, no WIDE_BID_ASK). Fees $0.04. Placed limit buy $1.30 GFD regular_hours. Order 6a58e15b unconfirmed/pending. Cost $130 ≤ max_cost $131.03 ✓. Budget committed: remaining above floor ~$1.03 → no further trades possible this tick.
[14:07 UTC] TICK 09:06 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.40, bid $1.35 × 138 — needs ~$0.22 KEY stock pullback to fill. Cannot raise: $135 > budget cap. BP $24.11, after floor $0.99 → no new trades. PLD +6.5% beat (AM today) BLOCKED by budget. Jul 16 PM reporters (NFLX/AA/ISRG/FNB) actuals pending → carry to Jul 17.
[14:25 UTC] TICK 09:25 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Fresh quote: mark $1.375 (↓ from $1.40), bid $1.30 × 596 (↓ from $1.35 × 138), ask $1.45 × 3. BID NOW AT $1.30 — our limit is at the bid; fill depends on seller crossing spread. IV 28.1%, delta 0.691, OI 1168, spread 10.9% ✓. BP $24.11, above floor $0.99 → no new trades.
[14:42 UTC] TICK 09:42 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark moved UP to $1.45 (↑ from $1.375), bid $1.40 × 604 (↑ from $1.30), ask $1.50 × 5. Our limit now $0.10 BELOW bid — fill requires ~$0.35–0.40 stock pullback. Cannot raise: $1.35 × 100 = $135 > budget cap. IV 28.8%, delta 0.699, OI 1168, spread 6.9% ✓. BP $24.11, above floor $0.99 → no new trades. Jul 16 PM reporters (NFLX/AA/ISRG/FNB) not yet reported → carry to next tick.
[14:59 UTC] TICK 09:59 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.45 (steady), bid $1.40 × 482 (↓ from 604), ask $1.50 × 5. Limit $0.10 below bid; fill requires KEY stock pullback or seller crossing spread. IV 29.1%, delta 0.696, CoP 40.3%, OI 1168, vol 32. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[15:18 UTC] TICK 10:18 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark ROSE to $1.525 (↑ from $1.45), bid $1.50 × 89 (↑ from $1.40), ask $1.55 × 1. Limit now $0.20 BELOW bid — needs larger KEY stock pullback to fill. IV 30.1%, delta 0.703, CoP 40.5%, OI 1168, vol 42. Cannot raise limit: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[15:34 UTC] TICK 10:34 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.525 (steady), bid $1.45 × 465 (↓ from $1.50), ask $1.60 × 405 (↑ from $1.55). Limit $0.15 BELOW bid (gap narrowed from $0.20). Spread 9.8% ✓, IV 30.7%, delta 0.697, CoP 40.2%, OI 1168, vol 42. Fill requires ~$0.35–0.40 KEY stock pullback. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[15:50 UTC] TICK 10:50 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark ticked DOWN to $1.50 (↓ from $1.525), bid $1.45 × 124 (↓ in size from 465), ask $1.55 × 189. Limit $0.15 below bid, $0.20 below mark. Spread 6.7% ✓, IV 30.2%, delta 0.696, CoP 40.2%, OI 1168, vol 43. Mark trending slightly lower — fill possible if KEY stock continues pullback. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[16:06 UTC] TICK 11:06 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (↓ from $1.50), bid $1.40 × 481 (flat size, down $0.05 from $1.45), ask $1.55 × 44. Limit $0.10 below bid, $0.175 below mark — gap narrowing. Spread 10.2% ✓, IV 29.85%, delta 0.695, CoP 40.23%, OI 1168, vol 43. Mark drifting lower since intraday high of $1.525 — fill possible on continued pullback. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[16:23 UTC] TICK 11:23 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady), bid $1.40 × 213 (↓ from 481), ask $1.55 × 61 (↑ size from 44). Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 29.6%, delta 0.698, CoP 40.3%, OI 1168, vol 44. Mark holding at $1.475 — bid size thinning (213 from 481) but no fill; fill requires KEY stock pullback. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[16:41 UTC] TICK 11:41 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady), bid $1.40 × 234 (↑ from 213), ask $1.55 × 76 (↑ from 61). Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 30.1%, delta 0.692, CoP 40.1%, OI 1168, vol 44. Mark holding flat at $1.475 for 3+ ticks — bid size recovering (234 from 213 low). No fill; fill requires KEY stock pullback. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[16:58 UTC] TICK 11:58 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 4th consecutive tick unchanged), bid $1.40 × 179 (↓ from 234), ask $1.55 × 103 (↑ from 76). Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 29.3%, delta 0.701, CoP 40.5%, OI 1168, vol 44. Bid size thinning (179 ↓ from 234); ask size building (103 ↑ from 76) — slight selling pressure. ~3 hrs left in regular session for GFD. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[17:15 UTC] TICK 12:15 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 5th consecutive tick unchanged), bid $1.40 × 210 (↑ from 179), ask $1.55 × 1 (↓ dramatically from 103 — ask nearly gone). Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 28.3% (↓), delta 0.713 (↑), CoP 41.0%, OI 1168, vol 44. Ask side drying up to 1 contract; bid holding 210. ~2:45 remaining for GFD. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. Daily minimum trade check active at 18:30 UTC if still no trade. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[17:31 UTC] TICK 12:31 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 6th consecutive tick unchanged), bid $1.40 × 711 (↑ sharply from 210), ask $1.55 × 1. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 28.8%, delta 0.707, CoP 40.7%, OI 1168, vol 44. Bid size surged to 711 — strong buying interest, ask still at 1 contract. ~2:29 left in regular session for GFD. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. Daily minimum at 18:30 UTC: budget constrained ($0.99 above floor) even if triggered — no qualifying setup possible while KEY pending.
[17:49 UTC] TICK 12:49 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 7th consecutive tick unchanged), bid $1.40 × 629 (↓ from 711), ask $1.55 × 1. Quote fresh 17:48 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 28.8%, delta 0.707, CoP 40.7%, OI 1168, vol 44. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. ~1:11 left in regular session for GFD; re-place Jul 17 at mark if unfilled.
[18:05 UTC] TICK 13:05 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 8th consecutive tick unchanged), bid $1.40 × 191 (↓ sharply from 629), ask $1.55 × 221 (↑ sharply from 1 — sellers flooding in). Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 31.2% (↑), delta 0.681, CoP 39.6%, OI 1168, vol 44. Ask surge to 221 contracts signals sellers actively offering at $1.55 — reduces fill probability at $1.30. ~1:55 left in GFD window. Daily minimum fires at 18:30 UTC but budget above floor $0.99 → no qualifying setup possible. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[18:23 UTC] TICK 13:23 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 9th consecutive tick unchanged), bid $1.40 × 395 (↑ sharply from 191 — buyers rebuilding), ask $1.55 × 37 (↓ sharply from 221 — sellers retreating). Quote fresh 18:23 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 29.6% (↓), delta 0.698, CoP 40.3%, OI 1168, vol 44. Ask collapse + bid rebuild is bullish order flow signal, but mark unmoved at $1.475 — fill still requires KEY stock pullback of ~$0.35–0.40. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. ~1:37 left in GFD window. Daily minimum (18:30 UTC): budget $0.99 above floor → no qualifying setup possible while KEY pending. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[18:41 UTC] TICK 13:41 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 10th consecutive tick unchanged), bid $1.40 × 243 (↓ from 395), ask $1.55 × 257 (↑ sharply from 37 — sellers flooding back). Quote fresh 18:40:51 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 30.69% (↑), delta 0.687, CoP 39.88%, OI 1168, vol 44. Ask rebuilt to 257 contracts — sellers active at $1.55; bid thinning to 243. Fill requires KEY stock pullback; odds remain low at $1.30. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. Daily minimum active (18:30 UTC): budget constrained — $0.99 above floor, no qualifying setup possible while KEY pending. ~1:19 left in GFD window. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[18:57 UTC] TICK 13:57 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 11th consecutive tick unchanged), bid $1.40 × 419 (↑ sharply from 243 — buyers flooding back), ask $1.55 × 20 (↓ dramatically from 257 — sellers retreating). Quote fresh 18:56 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 29.6% (↓), delta 0.698, CoP 40.3%, OI 1168, vol 44. MOST BULLISH ORDER BOOK OF SESSION: ask nearly gone (20 contracts), bid very strong (419) — signal of buyer demand but mark unmoved at $1.475. Fill still requires KEY stock pullback to $1.30 level. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. Daily minimum (18:30 UTC): budget $0.99 above floor → no qualifying setup possible. ~1:03 left in GFD window. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[19:14 UTC] TICK 14:14 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 12th consecutive tick unchanged), bid $1.40 × 387 (↓ from 419), ask $1.55 × 27 (↑ from 20). Quote fresh 19:15 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 29.4%, delta 0.701, CoP 40.5%, OI 1168, vol 44. ~46 min left in GFD window. Daily minimum (18:30 UTC): budget $0.99 above floor + Hard Rule 14 (no SCAN E/F 19:00-20:00 UTC) → no qualifying setup possible. Cannot raise: $1.35 × 100 = $135 > budget cap $131.03. BP $24.11, above floor $0.99 → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[19:35 UTC] TICK 14:35 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 13th consecutive tick unchanged), bid $1.40 × 602 (↑ sharply from 387), ask $1.55 × 1 (↓ sharply from 27 — ask nearly gone again). Quote fresh 19:34 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.7% ✓, IV 29.5%, delta 0.699, CoP 40.4%, OI 1168, vol 44. Bid surged (602) + ask collapsed (1) = bullish OB signal. ~25 min left in GFD window. Hard Rule 14 (no SCAN E/F 19:00-20:00 UTC) blocks scan. Budget $0.99 above floor → no new trades. GFD expires ~20:00 UTC today; re-place Jul 17 at mark if unfilled.
[19:53 UTC] TICK 14:53 CT: KEY order 6a58e15b still pending (GFD, $1.30 limit). Mark $1.475 (steady — 14th consecutive tick unchanged), bid $1.40 × 526 (↓ from 602), ask $1.55 × 1 (unchanged — ask side nearly empty all session close). Quote fresh 19:53:06 UTC. Limit $0.10 below bid, $0.175 below mark. Spread 10.2% ✓, IV 28.4%, delta 0.712, CoP 40.9%, OI 1168, vol 44. ~7 min left in GFD window. Hard Rule 14 active; budget $0.99 above floor → no new trades. FINAL REGULAR-SESSION TICK. GFD expires at ~20:00 UTC (3:00 PM CT) — order will be voided. Re-place at Jul 17 open at mark rounded to $0.05, ≤ $1.31 budget cap.
