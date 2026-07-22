# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-22
- session_start_value: $99.05
- Circuit breaker: inactive (reset on new day)
- Last updated: 2026-07-22 07:32 UTC (02:32 CT)

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

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
(none — to be populated at open after SCAN A Pass 1)

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
(none)

## CARRY-FORWARD NOTES FOR NEXT TICK

### NEW DAY — JUL 22 RESET COMPLETE
- session_start_value: $99.05. CB inactive. min_cash_floor: $14.86. max_cost: $84.19.
- Buying power fully restored (T+1 from KEY sale Jul 21 settled).
- 0 open positions, 0 pending orders, 0 watchlist entries.

### SCAN A — FIRST REGULAR TICK (UTC ≥ 13:30)
**Pass 1 (post-earnings — reported Jul 21 AM):**
- AXP: check eps.actual vs est (beat ≥5%?), stock move ≤15%, direction → place at UTC≥14:00
- NEE: same
- VZ: same  
- SLB: same
- KEY: DO NOT RE-ENTER (exhausted catalyst, just exited)

**Pass 2 (pre-earnings IV expansion — DTR 3-14 on Jul 22):**
- TSLA, GOOGL, IBM, TXN, T, PM, CME: verify DTR on Jul 22 (if DTR=1→Gate 1 FAIL, report Jul 23; if DTR≥3→viable)
- AMZN, META, MSFT: check fresh earnings calendar — DTR unknown, verify
- All require: beat_rate ≥3/4, IV<0.85, delta≥0.20, spread≤20%, DTE≥3, cost≤$84.19
- Re-run ALL gates fresh at first tick

**Pre-market (UTC 08:00-13:29):** scans run but BUY orders only placed at regular_hours open. OK to evaluate and queue.

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate
- COF: 2/4 beat rate
- SCHW: 2/4 beat rate
- AAL: Gate 3 conflict
- HAL: Spread 50-65% fail
- CMCSA: Spread 33% fail
- KEY: catalyst exhausted (just exited)

## Session Log (today — one line per event)
[07:32 UTC 2026-07-22] NEW DAY RESET — 2026-07-22. session_start_value = $99.05. CB reset to inactive. min_cash_floor = $14.86. max_cost = $84.19. Cash $99.05 — T+1 settled, full BP restored. 0 positions, 0 orders. Pre-market opens 08:00 UTC, regular 13:30 UTC. SCAN A pipeline ready.
