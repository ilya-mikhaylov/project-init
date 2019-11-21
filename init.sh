echo '// ProjectInit ver. 0.5 //'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore and .eslintrc.js in your project folder.'
echo ''
read -p 'Create Jasmine tests? Y/N...' -n 1 -r
echo 'Jasmine tests will be also created.'
# if [ $REPLY =- ^[Yy]$ ]
# then
# wget html
# wget /spec
# wget /lib
# fi

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
# //rm file.sh
# /---
# wget -O https://...