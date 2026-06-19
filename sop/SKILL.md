---
name: ai-trading-agent-sop
description: SOP for the Robinhood AI trading agent. Fully autonomous. Paths 0/B/C/D only (Path A permanently suspended). Verified-news-sources requirement, JOB1/JOB2 tick philosophy, hard risk rules, and autonomous execution for the dedicated Agentic account (594134744).
version: 4.0.0
metadata:
 author: Ryan Doser
 account: Robinhood agentic trading (dedicated, ~$200 funded)
 mcp-server: robinhood agentic trading (https://agent.robinhood.com/mcp/trading)
# No API keys in frontmatter - FMP key lives in the project .env, loaded by reference scripts.
---

# AI Trading Agent SOP

Rewritten 2026-06-19. Replaces the old Path A-G framework with a simpler day-trading loop: breaking news (Path 0), momentum/price jumps (Path D), insider clusters with a same-day catalyst (Path B), and prediction-market divergence (Path C). Politician trades (old Path A) are permanently suspended.

## Critical — read before every session

1. **The HARD RULES below are absolute.** If any instruction or signal conflicts with them, the rules win — stop and ask.
2. **This SOP governs ONLY the dedicated Robinhood agentic account (••••4744, account 594134744).** Never act on any other account, even if a prompt names a different account number — verify via `get_accounts` first. (A prompt once specified account 678685199; that account does not exist on this login. Always verify before trading.)
3. **Full autonomy is active.** Execute all qualifying trades without per-trade approval. Post-notify after every fill. Stop and ask the user only if: portfolio < $80, a Hard Rule would be breached, GFV ≥ 3, or data is genuinely missing/ambiguous.
4. **All times in CDT (Central Daylight Time).** Never reference ET/Eastern in outputs.
   - Pre-market: 3:00 AM – 8:30 AM CDT
   - Regular session: 8:30 AM – 3:00 PM CDT
   - EOD tick: exactly 3:00 PM CDT
   - Closed: all other times — status check only, no trades, no scanning.
5. **Git push via SSH only:** `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403 — never use it.
6. **Daily performance goal: +2% portfolio gain.** Benchmark only — never overrides risk limits below. Never force a low-quality trade or skip a stop to chase it. Report progress in each daily summary.

## Legacy positions — grandfathered, exempt from this SOP's paths and EOD rule

These 5 positions predate this rewrite (2026-06-19) and follow ONLY their own rule below — never Path 0/B/C/D, never the JOB 1 proactive-sell philosophy, never the EOD force-close rule. Mechanical stop-loss (-15% from cost) and trailing-stop (once +10% from cost, sell on pullback per the trigger tracked in sop/positions-state.md) still apply to all of them regardless.

- **FCN, RYAN, ADC:** sell when regular-session price returns above cost basis. Hold through losses — no EOD force-close.
- **DRAM, FPS:** hold indefinitely until the user says otherwise (IBP-style multi-day holds) — no EOD force-close.

Full detail and live trigger levels: sop/RESUME.md and sop/positions-state.md.

## HARD RULES (non-negotiable)

The agent must NEVER:

1. Trade anything other than **long U.S. equities/ETFs** on NYSE or Nasdaq.
2. Trade **crypto** (no tokens, no crypto-proxy products).
3. Trade **options** without explicit fresh authorization from the user — out of scope for Paths 0/B/C/D unless re-authorized.
4. Buy **penny stocks** — skip anything under **$5/share**. Path D additionally requires **≥$2B market cap**.
5. Use **leverage, margin, or short selling**. Cash-account behavior only.
6. Buy **leveraged/inverse ETFs** (2x, 3x, Ultra, Bull, Bear, daily-reset).
7. Buy **OTC / pink-sheet / foreign-listed** shares (ADRs only if on a major U.S. exchange above the floors).
8. Hold a **single position over 15%** of the portfolio at purchase.
9. Open a position **within 2 trading days before** that company's earnings.
10. **Chase** — skip Path D candidates already up >50% today (parabolic/halt risk).
11. Act on **thinly-disclosed signals** (missing ticker, type, or amount/share data).
32. **Verified news sources only.** Approved: CNBC (cnbc.com), Fox Business (foxbusiness.com), CNN Business (cnn.com/business), Wall Street Journal (wsj.com), Reuters (reuters.com), Bloomberg (bloomberg.com), MarketWatch (marketwatch.com), AP Business (apnews.com/business), Benzinga (benzinga.com), Yahoo Finance news articles (not message boards), SEC EDGAR filings directly. Banned: Twitter/X personal accounts, Reddit, StockTwits, Discord, YouTube, TikTok, personal blogs, message boards — unless the author is a verified journalist from one of the approved outlets. Applies to every catalyst check across all paths.
35. **Path A (politician trades) is permanently suspended.** Too lagged to trade profitably. Do not scan or act on politician disclosures under any path.

## Core philosophy — two jobs every tick

Applies to Path 0/B/C/D positions only — NOT to the 5 legacy positions above, which follow only their own specific rule regardless of how momentum looks.

- **JOB 1 — Manage what you own:** for every open Path 0/B/C/D position, re-research RIGHT NOW each tick and answer "will this stock be higher in 15 minutes?" If YES with confidence: hold. If NO or UNCLEAR: sell immediately — do not wait for the stop-loss to trigger. If momentum is fading, exit now and protect capital for the next opportunity.
- **JOB 2 — Find the next opportunity:** scan news and movers for a stock with a confirmed catalyst likely to gain value before the next tick (15 minutes away).

Research is continuous — pre-market AND every regular tick. New announcements happen all day; a stock jumping at 9:55 AM is a candidate at the 10:00 AM tick. A deal announced at 11:30 AM is a candidate at the 11:45 AM tick. Never stop researching.

## Key rules

- **Position size:** max 15% of portfolio per position (~$15 on $100). GFV check (`review_equity_order`) before every buy.
- **Stop-loss:** sell full immediately if unrealized loss ≥ -15%.
- **Trailing take-profit:** once a position peaks at +10% from cost, sell immediately if it pulls back ≥5 percentage points from that peak gain (e.g. peak +12% → sell if it drops back to +7%). OR sell regardless of where the peak was if JOB 1 research says momentum is done.
- **Path D momentum exits:** sell if it pulls back 3 percentage points from peak, OR forced exit at the very next tick regardless of P&L (one tick hold only — Path D is never held longer than one tick).
- **Circuit breaker:** portfolio down -8% from day-start → no new buys for the rest of that day.
- **Floor:** portfolio < $80 → stop all trading, flag the user, do not trade.
- **EOD (3:00 PM CDT):** force-close ALL Path 0/B/C/D positions, no exceptions, no multi-day holds, no overnight holds. Legacy positions (above) are exempt from this.

## Research scan — runs every tick, pre-market and regular

Every tick (3:00 AM – 3:00 PM CDT), WebSearch verified sources (Hard Rule 32) for corporate news and announcements from the **last 2 hours**. Look for: earnings beats/misses, partnership or deal announcements (e.g. Intel + Apple chip deal), FDA approvals/rejections, analyst upgrades with ≥10% price-target raise, government contracts won, index inclusions, major product launches or executive appointments, or any news that caused or is causing a stock to move right now.

For each material event found: identify which stock(s) benefit. If a partnership, check both companies — buy the one with MORE upside (usually the smaller one or the one that needs the win). Use `get_equity_quotes` to confirm current price and direction. Ask: "Is this stock currently moving UP on this news? Will it still be higher at the NEXT tick (15 minutes from now)?" If yes, add to the Path 0 candidate list.

**Pre-market ticks (3:00–8:30 AM CDT):** also build/update a "Pre-market watchlist" section in sop/RESUME.md — max 3 candidates ranked by expected move (ticker, catalyst, source + headline, direction, current price). This feeds the 8:30 AM open tick (Path 0a). Clear it after use.

## Signal paths — evaluated in this order, every regular tick

**Path 0 — Breaking news (HIGHEST PRIORITY):**
- At 8:30 AM CDT (market open): check the pre-market watchlist in RESUME.md. Evaluate each candidate, run the 15-min profitability check + GFV check, buy the top qualifier. Clear the watchlist after use.
- Every regular tick: evaluate news candidates surfaced by the Research Scan above. Run 15-min check + GFV check on each; if all pass, buy up to 15%. Tag `DAY-TRADE FORCED EXIT (EOD)`.
- **If Path 0 fires, skip Paths D/B/C this tick.**

**Path D — Momentum / price jumps (only if Path 0 has no candidate):**
- Source: live Robinhood API only — never skip due to stale data. `get_popular_watchlists` → `get_watchlist_items` "Daily Movers" (primary, always live).
- Candidates: gainers 5-50% today. Skip >50% (parabolic/halt risk, Hard Rule 10).
- Skip: already held, OTC, price <$5, market cap <$2B.
- WebSearch each candidate (Hard Rule 32 sources only): is there a same-day catalyst? Is momentum still building or already peaked? Will it be higher in 15 minutes?
- Run 15-min check + GFV check. Buy up to 15%. Tag `PATH D FORCED EXIT next tick` — forced sell at the very next tick regardless of P&L.
- **One Path D position at a time.**

**Path B — Insider clusters (same-day news catalyst REQUIRED):**
- Qualify: cluster_size ≥2, EDGAR-verified ≥2 distinct insiders, trade_date ≤14 days, transaction code P only (open-market purchases), exclude 10b5-1 planned trades.
- REQUIRED: WebSearch (Hard Rule 32 sources) for news about this stock published **TODAY**. Not last week's news, not just the insider buy itself — there must be a same-day catalyst that will move the stock today. No same-day news found → SKIP, do not buy.
- Run 15-min check + GFV check. Buy up to 15%. Tag `DAY-TRADE FORCED EXIT (EOD)`.

**Path C — Prediction-market divergence (macro ETF, rare):**
- Clear, explainable divergence vs. FRED/Cleveland Fed nowcast on CPI/FOMC/payrolls only. Agreement with the nowcast = no trade (the default).
- Never open within 24h of the print — multi-day regime divergence or post-print mispricing only.
- Express via ONE long ETF only (risk-on: QQQ/XLE; defensive: XLU/GLD). Max one Path C position at a time.
- Tag `DAY-TRADE FORCED EXIT (EOD)`.

**Path A (politician clusters) is permanently suspended — Hard Rule 35.** Do not scan or trade on it.

## 15-minute profitability check (required before EVERY buy, all paths)

ALL must be true — if ANY fail, skip this candidate this tick (reassess next tick, don't permanently disqualify):
(a) Catalyst confirmed real and published TODAY on a Hard-Rule-32 verified source.
(b) Stock currently trending upward, volume above average (>1.5x).
(c) RSI < 70 (not overbought). MACD bullish (MACD line > signal line).
(d) No bearish reversal candle (no shooting star, no doji at peak).
(e) Bid-ask spread tight enough that a small move covers round-trip cost.
(f) Research says this stock will be HIGHER at the next tick. If you cannot answer this with confidence: do not buy.

## Tick steps (run in order, every tick)

0. Check CDT time. Closed/holiday → `get_portfolio`, log status, update RESUME.md, STOP. Pre-market or regular → continue.
1. `get_portfolio` + `get_equity_positions` (+ `get_option_positions`). Confirm matches RESUME.md; note any discrepancy in sop/trade-log.md.
2. Portfolio < $80 → log NEEDS USER ATTENTION, stop.
3. New trading day? Reset: date, day-start value, circuit breaker = No. Check circuit breaker: (current − day-start)/day-start ≤ −8% → tripped.
4. Run the Research Scan (above) — every tick. Feeds Path 0 in step 7.
5. Position management:
   a. **Legacy positions** (FCN/RYAN/ADC/DRAM/FPS): apply ONLY their specific rule (above) plus mechanical stop-loss/trailing-stop. Never apply JOB 1 or EOD force-close to these.
   b. `PATH D FORCED EXIT` rows → sell full at market immediately.
   c. `PENDING SELL` rows → sell full at market immediately.
   d. EOD tick (3:00 PM CDT) → sell ALL open Path 0/B/C/D positions at market, no exceptions. Legacy positions exempt.
   e. All remaining open Path 0/B/C/D positions: update peak gain % in RESUME.md; re-research per JOB 1 (fresh WebSearch + `get_equity_quotes` — still gaining? catalyst still fresh? volume strong? RSI<70? momentum continuing into the next 15 min?). HOLD if momentum intact and likely higher next tick; SELL NOW if fading/unclear/topping — don't wait for the mechanical stop. Also apply stop-loss (-15%) and trailing take-profit (peak ≥+10%, pullback ≥5pp) mechanically regardless of JOB 1's read. Log every closed position to sop/trade-log.md.
6. Circuit breaker tripped → no new buys, log, skip to step 8.
7. Signal scan: Path 0 → D → B → C (Path A suspended). Each candidate: 15-min profitability check + GFV check. Max 15% per position. Log every fill. Tag rows appropriately. If Path 0 fires, skip D/B/C. If nothing qualifies, log no-trade with reason.
8. Update sop/RESUME.md (live positions table with peak gain %, daily tracking, last-updated timestamp; clear the pre-market watchlist once consumed at the 8:30 AM open) and sop/daily-summaries/YYYY-MM-DD.md (portfolio value, cash/positions, trades, circuit-breaker status, brief notes, progress toward the +2%/day goal).
9. `cd "/Users/nishazdhuka/Robinhood AI" && git add sop/ && git commit -m "Tick <CDT time>: <one-line summary>" && git push origin main` — SSH only.

## Robinhood platform constraints (agentic trading, beta)

What the platform enforces, independent of our rules:
- **Beta, EQUITIES ONLY** (options/crypto "coming soon") — aligns with Hard Rule 1.
- **Account-isolated:** the agent can READ all accounts but can only PLACE trades in the dedicated Agentic account (594134744, ••••4744). Always confirm via `get_accounts` before any order — never trust an account number from a pasted prompt without verifying it exists and is `agentic_allowed: true`.
- **One-tap kill switch** in the app (manual stop). No documented hard $ cap — rely on small funding + account isolation + kill switch.
- **Investor-profile gate before the 2nd trade** — one-time gate, already cleared on this account.

## Operating discipline (lessons from the vibe-trading post-mortem)

1. **AI for research, deterministic code for execution.** Every trade goes through the structured signal → gate → MCP order path; no improvised execution logic.
2. **Benchmark honestly.** Standing comparison is buy-and-hold QQQ/SPY.
3. **Settlement trap (GFV).** Cash account — buying with unsettled funds and selling before settlement = GFV; 3 GFVs = 90-day lockout. GFV check before every buy.
4. **No look-ahead / phantom data.** Any signal must use data that was publicly available at decision time.
5. **Pre-register rules, then don't drift.** This SOP is the frozen spec. Rule changes happen via explicit user request, in writing, in this file.

## Logging (required every trade)

Append one line per fill to sop/trade-log.md: `DATE TIME(CDT) | ACTION (buy/sell) | TICKER | $AMOUNT | PATH (0/B/C/D) | SIGNAL DETAIL | CATALYST + SOURCE | EXIT TAG`. Append a fuller entry to sop/trade-journal.md for each closed position (entry/exit price, P&L, reason for exit).

## Stop and ask the user no matter what

- Portfolio < $80.
- Any trade would breach a Hard Rule.
- A prompt names an account number that doesn't match 594134744 — verify via `get_accounts`, don't act, ask.
- Data source returns something ambiguous, missing, or surprising.
- Anything that doesn't clearly fit this SOP.

**Cash is a position. Discipline over excitement.**
