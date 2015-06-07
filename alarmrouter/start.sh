cd /tmp

# try to remove the repo if it already exists

rm -rf MessageRouter; true

git clone https://github.com/jensoleg/MessageRouter.git

cd ./MessageRouter

npm install --unsafe-perm --production

if [ -z "$APP" ]; then
    export APP=app.js
fi

pm2 start -x $APP --no-daemon