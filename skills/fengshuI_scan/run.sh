#!/bin/bash
# FengShui Villa Scan — Live Backend Skill
# Usage: bash run.sh <name> <email> <market> <budget> <location> <style> <element> <qi> <green>

NAME="${1:-Anonymous}"
EMAIL="${2:-}"
MARKET="${3:-Dubai}"
BUDGET="${4:-2M AED}"
LOCATION="${5:-Dubai Hills}"
STYLE="${6:-Solar Courtyard Villa}"
ELEMENT="${7:-Water}"
QI="${8:-88}"
GREEN="${9:-85}"

ENDPOINT="https://badman-ac9488e4.base44.app/functions/saveFengShuiScan"

PAYLOAD=$(cat <<EOF
{
  "client_name": "$NAME",
  "client_email": "$EMAIL",
  "market": "$MARKET",
  "budget": "$BUDGET",
  "location": "$LOCATION",
  "villa_style": "$STYLE",
  "element": "$ELEMENT",
  "qi_score": $QI,
  "green_score": $GREEN,
  "scan_output": "Automated scan via Badman skill — $MARKET villa"
}
EOF
)

echo "🈵 Submitting FengShui scan for $NAME ($MARKET)..."
RESULT=$(curl -s -X POST "$ENDPOINT" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD")

echo "$RESULT" | python3 -c "
import json, sys
d = json.load(sys.stdin)
if d.get('success'):
    print('✅ Scan validated!')
    print('Scan ID:', d.get('scan_id'))
    print('Qi Score:', d.get('qi_score'))
    print('Green Score:', d.get('green_score'))
    print('Base TX:', d.get('base_tx_hash','?')[:20] + '...')
    print('Explorer:', d.get('base_explorer'))
    print('Payout Route:', d.get('payout_route'))
    print('Lead Captured:', d.get('lead_captured'))
else:
    print('❌ Error:', d.get('error'))
" 2>/dev/null || echo "$RESULT"
