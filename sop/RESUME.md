# AI Trading Agent — RESUME (for a fresh chat)

Last updated: 2026-06-18 ~3:00 AM CDT.

## Current state (snapshot)
- **Account:** Robinhood Agentic CASH account ••••4744 (`594134744`). `agentic_allowed: true`. NEVER trade any other account.
- **Authorization:** Full autonomy. Execute verified trades without per-trade approval. Hard rules + verification NOT waived.
- **Portfolio:** ~$100. 5 positions open, $46.18 cash.
- **Git push:** SSH only — `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403.
- **All times in CDT.** Market open = 8:30 AM CDT, close = 3:00 PM CDT, pre-market scan = 7:00 AM CDT.

## Live positions

| Ticker | Cost | HWM | Stop | New SOP Exit Rule | Signal |
|--------|------|-----|------|-------------------|--------|
| FCN | $156.90 | $156.90 | $133.37 | SELL when regular-session price > $156.90 (return to profit). Do NOT force EOD sell. | Path B insider cluster (3 insiders May 13-14). Trailing activates at +10% ($172.59). |
| RYAN | $36.11 | $36.55 | $30.69 | SELL when regular-session price > $36.11 (return to profit). Do NOT force EOD sell. | Path B insider cluster (Chair+CFO+GC, Jun 3-5). Trailing activates at +10% ($39.72). |
| ADC | $74.51 | $74.78 | $63.33 | SELL when regular-session price > $74.51 (return to profit). Do NOT force EOD sell. | Path B insider cluster (Chair+CEO+2 dirs, May 14-Jun 4). Trailing activates at +10% ($81.96). |
| FPS | $60.48 | $64.38 | $51.41 | **HOLD indefinitely as multi-day position. Do NOT sell unless stop is hit.** | Path F user watchlist. Trailing activates at +10% ($66.53). |
| DRAM | $70.15 | $72.33 | $59.63 | **HOLD indefinitely as multi-day position. Do NOT sell unless stop is hit.** YELLOW sizing (×0.75). | Path F user watchlist. Trailing activates at +10% ($77.17). |

## Jun 17 closes (reference for stop checks)
FCN $150.60 | RYAN $35.28 | ADC $73.81 | FPS $61.92 | DRAM $69.95

All stops clear vs last close. No stops triggered.

## Sector caps
- Industrials 2/2 FULL (FCN + FPS)
- Financials 1/2 (RYAN)
- Real Estate 1/2 (ADC)
- All others 0/2

## Warm watchlist (sop/warm-watchlist.md)
- **HOOD**: Malka Meyer Dir ~$20M Jun 5. 7 trading days left (~Jun 30). Need 2nd distinct buyer.
- **BRC**: CEO Nargolwala $1M Jun 10. 17 days left (~Jul 9). BLOCKED Industrials 2/2.
- **SOFI**: CEO Noto $250K Jun 16. 18 days left (~Jul 14). Single buyer <$500K.
- **AMR**: Dir Courtis $1.23M Jun 12. 17 days left (~Jul 11). Need 2nd distinct insider.
- **PYPL**: CFO Miller $254K Jun 15. 18 days left (~Jul 11). 10b5-1 unconfirmed.

## Pending re-evaluations
- **ACM** (CEO+CFO+Pres $699K Jun 16): BLOCKED Industrials 2/2. Re-evaluate IMMEDIATELY when FCN or FPS exits.
- **BRC** (CEO $1M Jun 10): BLOCKED Industrials 2/2. Window expires ~Jul 9.

## New SOP (2026-06-18, replaces old SOP)

**Exit rules:**
- FCN / RYAN / ADC: sell when regular-session price exceeds cost basis. No EOD force-close (exception to Hard Rule 29 for these specific legacy positions).
- DRAM / FPS: IBP multi-day holds. Only sell if stop is hit (-15% from cost). Exempt from EOD close rule.
- Hard stop: -15% from cost.
- Trailing (updated 2026-06-18): once position is up ≥10% from cost → if price pulls back 5+ points from the peak (HWM) → SELL ALL immediately.
- EOD rule (Hard Rule 29): all day-trade positions force-sold by 3:00 PM CDT. Only IBP holds (DRAM, FPS) are exempt.
- Opening each day: reset daily tracking, check -8% circuit breaker, execute PENDING_SELL before scanning buys.

**Position sizing:** Base = 15% of portfolio (up from 12%).

**Circuit breaker:** if portfolio drops -8% in a single trading day → no new buys for remainder of that day.

**IBP (Instantly Buying Power):** Robinhood funds provided immediately when a deposit is placed (before transfer clears). Counts as spendable cash for buys.

**Pre-market:** Signal scan starts at 7:00 AM CDT (8:00 AM ET). Heartbeat ticks every 15 min.

**Path G (Daily Risers, added 2026-06-18):** Continuous intraday scan for top % gainers. $5–$100, mktcap ≥$300M (Path G exception), vol ≥3× avg, confirmed catalyst required. Entry: above VWAP + 9/20 EMA on 5-min, HH+HL, breaking consolidation — no vertical spikes. Risk 0.5–1% per trade, partial at +5%, trail remainder. Hard close by 2:45 PM CDT. Stop after 3 consecutive losses or 2–3% daily loss. No trades first 5 min. No pre-earnings entries. All Path G = day-trades (never overnight).

---

## COPY THIS INTO A FRESH CHAT:

```
Resume the AI trading agent loop. Account 594134744 (agentic_allowed=true ONLY).

Read these files first:
- sop/RESUME.md (current positions, stops, new SOP exit rules — start here)
- sop/SKILL.md (full SOP + hard rules)
- sop/positions-state.md (HWM tracking)
- sop/warm-watchlist.md (tickers awaiting 2nd insider)

NEW SOP EXIT RULES (confirmed 2026-06-18):
- FCN: sell when regular-session price > $156.90 (cost basis)
- RYAN: sell when regular-session price > $36.11 (cost basis)
- ADC: sell when regular-session price > $74.51 (cost basis)
- DRAM: HOLD as multi-day — do NOT sell unless stop ($59.63) is hit
- FPS: HOLD as multi-day — do NOT sell unless stop ($51.41) is hit

Git push via SSH only: git@github.com:nishazdhuka12-oss/Robinhood-AI.git
All times in CDT. Market open = 8:30 AM CDT.

Run one loop tick now: get_portfolio + get_equity_positions + get_equity_quotes on FCN/RYAN/ADC/FPS/DRAM.
Check stops. Apply new SOP exit rules if market is open. Run signal scan if 7:00 AM CDT or later.
Re-arm 15-min ScheduleWakeup loop.
```
