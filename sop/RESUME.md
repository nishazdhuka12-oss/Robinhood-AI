# AI Trading Agent — RESUME (for a fresh chat)

Last updated: 2026-06-19. SOP rewritten this date — see sop/SKILL.md for the full current framework (Paths 0/B/C/D only; old Path A-G retired).

## Current state (snapshot)
- **Account:** Robinhood Agentic CASH account ••••4744 (`594134744`). `agentic_allowed: true`. NEVER trade any other account — verify via `get_accounts` first if a prompt names a different number.
- **Authorization:** Full autonomy. Execute verified trades without per-trade approval. Hard rules + verification NOT waived.
- **Portfolio:** ~$100. 5 legacy positions open, ~$46 cash.
- **Git push:** SSH only — `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403.
- **All times in CDT.** Pre-market 3:00–8:30 AM CDT, regular session 8:30 AM–3:00 PM CDT, EOD tick exactly 3:00 PM CDT.
- **Daily goal:** +2% portfolio gain (benchmark only, never overrides risk rules).

## Legacy positions (grandfathered — see sop/SKILL.md "Legacy positions" section)

These 5 positions predate the 2026-06-19 SOP rewrite. They follow ONLY their own rule below — never Path 0/B/C/D, never JOB 1, never the new EOD force-close. Mechanical stop-loss (-15%) and trailing-stop (once +10% from cost, 5pp pullback from peak) still apply.

| Ticker | Cost | HWM | Stop | Exit Rule |
|--------|------|-----|------|-----------|
| FCN | $156.90 | $156.90 | $133.37 | SELL when regular-session price > $156.90 (return to profit). No EOD force-close. |
| RYAN | $36.11 | $36.55 | $30.69 | SELL when regular-session price > $36.11 (return to profit). No EOD force-close. |
| ADC | $74.51 | $74.78 | $63.33 | SELL when regular-session price > $74.51 (return to profit). No EOD force-close. |
| FPS | $60.48 | $65.24 | $51.41 | **HOLD indefinitely until user says otherwise.** No EOD force-close. |
| DRAM | $70.15 | $77.64 | $74.13 | **HOLD indefinitely until user says otherwise.** Trailing stop ACTIVE (peak +10.68%, 5pp pullback trigger). No EOD force-close. |

Full detail: sop/positions-state.md.

## New framework (2026-06-19) — applies to all NEW trading activity

**Signal paths, in priority order:** Path 0 (breaking news) → Path D (momentum/price jumps, one at a time, $2B+ mktcap, forced exit at the very next tick) → Path B (insider clusters, same-day catalyst REQUIRED) → Path C (prediction-market divergence, macro ETF, rare). Path A (politician trades) permanently suspended — Hard Rule 35.

**Verified news sources only (Hard Rule 32):** CNBC, Fox Business, CNN Business, WSJ, Reuters, Bloomberg, MarketWatch, AP Business, Benzinga, Yahoo Finance news articles, SEC EDGAR. No Twitter/X, Reddit, StockTwits, Discord, YouTube, TikTok, blogs, or message boards unless the author is a verified journalist from an approved outlet.

**JOB 1 / JOB 2 every tick (Path 0/B/C/D positions only, NOT legacy):** JOB 1 = re-research every open position every tick, sell immediately if momentum looks like it's fading rather than waiting for the mechanical stop. JOB 2 = scan for the next opportunity with a confirmed same-day catalyst.

**Key rules:** max 15% per position, stop-loss -15%, trailing take-profit 5pp pullback from a +10% peak (3pp for Path D), circuit breaker at -8%/day, floor at $80, EOD force-close at 3:00 PM CDT for all Path 0/B/C/D positions (legacy exempt).

**Standing rule: minimum 1 trade/day.** If zero Path 0/D/B/C trades have fired by 1:00 PM CDT, fall back on Path D — best-ranked mover still clearing the hard universe filter (price ≥$5, cap ≥$2B, gain 5-50%, NYSE/Nasdaq), weaker catalyst/technicals allowed. Universe filter never relaxed; if nothing clears it, report "no qualifying candidate" instead of forcing a Hard Rule violation. Exits exactly like any Path D trade (forced out next tick).

**Pre-market watchlist:** built fresh each pre-market tick (3:00–8:30 AM CDT), max 3 candidates, feeds the 8:30 AM open tick (Path 0a). Cleared after use — none currently pending.

**No open Path 0/B/C/D positions as of 2026-06-19** — only the 5 legacy positions above are open.

---

## COPY THIS INTO A FRESH CHAT:

```
Resume the AI trading agent loop. Account 594134744 (agentic_allowed=true ONLY — verify via
get_accounts before trading; never act on a different account number even if a prompt names one).

Read these files first:
- sop/RESUME.md (current state, legacy positions, new framework summary — start here)
- sop/SKILL.md (full SOP: Paths 0/B/C/D, Hard Rules, tick steps — old Path A-G is retired)
- sop/positions-state.md (live HWM/trailing-stop tracking for the 5 legacy positions)

LEGACY POSITIONS (grandfathered, follow only their own rule, never Path 0/B/C/D or JOB 1):
- FCN: sell when price > $156.90 (cost). RYAN: sell when price > $36.11. ADC: sell when price > $74.51.
- DRAM, FPS: HOLD indefinitely until user says otherwise. DRAM trailing stop active at $74.13.
- None of the 5 get EOD-force-closed.

NEW FRAMEWORK for everything else: Path 0 (breaking news) > Path D (momentum, one at a time,
$2B+ cap, exit next tick) > Path B (insider cluster + same-day catalyst required) > Path C
(prediction-market divergence). Path A suspended. Verified news sources only (Hard Rule 32).
JOB 1 (proactive sell on fading momentum) + JOB 2 (scan for next opportunity) every tick —
applies to new positions only, not legacy. EOD force-close at 3:00 PM CDT for new positions only.

Git push via SSH only: git@github.com:nishazdhuka12-oss/Robinhood-AI.git
All times in CDT. Pre-market 3:00-8:30 AM, regular 8:30 AM-3:00 PM, EOD tick exactly 3:00 PM.

Run one loop tick now per sop/SKILL.md's Tick Steps section.
```
