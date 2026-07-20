# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-20
- session_start_value: $147.11
- Circuit breaker: ⚠️ ACTIVE (drawdown 12.23% ≥ 12% — no new trades; exits only)
- Last updated: 2026-07-20 14:47 UTC

## Account Snapshot
- Total value: $129.11
- Cash: $24.11
- Options exposure: $105.00 (KEY $23C 8/21 × 1, mark $1.05)
- 15% cash floor: $22.07 (15% of $147.11)
- Buying power: $24.11
- max_cost: N/A — circuit breaker active

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| KEY | C | $23.00 | 2026-08-21 | 32 | 1 | $1.30 | $1.05 | -19.2% | 29.0% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
(none)

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
(none)

## CARRY-FORWARD NOTES FOR NEXT TICK

### KEY $23C 8/21 — ACTIVE POSITION (SWING-EARN) ⚠️ EARNINGS TOMORROW AM
- Instrument: c6c36034-240f-4196-87c3-c978a5605270
- Cost: $1.30/sh ($130 total). Last mark: $1.05. P&L -19.2%.
- KEY reports Jul 21 AM. days_to_report = 1 → SWING-EARN eval ACTIVE every tick today.
- **PULL FRESH QUOTE AT EACH TICK — do not use stale pre-market data for SWING-EARN eval.**
- EXIT if: (IV > 0.80 AND pnl_pct >= 0.15) OR delta < 0.55
- HOLD THROUGH EARNINGS only if ALL: beat_rate=4/4 ✓, delta≥0.55, pnl_pct<0.15, none of (a)-(d) triggered.
- Last known (14:47 UTC): IV 29.0% (well below 0.80), delta 0.609 (≥0.55), P&L -19.2% (<15%) → HOLD THROUGH EARNINGS confirmed.
- After Jul 21 AM announcement: apply (a)-(d) immediately. Catalyst reversed → close immediately.
- Standard exits: (a) ≥75% → $2.275/sh; (b) ≤-40% → $0.78/sh; (c) DTE≤2 → Aug 19.
- ⚠️ CIRCUIT BREAKER ACTIVE: drawdown 12.23%. Exits only until new session day.

### BUDGET STATUS
- session_start_value $147.11, min_cash_floor $22.07, max_cost blocked (CB active)
- Budget unlocks when KEY exits or on new session day (Jul 21).
- On Jul 21: if KEY exits AM, cash ~$129.11 + P&L. Then scan for pre-earnings entries.

### SCAN A PASS 2 — PIPELINE (notes for when CB clears / KEY exits Jul 21)
**Jul 21 (today forward):**
- KEY: reports AM → apply (a)-(d) post-announcement. Budget unlocks.
- GM, CB, MMM: DTR=0 or 1 on Jul 21 → Gate 1 FAIL, skip.

**Jul 22 (DTR=1 on Jul 21 → Gate 1 FAIL):**
- TSLA, GOOGL, IBM, TXN (PM), T (beat_rate 1/4 → PUTS if entering), PM, CME.
- Note: T 1/4 beat rate = PUTS per SCAN A Pass 2 gate. All Gate 1 fail on Jul 21 (DTR=1).

**Jul 23 (DTR=2 on Jul 21 → Gate 1 FAIL — too late):**
- HON, LMT, RTX, INTC, TMUS: ALL Gate 1 fail (need DTR 3-14). Entry window was Jul 20; missed.

**Jul 24 (DTR=3 on Jul 21 → Gate 1 ✓ — ACTIONABLE Jul 21):**
- AXP: verify beat rate, price vs 20d avg, IV.
- NEE: verify beat rate, price vs 20d avg, IV.
- VZ: verify beat rate, price vs 20d avg, IV.
- SLB: verify beat rate, price vs 20d avg, IV.
- → All require fresh earnings calendar + IV verification on Jul 21.

**POST-EARNINGS (Jul 21, REGULAR session UTC ≥ 14:00):**
- KEY itself: if (a) or (b) or (d) triggers at open, handle as exit per STEP 5.
- TSLA/GOOGL/IBM/TXN/T/PM/CME (reporting Jul 22 AM): Pass 1 eligible if eps.actual populated.

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate
- COF: 2/4 beat rate
- SCHW: 2/4 beat rate
- AAL: Gate 3 conflict
- HAL: Spread 50-65% fail
- CMCSA: Spread 33% fail

