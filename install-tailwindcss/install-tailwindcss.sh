#!/bin/sh

npm install tailwindcss@npm:@tailwindcss/postcss7-compat @tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9 @craco/craco

sed -i 's/react-scripts start/craco start/' package.json
sed -i 's/react-scripts build/craco build/' package.json
sed -i 's/react-scripts test/craco test/' package.json

cp ~/.Scripts/install-tailwindcss/craco.config.js .
npx tailwindcss init
cp ~/.Scripts/install-tailwindcss/tailwind.config.js .
echo '@tailwind base;' >> src/index.css
echo '@tailwind components;' >> src/index.css
echo '@tailwind utilities;' >> src/index.css
