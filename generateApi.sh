echo "God is processing your request..."
sleep 5
output=$(node readText.js)
echo "Your API is being generated..."
sleep 5
cd app/
npm run strapi -- generate:api $output
npm run develop
firefox http://localhost:1337/documentation/v1.0.0#/