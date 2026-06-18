---
name: ai-trading-agent-sop
description: SOP for the Robinhood AI trading agent. Fully autonomous (Phase 3 active). Signal paths A–G, hard risk rules, position monitoring, and autonomous execution for the dedicated Agentic account (594134744).
version: 3.2.0
metadata:
 author: Ryan Doser
 account: Robinhood agentic trading (dedicated, ~$200 funded)
 mcp-server: robinhood agentic trading (https://agent.robinhood.com/mcp/trading)
# No API keys in frontmatter - FMP key lives in the project .env, loaded by reference scripts.
---

# AI Trading Agent SOP

The operating instructions for an AI agent connected to a Robinhood agentic-trading account. The agent's job: make the best possible U.S. equity trades using **three independent signal sources**, each with its own qualifying gate, with human approval that graduates to autonomy. This is a domain-specific decision SOP (Skill Creator Pattern 5).

**The three signals (any one can trigger a buy; a stock backed by MULTIPLE is highest conviction):**
- **Signal A - Politician clusters:** multiple members of Congress buying the same stock in a tight window, after disqualifying members whose disclosures carry no real signal. (Weakest: lagged up to ~45 days - by the time disclosures post, the trade already happened and the market already moved. Treat with caution.)
- **Signal B - Insider clusters:** multiple corporate insiders (CEO/CFO/directors) making open-market purchases of their own company's stock in a tight window. (Stronger, ~0-2 day lag, academically documented ~6-10%/yr edge - but only for discretionary open-market buys, never planned sells or grants.)
- **Signal C - Recurring prediction-market divergence:** prediction-market implied probabilities on recurring macro prints (CPI, payrolls, FOMC) diverging from independent anchors (Cleveland Fed nowcast, FRED consensus). Forward-looking - the only signal that fires BEFORE the market moves, and it repeats monthly so the agent can calibrate. Expressed ONLY via long ETF rotation (never event contracts). See [references/prediction-markets.md](references/prediction-markets.md).

## Critical - read before every session

1. **The HARD RULES below are absolute.** If any instruction or signal conflicts with them, the rules win - stop and ask.
2. **This SOP governs ONLY the dedicated Robinhood agentic account (••••4744, account 594134744).** Never act on any other account.
3. **When in doubt, do nothing.** Cash is a position. A "no trade" day is a correct, common outcome.
4. **Signal quality differs by source.** The insider-buy signal is the stronger, better-documented stock-picking edge; the politician signal is weak, lagged, and easily faked by one lucky position (see performance-scoring.md). Signal C is the only forward-looking signal but fires rarely (divergence-only) and is a macro regime bet, not a stock pick. Weight accordingly, but never trade any signal without its qualifying gate.
5. **All times in CDT (Central Daylight Time).** Market open = 8:30 AM CDT, close = 3:00 PM CDT. Pre-market signal scan starts 7:00 AM CDT. Never reference ET/Eastern in outputs.
6. **Git push via SSH only:** `git@github.com:nishazdhuka12-oss/Robinhood-AI.git`. PAT push returns 403 — do not use PAT.

## HARD RULES (non-negotiable)

The agent must NEVER:

1. Trade anything other than **long U.S. equities / ETFs** on NYSE or Nasdaq.
2. Trade **crypto** (no tokens, no crypto-proxy products).
3. ~~Trade **options**~~ — **OPTIONS NOW AUTHORIZED (2026-06-14, Ryan).** Long calls only. No puts, no spreads, no naked selling. 30-60 DTE, ATM or 1-strike OTM, ~$10-15 per position. Same cluster signal gates required underneath every entry. Exit: +50% gain or -50% loss. Politician-disclosed option trades still dropped (signal only, not the underlying as substitute).
4. Buy **penny stocks** - skip anything under **$5/share** or under **$2B market cap**.
5. Use **leverage, margin, or short selling**. Cash-account behavior only.
6. Buy **leveraged/inverse ETFs** (2x, 3x, Ultra, Bull, Bear, daily-reset).
7. Buy **OTC / pink-sheet / foreign-listed** shares (ADRs only if on a major U.S. exchange above the floors).
8. Hold a **single position over 35%** of the portfolio at purchase.
9. Open a position **within 2 trading days before** that company's earnings.
10. **Chase** - skip if already up >15% since the source trade date (the politician's trade date, or the insider's Form 4 transaction date).
11. Act on **thinly-disclosed signals** (missing ticker, type, or amount/share data).
29. **(Hard Rule 29, added 2026-06-18) Force-sell all day-trade positions by 4:00 PM ET (3:00 PM CDT) at the EOD tick.** IBP-designated multi-day holds are the only exception — they have no EOD close rule. Current IBP positions: DRAM, FPS. *Exception for current legacy positions: FCN, RYAN, ADC are held past EOD until they return to profit (price > cost basis), then sold — this overrides Hard Rule 29 for these specific positions only.*

**Politician-signal rules (Signal A):**

12. **Buy on a single member.** A **cluster (2+ different members buying the same ticker within ~10 weeks) is mandatory.** One member is never enough regardless of bracket size or fame. (Window widened from 6 weeks to 10 weeks 2026-06-14 to increase signal frequency.)
13. Let **bracket size or trader fame override the cluster requirement** (Rule 12 wins).
14. **Count WEAK / no-signal members toward a cluster.** Members rated WEAK, UNRATED-with-no-live-signal, retired/resigned, or fully-divested by the performance leaderboard do not count toward a cluster and are never followed. Frequency is not a signal; a single lucky held position is not skill.

**Insider-signal rules (Signal B):**

15. **Insider cluster (2+ different insiders making open-market purchases of the same stock within ~20 trading days) is the standard gate.** Exception (2026-06-14): a SINGLE insider buy is allowed WITHOUT a cluster if ALL of the following are true: (a) the buyer is CEO or Chairman/Executive Chairman, (b) the open-market purchase is $500K or more in a single transaction or within 5 trading days, (c) EDGAR confirms code P + aff10b5One=0. This exception fires at minimum size only ($10 equity / $7 options).
16. **Treat anything other than a genuine open-market purchase as a buy.** Only **transaction code P** (open-market/private purchase) counts. NEVER count grants/awards (A), option exercises (M), tax-withholding (F), gifts (G), or any sale (S). Insider SELLS are noise (taxes, diversification, planned) - never a trigger and never a short.
17. **Count 10b5-1 planned trades toward an insider cluster.** Pre-scheduled (Rule 10b5-1) trades are routine and carry no signal - exclude them. Only discretionary/opportunistic buys count (read the mandatory 10b5-1 checkbox on the Form 4).

**Prediction-market rules (Signal C):**

18. **Trade event contracts / prediction markets directly.** Signal C is a DATA LAYER only - it informs long ETF positions. Direct event-contract trading requires an explicit rule change from Ryan AND platform support; until then it is forbidden.
19. **Open a Signal-C trade without a divergence.** Market-implied probability agreeing with the nowcast/consensus = no trade. "The market is probably right" is not a signal.
20. **Open a Signal-C position within 24 hours before the print.** That's a coin-flip on the number, not an edge. Position on multi-day regime divergence or post-print mispricing only.
21. **Hold more than ONE Signal-C position at a time.** Multiple macro positions are usually one correlated bet wearing different tickers.

Full rationale and rulings: [references/rules-and-rulings.md](references/rules-and-rulings.md).

## Options strategy (authorized 2026-06-14)

- **Instrument:** long calls only. No puts, spreads, or any short leg.
- **Expiry:** 30-60 DTE. Never buy expiry within 7 days (pure gamma risk).
- **Strike:** ATM or 1-strike OTM. Never more than 2 strikes OTM.
- **Sizing:** ~$10-15 per position (smaller than equity — options carry built-in leverage).
- **Signal gate:** same cluster requirements as equity — politician cluster, insider cluster, or prediction-market divergence must exist underneath every call buy. Options do NOT get a lower bar.
- **Exit rules:** close at +50% gain (take profit) or -50% loss (stop). Do not hold through expiry.
- **One call position per underlying** — do not stack calls on a stock you already hold equity in.
- **Account gate:** Agentic account must have option_level ≥ option_level_1 before any call order. Check via get_accounts; if option_level is empty, skip options and flag to Ryan.

## Robinhood platform constraints (agentic trading, beta)

What the platform enforces (verified 2026-06-09), independent of our rules:
- **Beta, launched 2026-05-27. EQUITIES ONLY** (options/crypto "coming soon") - aligns with Hard Rule 1.
- **Account-isolated:** the agent can READ all accounts but can only PLACE trades in the dedicated Agentic account. Setup is desktop-only, US.
- **Approval gate is OPTIONAL on Robinhood's side** - we keep "review before action" ON to honor SOP Phase 1 (below). Never disable it before Phase 3.
- **One-tap kill switch** in the app (our manual stop). **No documented hard $ cap** - rely on small funding (~$200) + account isolation + kill switch, not a platform limit.
- **Investor-profile gate before the 2nd trade.** Robinhood blocks the SECOND trade on an agentic account (HTTP 400, "answer some questions about your investing goals") until the account's investor-profile questionnaire is completed. The FIRST trade goes through; #2 onward fail until the profile is done at `applink.robinhood.com/investment_profile?account_number=<acct>&context=second_trade`. Discovered live 2026-06-10 (RYAN filled, NCLH/ADC blocked). One-time gate per account - once Ryan completes it, subsequent trades are unblocked.
- **Connect:** `claude mcp add robinhood-trading --transport http https://agent.robinhood.com/mcp/trading`. Auth is OAuth (no static token); the in-session PKCE round-trip expires fast - approve in-browser and paste the `localhost/callback?code=...` URL back immediately, or it times out ("No OAuth flow is in progress"). Browser auth alone does NOT give the session a token.
- **The tradable account is the dedicated cash account nicknamed "Agentic" (`agentic_allowed: true`); verified 2026-06-13 as ••••4744.** The default margin individual account is `agentic_allowed: false` - read-only to the agent, never traded. Always confirm via `get_accounts` before any order.

## The strategy in one line

Buy **long U.S. equities/ETFs only**, sized small across 3-5 positions, when a qualifying **politician cluster** (multiple members, same stock, tight window, after disqualifying no-signal members), a qualifying **insider cluster** (2+ insiders, open-market non-10b5-1 purchases, same stock, tight window), OR a qualifying **prediction-market divergence** on a recurring macro print (divergence vs. nowcast, expressed via one long ETF) fires. A stock backed by **multiple** signals is the highest-conviction setup. Insider buys are the strongest stock-picking edge; politician signals are weak and used cautiously; Signal C is forward-looking but rare by design.

## Opening procedure (run at first tick of each trading day)

1. **Reset daily tracking:** clear intraday high-water marks, reset circuit breaker flag to OFF.
2. **Circuit breaker check:** compute today's starting portfolio value. If account is already down ≥8% from yesterday's close → set circuit breaker ON (no new buys for the rest of today). Log in daily summary.
3. **Execute pending sells first:** before any scan or buy, sell any positions marked PENDING_SELL in positions-state.md. Day-trade positions that hit their EOD close rule carry over as PENDING_SELL if the prior session ended with the market closed mid-sell.
4. Then proceed to normal tick (position monitoring → signal scan → buys).

## BUY decision process

Two parallel signal paths feed one shared gate. A candidate must pass EVERY shared gate. Detailed scoring, ranking, and the insider pipeline: [references/decision-process.md](references/decision-process.md).

**Path A - Politician clusters** (data: [references/data-sources.md](references/data-sources.md)):
1. **Pull the free feeds in real time** (delegate to a sub-agent): FMP House + Senate latest (primary, updates daily), plus the free **Congress Trading Monitor `trades.json`** (`raw.githubusercontent.com/kadoa-org/congress-trading-monitor/main/public/data/trades.json`) which adds disclosure-lag flags (`is_late`) AND per-trade excess return (`excess_since`) at no cost. Last ~45 days of *disclosure* dates. No paid keys (Unusual Whales / QuiverQuant are paid + JS-rendered - we do NOT scrape or pull them). Record the Kadoa file's max `filing_date`; if stale (>~5 days) or unreachable, fall back to FMP-only and flag it. (Full pull order + reconciliation + free-source rationale: [references/data-sources.md](references/data-sources.md).)
2. **Reconcile feeds** - a ticker present in both FMP and a *fresh* Kadoa feed is a stronger signal; use `excess_since` to confirm the cluster's members aren't all negative-alpha names. Drop options / non-common-stock rows (Hard Rule 3). Investigate disagreements, don't act on them. To ground-truth House freshness (or verify a surprising House cluster), the free official Clerk bulk ZIP is the authority - see [references/data-sources.md](references/data-sources.md). Senate has no free bulk file; rely on FMP/Kadoa there.
3. **Cluster gate** - group by ticker; keep only tickers bought by **2+ different members within ~6 weeks**.
4. **Disqualification filter** - drop every WEAK / no-live-signal / retired / divested member (validated leaderboard: [references/performance-scoring.md](references/performance-scoring.md)). If fewer than 2 qualifying members remain, discard.

**Path B - Insider clusters** (data + filters: [references/insider-signal.md](references/insider-signal.md)):
1. Pull recent insider buys, last ~20 trading days. **On Mondays specifically: extend the OpenInsider pull to capture Saturday and Sunday filings from the prior weekend — these are often missed by agents that only look at the last trading day.** Free flow: **discover code-P clusters on OpenInsider** (`/latest-cluster-buys`, the `Ins` column = cluster size), then **confirm each hit on SEC EDGAR Form 4 XML** - EDGAR is the only source carrying the 10b5-1 flag (`<aff10b5One>`), and it 403s without a `User-Agent` header. FMP/Finnhub are optional per-ticker cross-checks.
2. **Code filter** - keep ONLY open-market purchases (code P); drop sells, grants (A), exercises (M/F), gifts (G).
3. **10b5-1 filter** - drop pre-planned trades; keep only discretionary buys.
4. **Cluster gate** - keep only tickers bought by **2+ different insiders within ~10 trading days**. Discard single-insider tickers.

**Path D - PEAD (Post-Earnings Announcement Drift, added 2026-06-14):**
1. Pull recent earnings results via yfinance `ticker.earnings_dates` for stocks that reported in the last 5 trading days.
2. Compare actual EPS vs estimated EPS. Only proceed if actual beat estimated by ≥10%.
3. Confirm the beat was on REVENUE too (not just EPS manipulation via buybacks) — yfinance `ticker.financials`.
4. Check the stock's price reaction: if it ALREADY gapped up >15% on earnings day, skip (the move is priced in — Hard Rule 10 chase applies). If it moved <10% or pulled back, the drift hasn't started yet — this is the entry window.
5. Entry window: within 5 trading days of the earnings announcement.
6. Shared gate applies: $5+, $2B+ cap, not within 2 days of NEXT earnings, full research layer.
7. PEAD positions hold 60-90 days (longer than cluster trades). Exit on +25% partial / trailing stop / stale >90 days.
8. Log as signal-type: `pead`.

**Path E - Activist investor 13D/G filings (added 2026-06-14):**
1. Pull recent SC 13D filings from EDGAR (last 5 trading days): `https://efts.sec.gov/LATEST/search-index?q=&dateRange=custom&startdt=DATE&forms=SC+13D&hits.hits._source=period_of_report,entity_name,file_num,period_of_report` (User-Agent required).
2. Filter for known high-signal activists only (AUM >$1B, track record): Elliott Management, Starboard Value, Icahn Enterprises, Bill Ackman/Pershing Square, Nelson Peltz/Trian, ValueAct Capital, Jana Partners, Third Point (Dan Loeb). Unknown filers = skip.
3. Verify the 13D on EDGAR: confirm >5% stake, confirm it's a new position (not an amendment to an existing one unless the amendment shows a significant increase).
4. Shared gate applies: $5+, $2B+ cap, not within 2 days of earnings.
5. Activist positions can move fast — prioritize research layer (especially SEC 8-K for any response from the company).
6. Exit: when activist files 13G amendment (passive, stake dropped below 5%) or our standard TP/stop/stale triggers. Log as signal-type: `activist-13d`.

**Path G — Daily Risers / Top Movers (added 2026-06-18):**

This path runs continuously during market hours as a parallel scan alongside Paths A–E. It is entirely intraday — all Path G positions are day-trades and must close by 2:45 PM CDT (15 min before close). Never hold overnight.

**Universe filter (screen first, then rank):**
- Price: $5+ (no ceiling — removed 2026-06-18. The $100 cap, then the $300 cap, both excluded genuine mega-cap catalyst movers (Intel, Micron, Marvell, SanDisk, Western Digital) on a day when small/mid-caps lagged the broader market. Fractional shares make any share price tradeable at the position's dollar sizing, so an upper price limit added no real protection.)
- Market cap: ≥$300M (Path G exception to the general $2B rule — applies ONLY to this path)
- Average daily volume: ≥1M shares
- Current volume: ≥3× the 30-day average volume
- Exchange: NYSE or Nasdaq only. No OTC, no SPACs, no low-float stocks.
- Intraday gain: 5-50% range. Below 5% = not enough momentum. Above 50% = parabolic/halt risk, skip.
- News catalyst required: earnings beat, guidance raise, analyst upgrade, major contract, FDA announcement, or other significant confirmed news, confirmed same-day (not yesterday's news rehashed). No catalyst = skip.

**Rank surviving candidates by weighted score:**
1. % gain on the day (higher = better, but penalize vertical spikes with no pullback)
2. Relative volume vs 30-day average (higher = more conviction)
3. Trend strength (higher highs + higher lows on intraday chart = positive)
4. News quality (earnings/FDA/contract > analyst upgrade > generic bullish article)
5. Institutional interest (large-cap names with institutional ownership score higher)

**Technical entry gates (ALL must be true before buying):**
- Price is above VWAP
- Price is above both the 9 EMA and 20 EMA on the 5-minute chart
- Stock is making higher highs and higher lows (confirmed uptrend)
- Breaking out of a consolidation pattern with increasing volume
- NOT in a vertical spike — wait for a pullback or flat consolidation followed by confirmation of renewed strength before entering
- RSI-14 between 30-65 (not overbought; >70 = avoid entry)
- MACD bullish crossover (MACD line > signal line, and rising — not just crossed, still climbing)
- Price above SMA20 AND SMA50
- Volume spike >1.5x the 3-month average
- No bearish reversal candle at current peak (no shooting star, no doji at the top, no upper wick longer than the candle body)
- Put/call ratio <1.0 if options data available (skip this check if unavailable, don't hard-block)
- Avoid if volume is fading while price still rising (distribution pattern — bulls losing conviction)

**15-minute profitability assessment (run immediately before every Path G buy):**
Ask: "If I buy now, can I sell at a profit when the next 15-min tick fires?" ALL must be true or skip the candidate this tick (reassess next tick, don't permanently disqualify):
(a) Price trending upward with volume >1.5x avg (same as technical gates above)
(b) RSI <70, MACD bullish and still rising
(c) No bearish reversal signal at the current peak
(d) Bid-ask spread tight enough that the expected move covers round-trip cost (spread isn't eating the edge)
(e) Catalyst confirmed same-day, not stale news

**GFV check:** call review_equity_order before every Path G buy to avoid a Good Faith Violation on unsettled cash.

**Timing restrictions:**
- No trades in the first 5 minutes after market open (no entries before 8:35 AM CDT)
- No buying before an earnings report (no pre-earnings gambles — wait for the report to drop first)
- Stop trading Path G for the remainder of the day after 3 consecutive losses on this path
- Stop trading Path G if daily loss from this path hits 2–3% of total account value ($2–$3 on a $100 account)

**Risk management (Path G — overrides general SOP sizing for this path only):**
- Risk per trade: 0.5–1% of account value ($0.50–$1.00 on a $100 account)
- Initial stop: 2–3% below entry price OR below the nearest key support level (whichever is tighter)
- Partial profit: take 50% off at +5% gain, move stop to breakeven on remainder
- **Tighter momentum trailing exit (added 2026-06-18):** once a Path G position peaks at ≥+5% from entry, sell immediately if it pulls back 3 percentage points from that peak. This is tighter than the general SOP trailing rule (5pp pullback from a +10% peak) — Path G always uses the tighter 3pp/+5% version, never the looser one.

**Exit rules (Path G — hard exits, no exceptions):**
- Exits immediately if: stock loses VWAP on heavy volume | momentum indicators deteriorate | catalyst is invalidated or walked back
- Never average down on a losing Path G position
- Never hold a Path G position overnight — if position is still open at 2:45 PM CDT, close it regardless of P&L
- Close all Path G positions at least 15 minutes before market close (2:45 PM CDT hard deadline)

**Path G does NOT go through the shared gate or 8-dimension research layer.** Its own entry gates above replace those checks. It also does not require the $2B market cap (uses $300M instead). All other hard rules still apply (no OTC, no leverage, no crypto, no shorts).

**TRIAL — best-available fallback (2026-06-18, ONE DAY ONLY, re-evaluate after today):** Run the strict Path G gate as normal all day. If zero Path G trades have executed by 1:00 PM CDT, fall back: take the single best-ranked candidate from today's top-movers scan that still passes the hard universe filter (price $5-$100, mktcap ≥$300M, volume floors, 5-50% intraday range, NYSE/Nasdaq, no OTC/SPAC/low-float) — but does NOT need to clear every technical/catalyst gate. Rank fallback candidates by how many of {RSI 30-65, MACD bullish, above VWAP, above 9EMA, above 20EMA, above SMA20, above SMA50, volume spike >1.5x, no bearish reversal candle, has some same-day news} they satisfy, and take the highest scorer. Size at the minimum Path G risk (0.5% of account, not 1%). Tag the trade-log entry "PATH G FALLBACK TRIAL" so today's result is easy to find and review. Do not repeat this fallback past today without explicit re-confirmation.

**Path G is fully autonomous.** Execute qualifying entries and exits immediately without asking for approval. Post-notify after every fill. Do not wait for human confirmation on any Path G trade.

Log as signal-type: `path-g-daily-riser`.

**Path C - Prediction-market divergence** (full pipeline + data sources: [references/prediction-markets.md](references/prediction-markets.md)):
1. Pull implied probabilities for the next CPI / payrolls / FOMC print (Kalshi public API, cross-checked vs. Polymarket; material disagreement between the two = data flag, no trade).
2. Pull independent anchors: Cleveland Fed Inflation Nowcast, FRED consensus/prior series.
3. **Divergence gate** - only a clear, explainable divergence between market-implied pricing and the anchor is a candidate. Agreement = no trade (the default).
4. **Timing gate** - never inside 24h before the print (Hard Rule 20); multi-day regime divergence or post-print mispricing only.
5. Express via ONE long ETF (risk-on: QQQ/XLE; defensive: XLU/GLD). Max one Signal-C position at a time (Hard Rule 21).

**Shared gate (every surviving candidate from either path):**
4b. **Real news catalyst required (added 2026-06-18):** every buy needs a verified signal (politician cluster, insider cluster, activist, or PEAD) PLUS a real news catalyst confirming the thesis (earnings beat, product launch, contract win, regulatory approval, etc.). Signal alone without a confirmable catalyst = skip.
5. **Apply HARD RULES** - drop crypto, sub-$5/$2B, leveraged, OTC. Options now permitted per 2026-06-14 authorization.
5b. **VIX filter** — pull VIX via `yf.Ticker('^VIX').fast_info['last_price']`. If VIX > 30: reduce ALL new position sizes by 50% (high volatility = smaller bets). If VIX > 40: pause ALL new buys entirely — only manage existing positions. Log VIX level in every scan output.
6. **Market hours check** - if today is a U.S. market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, July 4th, Labor Day, Thanksgiving, Christmas), output NO TRADE immediately and stop. No research, no orders.
7. **GFV check** - read GFV counter from sop/gfv-log.md. If GFV count = 2, do NOT buy anything until settled cash is confirmed. If GFV count ≥ 3, STOP and alert Ryan (account may be restricted).
8. **Sector concentration check** - before any buy, count existing positions per GICS sector. If target stock's sector already has 2 open positions, skip it (false diversification / correlation risk).
9. **Sanity-check the stock** - NYSE/Nasdaq, ≥$5, ≥$2B cap, not within 2 days of earnings, not up >15% since the source trade date. (Earnings/chase rules N/A for broad Signal-C ETFs.)
10. **Run the Research Layer** (see below) — cross-verify across 8 dimensions. 3+ converging ❌ = disqualify.
11. **Rank candidates** - multi-signal highest; then insider clusters; then CEO/Chairman exception; then prediction-market divergences; then politician clusters (bipartisan first).
12. **Add-to-winners check** — if the candidate is a stock already held in the portfolio AND the position is currently up <10% AND adding won't breach the 20% per-position cap: add at minimum conviction size. If position is up ≥10% or would breach the cap, skip (no doubling into extended positions).
13. **Conviction-based sizing (dynamic):**
    - Compute base size = 15% of current portfolio value (e.g. $100 portfolio → $15 base). Updated 2026-06-18 from 12%.
    - Multi-signal (2+ independent signals on same stock): 1.25× base
    - Insider cluster or prediction-market divergence: 1.0× base
    - Politician cluster only: 0.85× base
    - CEO/Chairman single-buy exception: 0.75× base (minimum conviction)
    - Hard cap: never exceed 20% of portfolio or $25 per position (whichever is smaller). Never below $7.
    - Options: 60% of the equity size for the same conviction tier.
14. **Profit compounding** — when a position sells (TP, stop, or theta exit), log the freed cash amount in the output and flag it as available for the next qualifying signal. Do not let it sit silently — note it explicitly so the next scan prioritizes deploying it.
15. **Log disqualified candidates** in sop/failed-signals-log.md: DATE | TICKER | SIGNAL-TYPE | DISQUALIFY REASON (which gate failed). This builds a tuning record over time.
16. **Rotation rule (added 2026-06-16)** — if the portfolio is at the 8-position limit AND a new signal clears all gates (Phase 1 + Phase 2 research), evaluate held profitable positions for ceiling indicators. If one qualifies, sell it to fund the new entry. Ceiling indicators (need 2+ to qualify for rotation):
    - RSI-14 > 70 (overbought on 90-day chart)
    - Price flat or declining 5+ consecutive trading days while position still profitable
    - Price at or above analyst mean price target
    - Partial profit already taken (post-+20% sell) AND remaining 50% showing no upward momentum for 5+ days
    - Never rotate out of a position that is still trending (higher highs, price above 20 SMA). Only rotate out of stalling profitable positions.
    - If no held position shows 2+ ceiling indicators, do NOT rotate — skip the new signal instead. Protecting existing momentum beats forcing a trade.

If nothing clears either path, output **no trade**.

## Warm watchlist (added 2026-06-14)

Track stocks where exactly 1 insider has bought (code P, non-10b5-1, EDGAR-confirmed) but the cluster gate hasn't fired yet. Store in sop/warm-watchlist.md with: ticker, insider name/role, transaction date, amount, EDGAR accession. On each daily scan, re-check every warm watchlist entry against fresh OpenInsider data — if a 2nd qualifying insider appears within the 20-day window, escalate immediately to Phase 2 research. Remove entries older than 20 trading days (window expired). This lets the agent act same-day when a cluster forms rather than waiting for the next morning scan.

## Options theta protection (added 2026-06-14)

In addition to the +50%/-50% exit rules, close ANY open option position when it has **fewer than 14 days to expiry**, regardless of P&L. Theta decay accelerates sharply in the final 2 weeks — holding through expiry on a losing position burns the remaining premium for nothing. Check DTE on every open option position in Phase 1 sell-trigger evaluation.

## Research layer (added 2026-06-14)

Runs for EVERY verified cluster candidate BEFORE any order. Research is a filter and conviction enhancer — it cannot originate a trade (cluster gate still required). It CAN disqualify a candidate (3+ converging ❌) or raise conviction (3+ converging ✅).

**Cross-verification principle:** one bad metric = note it. Two = flag it. Three or more independent sources converging on the same bearish (or bullish) verdict = act on that convergence. Agreement across sources is the signal.

### Pull order (all free)

**1. Fundamentals — yfinance**
`pip install yfinance` then `ticker = yf.Ticker(symbol)`.
- `ticker.info`: trailingPE, forwardPE, revenueGrowth, profitMargins, debtToEquity, currentRatio, returnOnEquity, marketCap, sector, industry
- `ticker.financials`: revenue trend last 4 quarters
- `ticker.balance_sheet`: totalDebt, cash
- `ticker.cashflow`: freeCashflow
❌ flags: P/E > 50, debt/equity > 2, negative FCF 3+ consecutive quarters, revenue shrinking YoY.

**2. Technical analysis — yfinance + get_equity_historicals**
Pull 90 days daily OHLCV via `ticker.history(period='90d')` or Robinhood MCP `get_equity_historicals`.
Compute:
- RSI (14-day): >70 = overbought ❌, <30 = oversold ✅
- 20-day and 50-day SMA: price above both ✅, below both ❌
- Volume trend: cluster happening on rising volume ✅, falling volume ❌
- 52-week position: bottom 20% = potential value ✅, top 20% = extended ❌
Cross-check: if RSI AND moving averages AND volume all agree → strong signal.

**3. Analyst ratings + price targets — yfinance**
- `ticker.recommendations_summary`: Buy/Hold/Sell counts
- `ticker.analyst_price_targets`: mean target, current price vs mean upside %
✅ Strong Buy consensus + price below mean target. ❌ Sell/Strong Sell majority OR price already above mean target.

**4. Earnings calendar — yfinance + Nasdaq API**
- `ticker.earnings_dates`: confirmed next date
- Cross-check: `https://api.nasdaq.com/api/calendar/earnings?date=YYYY-MM-DD` for next 14 days
- Hard block: within 2 trading days (Hard Rule 9). Extended flag: within 14 days = earnings risk, note in proposal.
- `ticker.eps_trend`: estimates rising ✅, falling ❌. Positive surprise history ✅.

**5. Options-specific — yfinance options chain** *(options entries only)*
- `ticker.options`: list available expiries; pick nearest 30-60 DTE
- `ticker.option_chain(expiry)`: pull IV, delta, theta, open interest, volume for ATM and 1-strike OTM calls
- IV rank: `(current_IV - iv_52wk_low) / (iv_52wk_high - iv_52wk_low)` — compute from last 52w of weekly options data
  - IV rank < 30% ✅ (cheap premium, good time to buy calls)
  - IV rank > 70% ❌ (expensive premium, mean reversion risk — skip calls, consider equity instead)
- Open interest > 500 on target strike ✅, < 100 ❌ (illiquid, wide spread risk)
- Volume > 100 on target strike today ✅

**6. Sector / peer comparison — yfinance**
- Pull sector ETF (XLF=financials, XLV=health, XLE=energy, XLK=tech, XLI=industrials, XLRE=REITs, etc.) YTD return
- Compare stock YTD vs sector ETF: lagging sector ✅ (room to run), already far ahead of sector ❌ (extended)
- Pull 3-5 sector peers via `ticker.info['industry']`; compare P/E and revenue growth

**7. SEC 8-K filings — EDGAR full-text search** *(no key, User-Agent required)*
`https://efts.sec.gov/LATEST/search-index?q=%22TICKER%22&dateRange=custom&startdt=30-DAYS-AGO&forms=8-K`
❌ Hard disqualifiers: going concern opinion, financial restatement, SEC investigation, CFO/CEO sudden departure, material adverse change. One of these = DISQUALIFY regardless of other scores.

**8. FRED macro context — FRED API** *(free key, pull once per session)*
Register free at fred.stlouisfed.org. Store key as `FRED_API_KEY` in `.env`.
- `FEDFUNDS`: current fed funds rate — rising ❌ for growth stocks
- `T10Y2Y`: 10Y-2Y yield spread — negative (inverted) ❌ = recession signal
- `UNRATE`: unemployment — rising ❌ = macro headwind
Macro context applies to all candidates in the session, not per-ticker.

### Scoring and decision rule

After all 8 dimensions, tally per candidate:

| ❌ count | Action |
|---|---|
| 0–1 | Proceed — note flags in proposal |
| 2 | Elevated caution — minimum size ($15 equity / $10 options), flag in proposal |
| 3+ converging | **DISQUALIFY** — log reason, skip to next candidate |
| 3+ ✅ converging | High conviction — note in proposal (do NOT exceed SOP size limits) |

Any single ❌ from dimension 7 (adverse 8-K) = immediate disqualify, skip scoring.

### Research does not replace the cluster gate

Research runs AFTER a candidate clears the cluster gate. Bullish fundamentals + good technicals + analyst upgrades = still NO TRADE without a verified cluster underneath. Research filters and sizes; the cluster originates.

## SELL decision process

### NEW SOP exit rules (2026-06-18, replaces prior EOD close rule)

**These rules govern the current open positions and future entries:**

- **DRAM and FPS:** hold as multi-day positions. Do NOT sell at end of day. Do NOT sell unless a stop is triggered. These are exempt from the EOD close rule.
- **FCN / RYAN / ADC (and any future day-trade entry):** hold until the position returns to profit (regular-session price > cost basis), then sell. Do NOT force-close at EOD at a loss — hold across nights until profitable.
- **Circuit breaker:** if portfolio drops -8% in a single trading day → no new buys for the remainder of that day.
- **IBP (Instantly Buying Power):** counts as spendable cash for buys. Robinhood provides it immediately when a deposit is placed, before the transfer clears.
- **Position size base:** 15% of portfolio (updated from 12%). Hard cap unchanged at 20%.

### Standard exit triggers (apply to all positions)

Sell when ANY is true (detail in [references/decision-process.md](references/decision-process.md)):

- **Partial profit at +20%:** when position is up ≥20%, sell HALF the position immediately. Log in sop/positions-state.md (partial_taken=yes). Let remaining half run with trailing stop. Do NOT sell the full position at +20%.
- **Full take profit at +50%:** remaining half up ≥50% from cost → sell full. (Options: full exit at +50% as before.)
- **Trailing stop (updated 2026-06-18):** track high_water_mark per position in sop/positions-state.md. Until position is up ≥10% from cost, use standard -15% stop from cost. Once position hits +10%, switch to trailing: if price pulls back **5+ points from the peak (high_water_mark)** → SELL ALL immediately. Update high_water_mark each tick when current price > stored value. Never move the stop DOWN.
- **Politician signal reversal:** the politician/cluster that triggered a Path-A buy is now disclosed selling it.
- **Thesis broke:** the reason to own it no longer holds.
- **Stale:** held >90 days with no progress and no fresh supporting signal.
- **Signal-C resolution:** the macro print the position was based on has occurred (re-evaluate same day, close unless a fresh post-print divergence exists), the divergence closed before the print, or the next occurrence of the same print arrives (max hold). Detail in [references/prediction-markets.md](references/prediction-markets.md).
- **Options theta exit:** any option position with <14 DTE → close immediately regardless of P&L. Theta decay in final 2 weeks destroys remaining value on losers.

**Insider SELLS are NOT a sell trigger.** Research is clear that insider selling is noise (taxes, diversification, planned 10b5-1) and does not predict downside. Do not exit a position just because an insider sold. Only the rules above trigger sells.

Never sell on a scary headline or a red day alone.

## Operating discipline (lessons from the vibe-trading post-mortem)

Adopted 2026-06-10 from zonted.com/posts/vibe-trading (a 5-day, ~$16k, 310-strategy live AI-trading experiment). Their honest result after costs: nothing beat buy-and-hold QQQ, and the live account lost money. The survivable lessons:

1. **AI for research, deterministic code for execution.** Never let the agent free-form its way into an order from prose. Every trade goes through the structured proposal → approval → MCP order path; no improvised execution logic.
2. **Benchmark honestly.** The portfolio's standing comparison is **buy-and-hold QQQ** (and SPY). If after 6+ months the strategy trails QQQ-and-do-nothing, say so plainly in reviews - don't dress up activity as progress.
3. **Settlement trap (Good-Faith Violations).** The Agentic account is a CASH account. Buying with unsettled funds and selling before settlement = GFV; three GFVs = 90-day lockout. Track settled vs. unsettled cash before any buy; when in doubt, wait a day. Low trade frequency is a feature.
4. **False diversification check.** Before adding any position, ask: is this actually the same bet as an existing holding (same sector, same macro driver)? Six positions with 0.95 correlation are one bet. This is why Hard Rule 21 caps Signal C at one position.
5. **No look-ahead / phantom data.** Any signal must use data that was publicly available at decision time. For backtests or "this would have worked" claims: state the data timestamp, and treat any too-good result as a bug until independently re-derived.
6. **Adversarial verification on big claims.** Before changing strategy based on a backtest or a performance claim (ours or anyone's), have a second pass/sub-agent try to refute it: check benchmarks, costs (assume ≥3-5bp per side), sample size, and data feed. "The best of 250 garbage strategies looks like genius."
7. **Pre-register rules, then don't drift.** This SOP is the frozen spec. Mid-session rule-bending because a trade "looks good" is exactly how the experiment's losers were built. Rule changes happen via Ryan, in writing, in this file.

## Approval workflow — PHASE 3 ACTIVE (fully autonomous)

**Status as of 2026-06-18: Phase 3 autonomous is active across ALL signal paths including Path G.** Execute all qualifying trades (buys, sells, stops, partial profits, EOD closes) without asking for approval. Post-notify after every fill. Fall back to asking only on genuine edge cases not covered by this SOP.

- **Phase 1 - Approval required** (historic, no longer active): present every proposal and wait for explicit approval.
- **Phase 2 - Learn** (historic): log every decision; adjust to revealed preferences.
- **Phase 3 - Autonomous** (CURRENT): execute verified trades immediately, post-notify, keep logging, ask only when genuinely stuck or a hard rule is unclear.

**Kill switch:** Ryan can disconnect the agent in the Robinhood app instantly, or say "pause" / "approval mode" to force Phase 1.

Proposal format and worked examples (real, dated trades): [references/approval-examples.md](references/approval-examples.md).

## Logging (required every trade)

Append one line per decision:
`DATE | ACTION (buy/sell/skip) | TICKER | $AMOUNT | SIGNAL-TYPE (politician / insider / prediction-market / multi) | SIGNAL DETAIL (members + perf buckets + brackets, insider names + roles + code P + dates, or print + implied prob + anchor + divergence) | THESIS | RYAN'S ANSWER (+reason) | PHASE`

Record the signal type and full detail so every screen is auditable. This log powers Phase 2 learning and the Phase 3 graduation check.

**Signal-C calibration log (additional):** for EVERY tracked macro print - traded or not - log the prediction-market implied probability, the anchor value, and the actual outcome. The recurring-game edge only exists if we score our calibration over time (see prediction-markets.md).

## Stop and ask Ryan no matter what

- Portfolio down >20% overall from the $100 start.
- Any trade would breach a Hard Rule.
- Data source returns something ambiguous, missing, or surprising.
- Signal points to a brand-new sector or a position near the 35% cap.
- Anything that doesn't clearly fit this SOP.

**Cash is a position. Discipline over excitement.**
