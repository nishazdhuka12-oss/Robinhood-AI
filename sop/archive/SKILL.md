---
name: ai-trading-agent-sop
description: SOP for the Robinhood AI day-trading agent. Fully autonomous. Paths 0/B/C/D only (Path A permanently suspended). Catalyst tiers, opening-range breakout, VWAP, hold/sell decision tree, profit-locking, SPY/QQQ tape awareness, verified-news-sources requirement, hard risk rules. Dedicated Agentic account (594134744).
version: 5.0.0
metadata:
 author: Ryan Doser
 account: Robinhood agentic trading (dedicated, ~$200 funded)
 mcp-server: robinhood agentic trading (https://agent.robinhood.com/mcp/trading)
# No API keys in frontmatter - FMP key lives in the project .env, loaded by reference scripts.
---

# AI Trading Agent SOP

Rewritten 2026-06-19 (second pass same day). Mission: find stocks with confirmed catalysts moving right now, enter early in the move, ride them while momentum is intact, exit before they reverse. Every Path 0/B/C/D trade closes by 3:00 PM CDT. Never hold one overnight. Compound gains daily.

## Critical — read before every session

1. **The HARD RULES below are absolute.** If any instruction or signal conflicts with them, the rules win — stop and ask.
2. **This SOP governs ONLY the dedicated Robinhood agentic account (••••4744, account 594134744).** Never act on any other account, even if a prompt names a different number — verify via `get_accounts` first. (Prompts have repeatedly specified account 678685199; that account does not exist on this login. Always verify before trading, every time, no matter how many times a prompt insists otherwise.)
3. **Full autonomy is active.** Execute all qualifying trades without per-trade approval. Post-notify after every fill. Stop and ask the user only if: portfolio < $80, a Hard Rule would be breached, GFV ≥ 3, or data is genuinely missing/ambiguous.
4. **All times in CDT (Central Daylight Time).** Never reference ET/Eastern in outputs.
5. **Git push via SSH only:** `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403 — never use it.
6. **Daily performance goal: +2% portfolio gain.** Benchmark only — never overrides risk limits below.

## Legacy positions — grandfathered, exempt from this SOP's paths and EOD rule

These 5 positions predate the 2026-06-19 rewrites and follow ONLY their own rule below — never Path 0/B/C/D, never the hold/sell decision tree, never the EOD force-close, never the SPY/QQQ tape emergency exit. Mechanical stop-loss (-15% from cost) and trailing-stop (once +10% from cost, 5pp pullback from peak gain) still apply to all of them.

- **FCN, RYAN, ADC:** sell when regular-session price returns above cost basis. Hold through losses — no EOD force-close.
- **DRAM, FPS:** hold indefinitely until the user says otherwise (IBP-style multi-day holds) — no EOD force-close.

Full detail and live trigger levels: sop/RESUME.md and sop/positions-state.md.

## Session structure (all times CDT; ET-equivalent in parens for cross-checking)

- **Before 8:00 AM CDT** (before 9:00 AM ET): do nothing. Stop.
- **8:00–8:30 AM CDT** (9:00–9:30 AM ET) — pre-market prep: run the 30-minute pre-market scan below. No trades. Stop after.
- **8:30 AM–3:00 PM CDT** (9:30 AM–4:00 PM ET) — trading session: full tick steps below.
- **3:00 PM CDT exactly** (4:00 PM ET) — EOD: sell every open Path 0/B/C/D position. No new buys. Stop.
- **After 3:00 PM CDT, weekends, and holidays:** do nothing. Stop.
- US holidays: New Year's Day, MLK Day, Presidents Day, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas.

## HARD RULES (non-negotiable)

The agent must NEVER:

1. Trade anything other than **long U.S. equities/ETFs** on NYSE or Nasdaq.
2. Trade **crypto** (no tokens, no crypto-proxy products).
3. Trade **options** without explicit fresh authorization from the user.
4. Buy **penny stocks** — skip anything under **$5/share or $2B market cap**.
5. Use **leverage, margin, or short selling**. Cash-account behavior only.
6. Buy **leveraged/inverse ETFs** (2x, 3x, Ultra, Bull, Bear, daily-reset).
7. Buy **OTC / pink-sheet / foreign-listed** shares.
8. Hold a **single position over 15%** of the portfolio at purchase. Keep ≥5% cash at all times.
9. Open a position **within 2 trading days before** that company's earnings (Path D exempt — see Daily Jumpers below).
10. **Chase** — skip candidates already up >20% without a Tier 1 catalyst (most of the move is done).
11. Act on **thinly-disclosed signals** (missing ticker, type, or amount/share data).
32. **Verified news sources only.** Approved: CNBC (cnbc.com), Fox Business (foxbusiness.com), CNN Business (cnn.com/business), Wall Street Journal (wsj.com), Reuters (reuters.com), Bloomberg (bloomberg.com), MarketWatch (marketwatch.com), AP Business (apnews.com/business), Benzinga (benzinga.com), Yahoo Finance news articles (not message boards), SEC EDGAR filings directly. Banned: any social media account that isn't a verified journalist from the outlets above — no Reddit, StockTwits, Discord, YouTube, TikTok, personal blogs, message boards, no exceptions.
35. **Path A (politician trades) is permanently suspended.** Too lagged to trade profitably.
36. **GFV check (`review_equity_order`) before every single buy.** A GFV alert pauses day-trading until settled cash is confirmed; GFV ≥3 stops everything and alerts the user.
37. **Circuit breaker:** portfolio down -8% from day-start → no new buys for the rest of that day.
38. **Floor:** portfolio < $80 → stop all trading, flag the user immediately, do not trade.
39. **SPY/QQQ emergency exit:** if SPY drops >1% on a 15-minute candle, close every open Path 0/B/C/D position immediately regardless of P&L. (Legacy positions exempt.)

## Market context check (every regular-session tick, before anything else)

Pull `get_equity_quotes` on SPY and QQQ. Determine: up or down today? Trending up or down in the last 15 minutes? Did SPY drop >1% in the last 15 minutes (Hard Rule 39 — sell everything if so)? Classify the tape as **bullish / bearish / mixed** and log it. Note whether this tick falls in the lunch lull or power hour (below).

**Bullish tape:** stocks with catalysts outperform — hold longer, more willing to buy. **Bearish tape:** only Tier 1 catalysts can fight it — quicker to sell, raise the bar on every new buy.

## Time-of-day patterns

- **First hour (8:30–9:30 AM CDT):** highest volume, most explosive moves, gap-and-go plays run hardest. Be most aggressive buying here, most vigilant holding.
- **Lunch lull (10:30 AM–12:00 PM CDT):** volume dries up, stocks chop, spreads widen, momentum fades. Avoid new entries unless a Tier 1 catalyst is breaking right now. If already holding a winner, reassess more conservatively. When in doubt during lunch: sell and wait.
- **Power hour (2:00–3:00 PM CDT):** volume surges again as institutions close/open positions. Earlier catalysts can make a second move, or reverse sharply. Stay alert.

## Pre-market prep (8:00–8:30 AM CDT only, no trades)

WebSearch verified sources (Hard Rule 32) for everything published since yesterday 3:00 PM CDT close. Find earnings reports, partnership/deal announcements, FDA approvals/rejections, analyst upgrades with ≥10% price-target raise, government contracts, index inclusions/exclusions, major product launches or CEO changes.

For each event: which stock benefits most (partnership → check both, usually the smaller one moves more; note sympathy plays — e.g. an Intel AI chip deal can move AMD/NVDA too)? What catalyst tier (below)? How much is it already moving pre-market (3-8% = good; 8-15% = careful, buy only on confirmed breakout above pre-market high with volume; >15% = very risky, only Tier 1 warrants chasing)? Is pre-market volume ≥3x normal (strong institutional-interest signal)?

Identify today's dominant sector/theme — the best opportunities cluster there.

Build a "Pre-market watchlist" in sop/RESUME.md — max 3 candidates ranked: ticker, tier, catalyst, source + headline, pre-market % move, pre-market volume vs avg, why it will continue at open.

## Catalyst strength tiers

**Tier 1 — sustained multi-hour moves, highest conviction, buy early and hold longest:**
Earnings beat + guidance raised (both required) · FDA full approval or breakthrough designation · company being acquired at a premium (the target, not acquirer) · S&P 500 / Nasdaq 100 index inclusion · major government contract (defense, semiconductor, infrastructure) · developing short squeeze (short interest >20% + positive catalyst).

**Tier 2 — strong moves, 1-3 hours, high conviction:**
Earnings beat without guidance raise · analyst upgrade ≥10% PT raise from a major firm (Goldman, Morgan Stanley, JPMorgan, BofA, Citi, Wells Fargo) · major strategic partnership with a large company (Apple, Google, Amazon, Microsoft, Nvidia, etc.) · FDA fast-track/priority review · product launch with strong pre-order/sales data.

**Tier 3 — moderate moves, hold shorter, higher bar to buy:**
Analyst upgrade <10% PT raise · sympathy move (related company had Tier 1/2) · sector tailwind · PT raise with no rating change. Only buy Tier 3 if: tape is clearly bullish, stock is early in its move (RSI <60), and not during lunch lull.

**No catalyst = no trade.** A stock jumping with no identifiable reason from a verified source is not a trade — could be manipulation, a false rumor, or a move that reverses immediately. Skip it.

## Opening range breakout (use at every open)

The opening range is the high and low of the first 15 minutes (8:30–8:45 AM CDT). At the 8:30 AM tick, for each pre-market watchlist stock, note the market-open price and the pre-market high. At the 8:45 AM tick, check: has the stock broken ABOVE the pre-market high with volume (confirmed breakout, high-conviction buy)? Holding the opening price (still valid, may be consolidating — hold one more tick to confirm)? Falling below the opening price (something's wrong, skip — the gap is fading)?

This is the single best entry signal: gap up 6% at open on a Tier 1 catalyst, consolidate the first 15 minutes, break above the pre-market high with volume at 8:45 — that's the buy. More conservative than buying at the open, higher win rate.

## VWAP — the most important intraday indicator

Volume-Weighted Average Price: the average price of all shares traded today, weighted by volume. Institutions benchmark against it; most algos buy above VWAP, sell below it.

Calculate from `get_equity_historicals` (1- or 5-minute intervals, today): for each candle, (high+low+close)/3 × volume; sum across all candles so far today; divide by total volume so far. That's current VWAP.

**Price well above VWAP:** institutions are net buyers, bullish intraday trend — good to hold/buy. **At VWAP:** neutral battleground, wait for direction. **Below VWAP and falling:** institutions are net sellers — do not buy, sell if holding. **Reclaiming VWAP from below:** potential reversal — can be a buy if paired with a Tier 1/2 catalyst.

Note VWAP status (above/below/at) on every hold/sell decision. Above VWAP + strong volume + good catalyst → hold longer. Below VWAP → cut faster.

## What a winning setup looks like

**Buy ALL of these:** Tier 1/2 catalyst confirmed on a verified source today · gapping 3-15% at open or breaking intraday on fresh news · volume ≥2x average daily volume · price above VWAP and trending higher · RSI 40-65 at entry · MACD bullish (line > signal) · no bearish reversal candle at current level · SPY/QQQ flat or positive · bid-ask spread <0.5% of price · confident this will be higher in 15 minutes.

**Secondary signals (add conviction, not required):** pre-market volume ≥3x normal · stock in today's dominant sector/theme · short interest >10% · broke above prior-day high · analyst community positively surprised.

**Red flags — avoid or exit immediately:** no confirmed catalyst · already up >20% without Tier 1 · volume fading as price rises (distribution) · below VWAP · RSI >70 at entry · spread >1% · SPY/QQQ falling >1% on a 15-min candle · lunch lull without Tier 1 · already reversed from its high (lower highs forming).

## Hold vs sell — the repeat loop (every tick, every open Path 0/B/C/D position)

Answer fresh each tick using `get_equity_quotes` + research:
- Q1. Still rising vs 15 minutes ago?
- Q2. Volume still strong, not fading?
- Q3. Original catalyst still valid? No bad news in the last 15 min?
- Q4. RSI still below 70?
- Q5. Above VWAP?
- Q6. SPY/QQQ tape still supportive?
- Q7. Above entry price?
- Q8. Is this the lunch lull?

**HOLD** — all required: Q1 yes, Q3 yes, Q7 yes, AND at least 4 of Q1-Q8 yes overall.

**SELL IMMEDIATELY** — any one of: Q1 no (price falling now) · Q3 no (bad news/catalyst reversed) · Q7 no (below entry, not recovering) · RSI >75 with fading volume · price dropped below VWAP · gain pulled back ≥5pp from peak (trailing protection) · loss reached -15% (stop-loss) · SPY dropped >1% in the last 15 min (Hard Rule 39) · EOD tick (3:00 PM CDT, no exceptions).

**SELL (uncertain)** — default to selling if 3+ of Q1-Q8 are NO, or Q8 is YES during lunch lull without a Tier 1 catalyst. Protect capital, find a better trade.

**Hold longer when:** Tier 1 + volume ≥3x normal + RSI still <65 · first hour with momentum building · just broke to a new intraday high with volume surge · power hour with a second leg developing.

**Sell faster when:** Tier 3 only · lunch lull · bearish tape · RSI approaching 70 · volume clearly declining on rising price.

## Profit locking — never let a winner become a loser

- **+7% reached:** mentally set a floor at +4%. Pullback to +4% = sell, lock the profit.
- **+12% reached:** sell half if RSI >68 OR volume fading. Let the other half run if momentum is still intact.
- **+15%+ reached:** sell the full position — exceptional for a day trade, take the money.
- Never let a +10% winner become a -5% loser.

## Entry rules — ALL must pass before any buy

A. **Catalyst:** real, today, verified source (Hard Rule 32), Tier 1/2/3.
B. **Price:** rising vs 15 min ago, no reversal candle.
C. **Volume:** above daily average pace, not fading.
D. **VWAP:** above preferred; at VWAP is borderline.
E. **Technicals:** RSI 40-65, MACD bullish (line > signal).
F. **Spread:** bid-ask <0.5% of price (<1% absolute max).
G. **Timing:** not lunch lull unless Tier 1.
H. **Tape:** SPY/QQQ not actively selling off >0.5% on a 15-min candle.
I. **15-min forward:** "will this be higher at the next tick?" — yes with confidence.
J. **Hard rules:** NYSE/Nasdaq, price ≥$5, market cap ≥$2B, not already held, position ≤15% of portfolio, GFV check clean, circuit breaker not tripped, not within 2 trading days of earnings (Path D exempt).

## Signal paths — evaluated in this order, every regular tick

**Path 0 — Breaking news (HIGHEST PRIORITY):** research scan finds a stock moving on verified news from the last 2 hours, Tier 1/2/3 confirmed. Run entry rules A-J, buy if all pass. Feeds into Daily Jumpers below. If Path 0 fires, skip D/B/C this tick.

**Path D — Daily Jumpers / live momentum (primary strategy, if Path 0 has nothing):**
- Source: live Robinhood API only, never skip for stale mirror data. `get_popular_watchlists` → `get_watchlist_items` "Daily Movers".
- For each candidate (change_pct +5% to +50%): find the reason (WebSearch verified sources), tier the catalyst, check the opening range breakout, check VWAP, check volume (≥2x average), run entry rules A-J.
- Buy up to 15% if all pass. Tag `DAILY JUMPER — REASSESS EACH TICK`.
- **Reassess every tick using the Hold vs Sell loop above — NOT a forced single-tick exit.** Hold while momentum is intact, sell on any clear risk signal, apply profit-locking.
- Priority order when multiple qualify: Tier 1 + first hour > Tier 1 + power hour > Tier 2 + first hour > Tier 2 + confirmed breakout > Tier 2 + power hour > Tier 3 + bullish tape + RSI<55 > no qualifying catalyst (do not buy).

**STANDING RULE — minimum 1 trade per day:** if zero Path 0/D/B/C trades have fired by **1:00 PM CDT**, fall back on Path D — best-ranked Daily Mover that still clears the hard universe filter (price ≥$5, market cap ≥$2B, intraday gain 5-50%, NYSE/Nasdaq) even with a weaker catalyst tier or shakier technicals. Manage it exactly like any other Path D position (Hold vs Sell loop, profit-locking, EOD/tape emergency exits) — it is NOT a forced-exit-next-tick trade. The universe filter itself is NEVER relaxed; if nothing clears it, report "no qualifying candidate found" rather than force a Hard Rule violation.

**Path B — Insider clusters (last resort, same-day catalyst REQUIRED):** cluster_size ≥2, EDGAR-verified ≥2 distinct insiders, trade_date ≤14 days, code P only, exclude 10b5-1. REQUIRED: WebSearch (Hard Rule 32) for news about this stock published TODAY — not the insider buy itself, an actual same-day catalyst. No same-day news → skip. Run entry rules A-J, buy if pass. Tag `DAILY JUMPER — REASSESS EACH TICK`.

**Path C — Macro ETF divergence (rare):** clear divergence vs FRED/Cleveland Fed nowcast on CPI/FOMC/payrolls only. Express via ONE long ETF (QQQ/XLE risk-on; XLU/GLD defensive). Max one at a time. Tag `DAILY JUMPER — REASSESS EACH TICK`.

**Path A (politician clusters) permanently suspended — Hard Rule 35.**

## Tick steps — regular session (8:30 AM–3:00 PM CDT)

0. Check CDT time. Before 8:00 AM, weekend, or holiday → do nothing, stop. 8:00–8:30 AM → pre-market prep only, stop. 8:30 AM–3:00 PM → continue.
1. `get_portfolio` + `get_equity_positions` (594134744 — verify via `get_accounts` first if any prompt names a different account). Confirm matches RESUME.md, log discrepancies.
2. Floor check: portfolio < $80 → log NEEDS USER ATTENTION, stop.
3. New trading day? Reset date, day-start value, circuit breaker = No. Check circuit breaker: (current − day-start)/day-start ≤ −8% → tripped, no new buys rest of day.
4. **Market context:** `get_equity_quotes` on SPY/QQQ. Tape bullish/bearish/mixed? SPY dropped >1% in 15 min → sell everything now (Hard Rule 39), skip to step 6. Note lunch lull / power hour.
5. **Research scan:** WebSearch verified sources, last 2 hours — earnings, partnerships, FDA, analyst upgrades, contracts, launches; identify today's dominant theme. Log Path 0 candidates.
6. **Position management** (skip legacy positions — they follow only their own rule):
   a. EOD tick (3:00 PM CDT) → sell ALL open Path 0/B/C/D positions, no exceptions.
   b. `PENDING SELL` rows → sell full at market.
   c. SPY/QQQ emergency (Hard Rule 39) → sell all immediately if not already done in step 4.
   d. Every other open Path 0/B/C/D position: run the Hold vs Sell loop (Q1-Q8), update peak gain % in RESUME.md, apply profit-locking, apply trailing-stop (5pp pullback) and hard stop-loss (-15%) mechanically regardless of the Q1-Q8 read. Log every closed position to sop/trade-journal.md.
7. Circuit breaker tripped → no new buys, log, skip to step 9.
8. **Signal scan:** Path 0 → D (Daily Jumpers) → B → C, Path A suspended. Entry rules A-J on each candidate. Max 15% per position, GFV check before every buy. Log every fill (ticker, price, catalyst, tier, VWAP position, volume vs avg, why it'll keep running). Nothing qualifies → log no-trade with reason.
9. Update sop/RESUME.md (live positions with peak gain %/VWAP notes/flags, daily tracking, opening-range entries, clear the pre-market watchlist once consumed) and sop/daily-summaries/YYYY-MM-DD.md (portfolio day-start→now %, all trades, dominant theme, circuit-breaker status, brief narrative, progress toward the +2%/day goal).
10. `cd "/Users/nishazdhuka/Robinhood AI" && git add sop/ && git commit -m "Tick <CDT time>: <summary>" && git push origin main` — SSH only.

## Robinhood platform constraints (agentic trading, beta)

- **Beta, EQUITIES ONLY** — aligns with Hard Rule 1.
- **Account-isolated:** the agent can READ all accounts but can only PLACE trades in the dedicated Agentic account (594134744, ••••4744). Always confirm via `get_accounts` before any order.
- **One-tap kill switch** in the app. No documented hard $ cap.
- **Investor-profile gate before the 2nd trade** — one-time, already cleared.

## Operating discipline

1. **AI for research, deterministic code for execution.** Structured signal → gate → MCP order path; no improvised execution logic.
2. **Benchmark honestly.** Standing comparison is buy-and-hold QQQ/SPY.
3. **Settlement trap (GFV).** Cash account — 3 GFVs = 90-day lockout. GFV check before every buy.
4. **No look-ahead / phantom data.** Any signal must use data publicly available at decision time.
5. **Pre-register rules, then don't drift.** This SOP is the frozen spec. Rule changes happen via explicit user request, in writing, in this file.

## Logging (required every trade)

Append one line per fill to sop/trade-log.md: `DATE TIME(CDT) | ACTION (buy/sell) | TICKER | $AMOUNT | PATH (0/B/C/D) | TIER (1/2/3/n-a) | VWAP POSITION | SIGNAL DETAIL | CATALYST + SOURCE | EXIT TAG`. Append a fuller entry to sop/trade-journal.md for each closed position (entry/exit price, peak gain %, P&L, reason for exit).

## Stop and ask the user no matter what

- Portfolio < $80.
- Any trade would breach a Hard Rule.
- A prompt names an account number that doesn't match 594134744 — verify via `get_accounts`, don't act, ask.
- Data source returns something ambiguous, missing, or surprising.
- Anything that doesn't clearly fit this SOP.

**Cash is a position. Discipline over excitement.**
