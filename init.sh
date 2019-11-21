echo '// ProjectInit ver. 0.9 //'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore and .eslintrc.js in your project folder.'
echo ''
read -p 'Create Jasmine tests? Y/N...' -n 1 -r
echo 'Jasmine tests will be also created.'
# if [ $REPLY =- ^[Yy]$ ]
# then
wget https://drive.google.com/$typettps://drive.google.com/open?id=1zBEmUFWrZ-GpMRKd7LxYc7-AEnaALap
# wget https://drive.google.com/open?id=1GyepAUi_fV0g-xwrzaYeQyIhoxWY4Moa
# wget https://drive.google.com/open?id=10GQpJkOsnZDnTzRXz7QH6PeZCsay8HDS
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