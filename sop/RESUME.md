# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-22
- session_start_value: $99.05
- Circuit breaker: inactive (reset on new day)
- Last updated: 2026-07-22 13:36 UTC (08:36 CT)

## Account Snapshot
- Total value: $99.05
- Cash: $99.05 (T+1 settled — full buying power restored)
- Options exposure: $0
- 15% cash floor: $14.86 (15% of $99.05)
- Buying power: $99.05
- max_cost: $84.19 (cash $99.05 − floor $14.86)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
(none)

## Post-Earnings Watchlist (execute at 14:00 UTC REGULAR session)
| Ticker | C/P | Direction | Beat% | Report date | Added at | Trade plan |
|--------|-----|-----------|-------|-------------|----------|------------|
| T      | C   | CALLS     | +10.2% (est $0.59, act $0.65) | 2026-07-22 AM | 11:15 UTC | Jul31 $23C lim $0.65 GFD × 1 contract — inst 2fc41dc8 — ALL GATES PASS |
| PM     | C   | CALLS     | +7.3% (est $2.05, act $2.20)  | 2026-07-22 AM | 11:15 UTC | BUDGET FAIL — PM ATM calls ~$400+/contract >> max_cost $84.19 → DROP |

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
(none)

## CARRY-FORWARD NOTES FOR NEXT TICK

### SESSION STATE
- session_start_value: $99.05. CB inactive. min_cash_floor: $14.86. max_cost: $84.19.
- Cash $99.05, 0 positions, 0 orders.

### SCAN A — AT REGULAR SESSION OPEN (UTC ≥ 13:30)

**Pass 1 (post-earnings — check eps.actual at open):**
- T (AT&T): reports Jul 22 AM — check eps.actual vs est, beat ≥5%? stock move ≤15%? → place at UTC≥14:00
- PM (Philip Morris): same
- CME: same
- AXP, NEE, VZ, SLB: confirmed reporting Jul 24 AM (DTR=2 on Jul 22) → NOT Pass 1 today, NOT Pass 2 (DTR<3) → SKIP
- KEY: DO NOT RE-ENTER (catalyst exhausted)
- GOOGL, TSLA, IBM, TXN: report Jul 22 PM → eps.actual populates post-close → Pass 1 on Jul 23

**Pass 2 (pre-earnings IV expansion — Gates 1-3 pre-verified):**
Pre-market analysis complete. All gates checked except Gate 4 (IV<0.85) and candidate gates (need live option quotes at session open).

PRIORITY SHORTLIST (Gates 1-3 PASS, ordered by DTR then beat quality):
| Symbol | Report | DTR | Beat Rate | 20d SMA | Current | Gate 3 |
|--------|--------|-----|-----------|---------|---------|--------|
| V      | Jul 28 | 6   | 4/4       | $347.73 | $355.82 | ✓ CALLS|
| META   | Jul 29 | 7   | 4/4       | $612.68 | $643.81 | ✓ CALLS|
| MSFT   | Jul 29 | 7   | 4/4       | $383.82 | $397.75 | ✓ CALLS|
| AAPL   | Jul 30 | 8   | 4/4       | $308.48 | $327.74 | ✓ CALLS|
| MA     | Jul 30 | 8   | 4/4       | $524.09 | $538.30 | ✓ CALLS|
| AMZN   | Jul 30 | 8   | 3/4       | (need)  | $?      | TBD    |

DISQUALIFIED from Pass 2:
- QCOM: Gate 2/3 conflict (beat_rate=4/4→CALLS but price $173.50 < SMA $184.50→PUTS)
- TSLA, GOOGL, IBM, TXN, T, PM, CME: DTR=0 on Jul 22 → Gate 1 FAIL
- AXP, NEE, VZ, SLB: DTR=2 on Jul 22 → Gate 1 FAIL

AT SESSION OPEN (13:30 UTC): Pull option chains for V first (DTR=6, most urgent), then META. Check Gate 4 (IV<0.85), delta≥0.20, spread≤20%, OI≥100, bid>0. Tag SWING-EARN. Place at 14:00 UTC if Pass 1 not taken.

### DISQUALIFIED (do not re-evaluate)
- NOC, COF, SCHW: 2/4 beat rate
- AAL: Gate 3 conflict
- HAL: Spread fail
- CMCSA: Spread fail
- KEY: catalyst exhausted
- QCOM: Gate 2/3 conflict Jul 22

## Session Log (today — one line per event)
[07:32 UTC 2026-07-22] NEW DAY RESET — 2026-07-22. session_start_value = $99.05. CB reset to inactive. min_cash_floor = $14.86. max_cost = $84.19. Cash $99.05 — T+1 settled, full BP restored. 0 positions, 0 orders.
[06:15 UTC 2026-07-22] PRE-MARKET SCAN A ANALYSIS COMPLETE — Pass 2 pipeline: V/META/MSFT/AAPL/MA pass Gates 1-3. QCOM disqualified (G2/G3 conflict). AXP/NEE/VZ/SLB DTR=2 skip. T/PM/CME pass 1 candidates at session open. Waiting for live option quotes at 13:30 UTC.
[07:15 UTC 2026-07-22] CLOSED session check — 0 positions, 0 orders, $99.05 cash, CB inactive. No action. Chaining wakeup toward 13:30 UTC open.
[07:18 UTC 2026-07-22] ScheduleWakeup blocked by transient classifier error — launchd agent will fire at 13:30 CT open; pipeline state in CARRY-FORWARD notes is ready.
[10:08 UTC 2026-07-22] PRE-MARKET heartbeat — $99.05 cash, 0 pos, CB inactive. T/PM/CME eps.actual still null (not yet reported). No option quotes (stale). Waiting 13:30 UTC open.
[11:15 UTC 2026-07-22] SCAN A PASS 1 — T reported +10.2% beat ($0.65 vs $0.59 est), stock +3.3% pre-mkt → CALLS watchlist. PM reported +7.3% beat ($2.20 vs $2.05 est), stock -0.3% pre-mkt → CALLS watchlist. CME 0.0% beat → SKIP. Both added to watchlist for execution at 14:00 UTC REGULAR session.
[13:36 UTC 2026-07-22] REGULAR SESSION OPEN — STEP 2: $99.05 cash, CB inactive. T +4.90% ($23.354), PM +4.07% ($195.685) — both stock moves ≤15% ✓. Gate checks complete: T Jul31 $23C ALL PASS (spread 18.75%, delta 0.59, IV 0.35, OI 4406, cost $64, CoP 0.37). PM budget-fail (ATM calls ~$400+/contract). Pass 2 shortlist (V/META/MSFT/AAPL/MA) ALL budget-fail ($300-1000+/contract >> $84.19 max_cost). ONLY viable trade: T. Awaiting 14:00 UTC to execute watchlist.
