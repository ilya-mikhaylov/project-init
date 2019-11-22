echo '// ProjectInit ver. 0.9 //'
echo 'https://github.com/ilya-mikhaylov/project-init'
echo ''
echo 'This script will download ESLint Airbnb config, create .gitignore and .eslintrc.js in your project folder.'
echo ''

# 'read' lets user to set the value of '$prompt' variable.

read -p 'It also can create an empty Jasmine tests. Should we need them? <Y/N>' prompt

# Condition that checks value of '$prompt' variable.

if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" ]]
then
echo 'Good! Jasmine tests will be also created.'
wget https://github.com/ilya-mikhaylov/project-init/raw/master/tests.tar -O - | tar -x
else
echo 'OK, continuing without tests.'
fi

npm init -yes
npm install eslint eslint-config-airbnb-base eslint-plugin-import -D

# '>>' option of 'cat' adds fragment between two EOFs to the end to .gitignore. Creates new one, if it doesn't exist.

cat >> .gitignore << EOF
*.log
.vscode
.idea
.eslintrc.js
node_modules
lib
YourSpecRunner.html
spec
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
