echo "God is processing your request..."
sleep 3
output=$(node readText.js)
echo "Your API is being generated..."
sleep 3
cd app/
npm run strapi -- generate:api $output
npm run develop