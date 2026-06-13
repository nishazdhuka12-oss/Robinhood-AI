# Robinhood AI Trading Agent

Approval-first automation scaffold for the `ai-trading-agent-sop` Codex skill and the `robinhood-trading` MCP server.

## Current Mode

- Phase: `approval_required`
- Account: dedicated Robinhood account nicknamed `Agentic`
- Allowed automation: research, read-only account checks, proposal generation, decision logging
- Forbidden automation: placing trades, cancelling orders, watchlist writes, disabling review gates

## Daily Flow

1. Run a read-only scan.
2. Generate a proposal or explicit `no trade`.
3. Ask for approval before any order review or placement.
4. Log the decision.

Use:

```sh
./scripts/run_daily_scan.sh
```

The script runs Codex with the prompt in `prompts/daily_scan.md`. It expects the `ai-trading-agent-sop` skill and `robinhood-trading` MCP server to be available in the Codex session.

## Scheduling

A launchd template is included at `launchd/com.user.ai-trading-agent.scan.plist`.

Install it manually only after reviewing the schedule:

```sh
cp launchd/com.user.ai-trading-agent.scan.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.user.ai-trading-agent.scan.plist
```

The schedule is set to weekday mornings. Logs go to `logs/`.

## Safety

The automation prompt explicitly forbids order placement. Even if a candidate clears all gates, it must stop at:

`Approve, reject, or modify?`

## Current Limitation

`codex exec` currently auto-cancels Robinhood MCP calls in non-interactive mode, so the scheduled scan may stop at the account check with `NO TRADE`. The same MCP calls work in an interactive Codex session. Until read-only MCP calls can be allowed non-interactively, use this scaffold as assisted automation: run the scan prompt from an interactive session or keep scheduled runs as fail-closed health checks.
