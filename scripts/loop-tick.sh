#!/bin/bash
# Trading loop tick — runs every 15 minutes via system crontab
# Survives Claude Code session resets

export PATH="/Users/nishazdhuka/.local/bin:/usr/local/bin:/usr/bin:/bin"
LOGFILE="/Users/nishazdhuka/Robinhood AI/logs/loop.log"
PROMPT_FILE="/Users/nishazdhuka/Robinhood AI/scripts/options-bot-prompt.txt"

echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> "$LOGFILE"

claude -p "$(cat "$PROMPT_FILE")" \
  --allowedTools "Bash,Read,Write,Edit,WebFetch,WebSearch,\
mcp__robinhood-trading__get_portfolio,\
mcp__robinhood-trading__get_option_positions,\
mcp__robinhood-trading__get_option_orders,\
mcp__robinhood-trading__get_option_chains,\
mcp__robinhood-trading__get_option_instruments,\
mcp__robinhood-trading__get_option_quotes,\
mcp__robinhood-trading__get_option_historicals,\
mcp__robinhood-trading__review_option_order,\
mcp__robinhood-trading__place_option_order,\
mcp__robinhood-trading__cancel_option_order,\
mcp__robinhood-trading__get_equity_quotes,\
mcp__robinhood-trading__get_equity_fundamentals,\
mcp__robinhood-trading__get_equity_historicals,\
mcp__robinhood-trading__get_earnings_calendar,\
mcp__robinhood-trading__get_earnings_results,\
mcp__robinhood-trading__get_index_quotes,\
mcp__robinhood-trading__get_popular_watchlists,\
mcp__robinhood-trading__get_watchlist_items,\
mcp__robinhood-trading__get_watchlists,\
mcp__robinhood-trading__search" \
  2>&1 | tee -a "$LOGFILE"
