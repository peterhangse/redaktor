#!/bin/bash

# Smoke test script for REDAKTÖR website URLs
# Tests that all folder-based clean URLs work correctly

echo "==================== REDAKTÖR URL Smoke Test ===================="
echo ""

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Base URL (change this to test production site)
BASE_URL="${1:-http://localhost:8000}"

echo "Testing URLs at: $BASE_URL"
echo ""

# Array of URLs to test
declare -a urls=(
    "/om-oss/"
    "/nyheter/"
    "/kontakt/"
    "/projekt/"
    "/artikel-1/"
    "/artikel-2/"
    "/artikel-3/"
    "/artikel-4/"
    "/biljetter/"
    "/guldspaden/"
    "/kurs/"
    "/stipendier/"
)

# Check if we're testing a local server
if [[ $BASE_URL == http://localhost:* ]]; then
    echo -e "${YELLOW}Note: Testing against local server. Start with:${NC}"
    echo -e "${YELLOW}  python3 -m http.server 8000${NC}"
    echo ""
fi

# Counter for results
passed=0
failed=0

# Test each URL
for url in "${urls[@]}"; do
    full_url="${BASE_URL}${url}"
    status_code=$(curl -s -o /dev/null -w "%{http_code}" "$full_url" 2>/dev/null)
    
    if [ "$status_code" = "200" ]; then
        echo -e "${GREEN}✓${NC} $url - OK (200)"
        ((passed++))
    elif [ "$status_code" = "000" ]; then
        echo -e "${RED}✗${NC} $url - FAILED (Could not connect)"
        ((failed++))
    else
        echo -e "${RED}✗${NC} $url - FAILED ($status_code)"
        ((failed++))
    fi
done

echo ""
echo "==================== Test Summary ===================="
echo -e "Passed: ${GREEN}$passed${NC}"
echo -e "Failed: ${RED}$failed${NC}"
echo ""

if [ $failed -eq 0 ]; then
    echo -e "${GREEN}All tests passed!${NC}"
    exit 0
else
    echo -e "${RED}Some tests failed. Please check the URLs above.${NC}"
    exit 1
fi
