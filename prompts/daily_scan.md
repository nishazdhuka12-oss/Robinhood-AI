Use the `ai-trading-agent-sop` skill.

Run an approval-only trading-agent scan for the dedicated Robinhood Agentic account.

Hard constraints for this automated run:
- Do not place trades.
- Do not call any `place_*`, `cancel_*`, `add_*`, `remove_*`, `follow_*`, `unfollow_*`, `update_*`, or `create_*` tool.
- Read-only MCP calls are allowed.
- If OAuth or MCP access fails, stop and report the failure.
- If a data source is stale, unavailable, ambiguous, or surprising, stop and ask for review.
- If nothing clears the SOP gates, output `NO TRADE` with the reason.

Workflow:
1. Confirm the Robinhood MCP works with `get_accounts`.
2. Identify the dedicated Agentic account by `agentic_allowed=true` and nickname `Agentic` when present.
3. Read portfolio value, buying power, open equity positions, and open option positions if any.
4. Evaluate current holdings for SOP sell triggers:
   - profit >= 25%
   - loss <= -15%
   - stale > 90 days if purchase date is available
   - thesis break only if evidence is explicit
5. Evaluate buy signals:
   - politician clusters per SOP
   - insider clusters per SOP
   - prediction-market divergence per SOP
6. Apply every hard rule and shared gate.
7. Produce one of:
   - a proposal ending exactly with `Approve, reject, or modify?`
   - `NO TRADE` plus concise reasons

Output format:
- Date/time of scan
- MCP/account status
- Portfolio snapshot
- Signal checks
- Proposal or `NO TRADE`
- Any required human follow-up

