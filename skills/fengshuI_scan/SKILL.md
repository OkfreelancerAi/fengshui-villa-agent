# FengShui Villa Agent — Lead Capture & Promo Skill

**Owner:** @okfreelancer  
**Status:** Live  
**Endpoint:** https://badman-ac9488e4.base44.app/functions/saveFengShuiScan

## Wat het doet

Stuurt een villa scan naar de Badman backend:
1. Genereert unieke Base Chain tx hash
2. Slaat scan op in FengShuiVillaScan database
3. Slaat lead op in AgentRentalLead database
4. Geeft scan_id, base_explorer link en payout_route terug

## Gebruik

```bash
bash run.sh "Karim" "karimourkia5@gmail.com" "Dubai" "2.5M AED" "Dubai Hills" "Solar Courtyard Villa" "Water" 91 88
```

## Output

- scan_id
- base_tx_hash
- base_explorer (Basescan URL)
- payout_route: @okfreelancer | Base/USDC
