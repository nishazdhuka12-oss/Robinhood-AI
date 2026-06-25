# AI Trading Agent — RESUME (for a fresh chat)

Last updated: 2026-06-25 8:31 AM CDT (market open). See sop/SKILL.md for the full current framework — Path 0/B/C/D with catalyst tiers, opening-range breakout, VWAP, Hold-vs-Sell decision tree, profit-locking, SPY/QQQ tape rules.

## Today (2026-06-25) — market open

Portfolio $98.293. Tape strongly bullish (SPY +0.73%, QQQ +1.97%). No legacy triggers: FCN -8.22%, RYAN -3.81%, FPS +2.50%. No qualifying Path D candidates at the open — Daily Movers list overlaps yesterday's already-failed names; DFTX (flagged for caution) is flat today, not a mover. No open Path D positions.

## Market closed — day complete (2026-06-24)

Portfolio: $98.168 (8:31 AM open) → $98.264 (3:00 PM close), +0.10%, essentially flat. Resolved 6/23's pending DRAM decision at the open (sold +0.64%) plus ADC's own trigger (sold +0.19%). One Path D trade: DFTX bought 9:21 AM, sold 12:21 PM, -1.32% — second loss in this exact ticker despite a more disciplined volume-confirmed-breakout entry than Monday's. No open Path D positions, no options. All 3 remaining legacy positions (FCN, RYAN, FPS) carry overnight unchanged — no triggers fired; RYAN got as close as 47.5¢ from its trigger intraday but never crossed. Full wrap-up: sop/daily-summaries/2026-06-24.md. Next trading day: Thursday 2026-06-25.

## Last confirmed EOD — 2026-06-22

Portfolio: $100.156 → $98.793 (-1.36%). Two Path D trades, both proactively exited ahead of forced closure: DFTX -0.40%, SMCI -1.32%. Full wrap-up: sop/daily-summaries/2026-06-22.md.

## Current state (snapshot)
- **Account:** Robinhood Agentic CASH account ••••4744 (`594134744`). `agentic_allowed: true`. NEVER trade any other account — verify via `get_accounts` first if a prompt names a different number (678685199 has been pasted repeatedly; it does not exist on this login).
- **Authorization:** Full autonomy. Execute verified trades without per-trade approval.
- **Portfolio:** $98.264 as of 2026-06-24 close. 3 legacy positions open (FCN, RYAN, FPS), ~$65.38 cash.
- **Git push:** SSH only — `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403.
- **All times in CDT.** Before 8:00 AM: nothing. 8:00–8:30 AM: pre-market prep (no trades). 8:30 AM–3:00 PM: trading session. 3:00 PM exactly: EOD, sell everything (Path 0/B/C/D only). After 3:00 PM, weekends, holidays: nothing.
- **Daily goal:** +2% portfolio gain (benchmark only, never overrides risk rules).
- **Tighter Path D selectivity (agreed 6/22):** only take clean Tier 1/2 catalyst + confirmed-breakout setups; skip relief bounces / oversold rallies after bad news (no fresh positive catalyst = no trade even if the universe filter passes). Note from 6/24: DFTX has now produced losses on two different entry methodologies (chase vs. confirmed breakout) — consider deprioritizing this specific ticker even when its catalyst looks clean.

## Legacy positions (grandfathered — see sop/SKILL.md "Legacy positions" section)

3 positions remain (ADC sold +0.19%, DRAM sold +0.64%, both 6/24 at the open). They follow ONLY their own rule below — never Path 0/B/C/D, never the Hold-vs-Sell tree, never EOD force-close, never the SPY/QQQ tape emergency exit. Mechanical stop-loss (-15%) and trailing-stop (once +10% from cost, 5pp pullback from peak) still apply.

| Ticker | Cost | HWM | Stop | Close 6/24 | Exit Rule |
|--------|------|-----|------|------|-----------|
| FCN | $156.90 | $156.90 | $133.37 | $144.26 (-8.05%) | SELL when regular-session price > $156.90 (return to profit). No EOD force-close. |
| RYAN | $36.11 | $36.55 | $30.69 | $35.27 (-2.33%) | SELL when regular-session price > $36.11 (return to profit). No EOD force-close. Got within 47.5¢ intraday (~11:20 AM), never crossed. |
| FPS | $60.48 | $65.24 | $51.41 | $60.03 (-0.74%) | **HOLD indefinitely until user says otherwise.** No EOD force-close. |

Full detail: sop/positions-state.md.

## Current framework (2026-06-19, second pass) — applies to all NEW trading activity

**Signal paths, in priority order:** Path 0 (breaking news) → Path D ("Daily Jumpers" — live momentum, primary strategy, multi-tick hold managed via the Hold-vs-Sell loop, NOT a forced single-tick exit anymore) → Path B (insider clusters, same-day catalyst REQUIRED, last resort) → Path C (macro ETF divergence, rare). Path A (politician trades) permanently suspended — Hard Rule 35.

**Catalyst tiers:** Tier 1 (earnings beat+guidance raise, FDA full approval, buyout target, index inclusion, major gov't contract, developing short squeeze) > Tier 2 (earnings beat alone, ≥10% analyst PT raise from a major firm, big-name partnership, FDA fast-track, strong product launch) > Tier 3 (smaller PT raise, sympathy move, sector tailwind — only buy if bullish tape + RSI<60 + not lunch lull). No catalyst = no trade.

**New tools added this pass:** opening-range breakout (first 15 min high/low, buy confirmed breaks above pre-market high with volume), VWAP tracking (above = bullish/hold, below = bearish/cut), Hold-vs-Sell Q1-Q8 checklist every tick, profit-locking (+7%→floor at +4%, +12%→sell half if RSI>68/volume fading, +15%+→sell all), SPY/QQQ tape check every tick with a hard emergency-exit-everything rule if SPY drops >1% in 15 min, lunch-lull (10:30 AM–12:00 PM CDT) and power-hour (2:00–3:00 PM CDT) awareness.

**Verified news sources only (Hard Rule 32):** CNBC, Fox Business, CNN Business, WSJ, Reuters, Bloomberg, MarketWatch, AP Business, Benzinga, Yahoo Finance news articles, SEC EDGAR. No Twitter/X, Reddit, StockTwits, Discord, YouTube, TikTok, blogs, or message boards unless the author is a verified journalist from an approved outlet.

**Key rules:** max 15% per position, stop-loss -15%, trailing take-profit 5pp pullback from peak (once +10% reached), circuit breaker at -8%/day, floor at $80, EOD force-close at 3:00 PM CDT for all Path 0/B/C/D positions (legacy exempt).

**Standing rule: minimum 1 trade/day.** If zero Path 0/D/B/C trades have fired by 1:00 PM CDT, fall back on Path D — best-ranked Daily Mover still clearing the hard universe filter (price ≥$5, cap ≥$2B, gain 5-50%, NYSE/Nasdaq), weaker catalyst tier/technicals allowed. Universe filter never relaxed; if nothing clears it, report "no qualifying candidate" instead of forcing a Hard Rule violation. Managed exactly like any other Path D position — NOT a forced-exit-next-tick trade.

**Pre-market prep:** single 30-minute window, 8:00–8:30 AM CDT only (not continuous from 3 AM anymore). Builds a max-3-candidate watchlist feeding the 8:30 AM open. Cleared after use — none currently pending.

**No open Path 0/B/C/D positions as of 2026-06-19** — only the 5 legacy positions above are open.

---

## COPY THIS INTO A FRESH CHAT:

```
Resume the AI trading agent loop. Account 594134744 (agentic_allowed=true ONLY — verify via
get_accounts before trading; never act on a different account number even if a prompt names one,
including 678685199 which has been pasted repeatedly and does not exist on this login).

