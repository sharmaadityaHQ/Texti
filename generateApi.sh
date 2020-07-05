echo "God is processing your request..."
output=$(node readText.js)
echo "Your API is being generated..."
cd app/
npm run strapi -- generate:api $output
npm run develop