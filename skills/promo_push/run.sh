#!/bin/bash
# Promo Push Skill — FengShui Villa Agent
# Usage: bash run.sh [all|dubai|benelux|monaco]

MARKET="${1:-all}"
SITE="https://agnetrental.vercel.app"

echo ""
echo "🈵 FENGSHUI VILLA AGENT — PROMO PUSH"
echo "======================================"
echo ""

if [[ "$MARKET" == "all" || "$MARKET" == "benelux" ]]; then
echo "🇧🇪 NEDERLANDS (Benelux markt)"
echo "-------------------------------"
cat << 'NL'
🈵 Jouw droomvilla. Gevalideerd op de blockchain.

De eerste AI die luxe villa's scant met Feng Shui principes én Base Chain validatie.

✅ Qi Score + Green Score
✅ Unieke tx hash op Base
✅ NFT Blueprint klaar
✅ 30 seconden. Gratis.

🏡 Markten: Dubai · Las Vegas · Monaco · Singapore · Marbella

👉 LINK_HIER

Powered by Badman AI · @okfreelancer
#FengShui #AI #Base #Blockchain #Vastgoed
NL
echo ""
fi

if [[ "$MARKET" == "all" || "$MARKET" == "dubai" ]]; then
echo "🇬🇧 ENGLISH (Dubai / Monaco / Las Vegas)"
echo "-----------------------------------------"
cat << 'EN'
🈵 Your dream villa. Validated on the blockchain.

The first AI that scans luxury villas using Feng Shui principles + Base Chain validation.

✅ Qi Score + Green Score
✅ Unique tx hash on Base
✅ NFT Blueprint ready
✅ 30 seconds. Free.

🏡 Markets: Dubai · Las Vegas · Monaco · Singapore · Marbella

👉 LINK_HIER

Powered by Badman AI · @okfreelancer
#FengShui #AI #Base #LuxuryRealEstate #Dubai
EN
echo ""

echo "🇨🇳 中文 (Dubai / Singapore 华人市场)"
echo "--------------------------------------"
cat << 'ZH'
🈵 您的梦想别墅，已在区块链上验证。

首个结合风水原理与Base链验证的AI平台。

✅ 气场评分 + 绿色指数
✅ Base链唯一哈希值
✅ NFT蓝图就绪
✅ 30秒完成，完全免费

🏡 市场：迪拜 · 拉斯维加斯 · 摩纳哥 · 新加坡 · 马贝拉

👉 LINK_HIER

由Badman AI驱动 · @okfreelancer
#风水 #AI #区块链 #迪拜 #豪华房产
ZH
echo ""
fi

echo "======================================"
echo "📍 Site: $SITE"
echo "📊 Backend: https://badman-ac9488e4.base44.app/functions/saveFengShuiScan"
echo "💰 Earner: @okfreelancer (enige — altijd)"
echo ""
echo "✅ Vervang LINK_HIER door: $SITE"
echo "✅ Post op: Twitter/X · LinkedIn · TikTok · WeChat"
echo ""