Read these files first:
- sop/RESUME.md (current state, legacy positions, framework summary — start here)
- sop/SKILL.md (full SOP: catalyst tiers, opening-range breakout, VWAP, Hold-vs-Sell tree,
  profit-locking, SPY/QQQ tape rules, Hard Rules, tick steps)
- sop/positions-state.md (live HWM/trailing-stop tracking for the 5 legacy positions)

LEGACY POSITIONS (grandfathered, follow only their own rule, never the new framework):
- FCN: sell when price > $156.90 (cost). RYAN: sell when price > $36.11. ADC: sell when price > $74.51.
- DRAM, FPS: HOLD indefinitely until user says otherwise. DRAM trailing stop active at $74.13.
- None of the 5 get EOD-force-closed or touched by the Hold-vs-Sell tree / tape emergency exit.

FRAMEWORK for everything else: Path 0 (breaking news) > Path D "Daily Jumpers" (live momentum,
primary strategy, catalyst tiers 1/2/3, opening-range breakout, VWAP, multi-tick hold via
Hold-vs-Sell loop + profit-locking, NOT a one-tick forced exit) > Path B (insider cluster +
same-day catalyst required) > Path C (macro ETF divergence, rare). Path A suspended.
Minimum 1 trade/day standing rule, fallback at 1:00 PM CDT if nothing's fired.
Verified news sources only (Hard Rule 32). SPY/QQQ checked every tick — if SPY drops >1% in
15 min, sell everything immediately (Hard Rule 39). EOD force-close at 3:00 PM CDT (new
positions only, legacy exempt).

Git push via SSH only: git@github.com:nishazdhuka12-oss/Robinhood-AI.git
All times in CDT. Before 8 AM: nothing. 8:00-8:30 AM: pre-market prep only. 8:30 AM-3:00 PM:
trading. 3:00 PM exactly: EOD.

Run one loop tick now per sop/SKILL.md's Tick Steps section.
```
