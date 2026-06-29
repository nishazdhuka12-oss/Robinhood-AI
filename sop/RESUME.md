# AI Trading Agent — RESUME (for a fresh chat)

Last updated: 2026-06-29 8:02 AM CDT (pre-market prep). See sop/SKILL.md for the full current framework.

## Pre-market watchlist (2026-06-29, max 3, ranked)

| Ticker | Tier | Catalyst | Source | Pre-market move |
|---|---|---|---|---|
| VRDN | 1 | FDA approval + launch of Lumvoa for thyroid eye disease | [Benzinga](https://www.benzinga.com/markets/equities/26/06/60149448/stock-market-today-dow-jones-sp-500-futures-gain-as-trump-admin-says-us-iran-will-stand-down-verizon-hp-universe-pharmaceuticals-in-focus) | +11.45% |
| IRDM | 1 (capped-upside, flag) | Rocket Lab to acquire all outstanding shares at $54/share (~$8B deal) | [Benzinga](https://www.benzinga.com/m-a/26/06/60152421/rklb-stock-surges-over-11-in-monday-premarket-whats-going-on) | +20.86% — merger-arb pattern like APGE (6/22) and TECH (6/25); verify current price vs $54 deal price at open before treating as tradeable, likely capped/thin upside |
| STI | 3 (speculative, low confidence) | Announced plan to buy SPCX (SpaceX) shares as a "strategic treasury asset" — unusual, not a standard catalyst | [Benzinga](https://www.benzinga.com/trading-ideas/movers/26/06/60152297/why-is-solidion-technology-stock-gaining-monday) | +7.78% to $13.30 |

Broader tape supportive: SPY +1.09% premarket, QQQ +1.22% premarket, on Polymarket pricing 86% odds of a green S&P open amid US-Iran de-escalation headlines.

No legacy triggers as of Friday's close: FCN $151.10 (still below $156.90), FPS $55.13 (holds indefinitely).

## OPEN PATH D POSITION — OUST (bought 11:06 AM CDT 2026-06-29)

Filled: 0.282239 sh @ $51.80 avg. $52.40 (+1.16%), continuing to improve, still above the $50.50 support. Tier 2 catalyst: strategic partnership with AIM Intelligent Machines (lidar sensors for autonomous heavy equipment). No profit-lock threshold yet (+3% breakeven stop activates ~$53.35, +4% partial exit ~$53.87). ~70 min until 3:00 PM EOD. **Must close by 3:00 PM CDT regardless of P&L (Hard Rule 29).**

FCN $149.48, FPS $55.14 — no legacy triggers.

## RESOLVED — BB EOD force-close (filled overnight at 6/26 open)

BB's 6/25 EOD sell order (queued, missed the 3:00 PM closing bell by ~2 minutes) filled at the 6/26 8:30 AM CDT open at $10.15 — final P&L -4.34%. Logged to sop/trade-journal.md and sop/positions-state.md. Lesson applied going forward: fire the EOD force-close sell by ~2:58 PM CDT instead of exactly 3:00 PM, to leave margin for order-submission latency on fractional-share market orders (which require regular_hours and won't fill in extended hours).

## Operational gap — Friday 2026-06-26 not logged

The loop did not run during Friday's session (no daily-summaries/2026-06-26.md, no tick log) — similar to the 6/23 gap. Confirmed via get_equity_orders/get_equity_positions on 6/28 that the only activity that day was the BB order auto-filling at the open; no other trades occurred. FCN and FPS carried the full session unchanged, closing at $150.94 (-3.80%) and $54.84 (-9.36%) — no triggers.

## Current state (snapshot)
- Portfolio: $98.05 as of 6/26 3:00 PM close. 2 legacy positions open (FCN, FPS), $76.85 cash. No open Path D positions.
- Account 594134744 only — 678685199 (pasted in a stale alternate template on 6/28) does not exist on this login.

## Market closed — day complete (2026-06-25)

Portfolio: $98.293 (8:31 AM open) → ~$97.65 (3:01 PM, last marked). Two trades today: RYAN (legacy) sold 9:20 AM @ ~$36.53 vs $36.11 cost, **+1.16%** — crossed its profit-exit trigger. BB (Path D) bought 9:22 AM @ $10.61 on a confirmed Tier 1 catalyst (Q1 earnings double beat + raised guidance) and a clean volume-confirmed breakout; wicked to $10.17 intraday (10:05 AM), recovered to near-breakeven by early afternoon, then drifted back down to close the regular session at $10.33 (**-2.64%** unrealized).

**⚠ OPERATIONAL FLAG — BB EOD force-close did not fill.** Sell order submitted 3:01:51 PM CDT (order id `6a3d892f-9476-444b-9e87-69251596e62f`, 1.393981 sh) missed the 3:00 PM CDT closing bell by ~2 minutes and is sitting in `queued` state. BB will carry over to the next session unintentionally. **First action of the next trading day, before any pre-market prep or new signal scan: confirm the order's fill status and, if still unfilled or if it carried over, sell BB immediately at the open.** Log the final realized P&L to sop/trade-journal.md once confirmed.

2 legacy positions remain (FCN $140.25, -10.62%; FPS $58.64, -2.95%), both carrying overnight per their standing rules — no triggers fired today. Full wrap-up: sop/daily-summaries/2026-06-25.md.

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