## Session Log (today — one line per event)
[11:13 UTC] NEW DAY RESET 2026-07-20. session_start_value = $147.11. Circuit breaker inactive. min_cash_floor = $22.07. max_cost = $2.04.
[11:13 UTC] STEP 2: Portfolio total $147.11, cash $24.11, options $123.00 (KEY mark stale). BP $24.11.
[11:13 UTC] STEP 3 RECONCILE: 1 open position confirmed (KEY $23C 8/21 × 1, avg $1.30, instrument c6c36034). 0 pending orders. State matches.
[11:13 UTC] STEP 4: Drawdown 0% (new session). Circuit breaker inactive.
[11:13 UTC] STEP 5: KEY quote STALE (updated 2026-07-17 19:59 UTC — 63h ago). Pre-market: skip P&L exits on stale data. DTE=32 → no exit (c). SWING-EARN eval deferred to open.
[11:13 UTC] STEP 6: max_cost $2.04. Pre-market — all scans budget-blocked. No qualifying setup.
[13:35 UTC] STEP 2: Portfolio total $147.11, cash $24.11, options $123.00. BP $24.11.
[13:35 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[13:35 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:35 UTC] STEP 5: KEY quote FRESH (13:35:04 UTC) — mark $1.225 (adj $1.230), IV 32.7%, delta 0.623. Bid $1.05×408 / Ask $1.40×454 (spread 28.6% at open — wide, normal). P&L -5.4%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.327 < 0.80 → exit cond 1 NOT met. Delta 0.623 ≥ 0.55 → exit cond 2 NOT met. Hold-through criteria: beat_rate 4/4 ✓, delta 0.623 ✓, P&L -5.4% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[13:35 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[13:38 UTC] STEP 2: Portfolio $147.11, cash $24.11, options $122.50 (KEY mark $1.225). BP $24.11.
[13:38 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[13:38 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:38 UTC] STEP 5: KEY quote FRESH (13:37:08 UTC) — mark $1.225 (adj $1.230), IV 32.7%, delta 0.623. P&L -5.4%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.327 < 0.80 → exit cond 1 NOT met. Delta 0.623 ≥ 0.55 → exit cond 2 NOT met. Hold-through criteria: beat_rate 4/4 ✓, delta 0.623 ✓, P&L -5.4% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[13:38 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[13:54 UTC] STEP 2: Portfolio $144.11, cash $24.11, options $120.00 (KEY mark $1.20). BP $24.11. Drawdown 2.04%.
[13:54 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[13:54 UTC] STEP 4: Drawdown 2.04% < 12%. Circuit breaker inactive.
[13:54 UTC] STEP 5: KEY quote FRESH (13:54:21 UTC) — mark $1.20, IV 31.2%, delta 0.629. Bid $1.10×143 / Ask $1.30×186. P&L -7.7%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.312 < 0.80 → exit cond 1 NOT met. Delta 0.629 ≥ 0.55 → exit cond 2 NOT met. Hold-through: beat_rate 4/4 ✓, delta 0.629 ✓, P&L -7.7% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[13:54 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[14:11 UTC] STEP 2: Portfolio $139.11, cash $24.11, options $115.00 (KEY mark $1.15). BP $24.11. Drawdown 5.44%.
[14:11 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[14:11 UTC] STEP 4: Drawdown 5.44% < 12%. Circuit breaker inactive.
[14:11 UTC] STEP 5: KEY quote FRESH (14:11:43 UTC) — mark $1.15, IV 31.1%, delta 0.616. Bid $1.00×752 / Ask $1.30×846. P&L -11.54%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.311 < 0.80 → exit cond 1 NOT met. Delta 0.616 ≥ 0.55 → exit cond 2 NOT met. Hold-through: beat_rate 4/4 ✓, delta 0.616 ✓, P&L -11.54% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[14:11 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[14:29 UTC] STEP 2: Portfolio $132.11, cash $24.11, options $108.00 (KEY mark $1.08). BP $24.11. Drawdown 10.20%.
[14:29 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[14:29 UTC] STEP 4: Drawdown 10.20% < 12%. Circuit breaker inactive. ⚠️ APPROACHING THRESHOLD (12% = $17.65 total loss from start).
[14:29 UTC] STEP 5: KEY quote FRESH (14:29:19 UTC) — mark $1.075 (adj $1.08), IV 31.1%, delta 0.5965. Bid $1.05×46 / Ask $1.10×49. P&L -16.92%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.311 < 0.80 → exit cond 1 NOT met. Delta 0.5965 ≥ 0.55 → exit cond 2 NOT met. Hold-through: beat_rate 4/4 ✓, delta 0.5965 ✓, P&L -16.92% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[14:29 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[14:38 UTC] STEP 2: Portfolio $127.11, cash $24.11, options $102.50 (KEY mark $1.025). Drawdown 13.6%.
[14:38 UTC] STEP 4: ⚠️ CIRCUIT BREAKER TRIPPED — drawdown 13.6% ≥ 12%. No new trades. Exits only.
[14:38 UTC] STEP 5: KEY quote FRESH (14:38:13 UTC) — mark $1.025 (adj $1.030), IV 29.1%, delta 0.601. Bid $0.95×499 / Ask $1.10×138 (spread 14.6% ✓). P&L -21.2%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.291 < 0.80 → exit cond 1 NOT met. Delta 0.601 ≥ 0.55 → exit cond 2 NOT met. Hold-through: beat_rate 4/4 ✓, delta 0.601 ✓, P&L -21.2% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM). Stop loss floor: $0.78 mark (-40%).
[14:38 UTC] STEP 6: Circuit breaker active — no new trades.
[14:47 UTC] STEP 2: Portfolio $129.11 (↑$2), cash $24.11, options $105.00 (KEY mark $1.05). Drawdown 12.23%.
[14:47 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (c6c36034). 0 pending orders. State matches.
[14:47 UTC] STEP 4: ⚠️ CIRCUIT BREAKER ACTIVE — drawdown 12.23% ≥ 12%. No new trades. Exits only.
[14:47 UTC] STEP 5: KEY quote FRESH (14:47:20 UTC) — mark $1.05, IV 29.0%, delta 0.609. Bid $1.00×323 / Ask $1.10×39 (spread 9.5% ✓). P&L -19.2%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.290 < 0.80 → exit cond 1 NOT met. Delta 0.609 ≥ 0.55 → exit cond 2 NOT met. Hold-through: beat_rate 4/4 ✓, delta 0.609 ✓, P&L -19.2% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[14:47 UTC] STEP 6: Circuit breaker active — no new trades.
