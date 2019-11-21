echo '// ProjectInit ver. 0.9 //'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore and .eslintrc.js in your project folder.'
echo ''
read -p 'Create Jasmine tests? Y/N...' prompt
echo 'Jasmine tests will be also created.'
if [[ $prompt == "y" || $prompt == "Y"  ]]
then
wget https://github.com/ilya-mikhaylov/project-init/raw/master/tests.tar -O - | tar -x
fi

npm init -yes
npm install eslint eslint-config-airbnb-base eslint-plugin-import -D

cat >> .gitignore << EOF
*.log
.vscode
.idea
.eslintrc.js
/node-modules
EOF

cat >> .eslintrc.js << EOF
module.exports = {
    "extends": "airbnb-base",
    "env": {
        "browser": true
    }
}
EOF

echo 'All done.'