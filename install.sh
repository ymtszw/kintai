KINTAI_DIR=$HOME/kintai
[ -d $KINTAI_DIR ] || mkdir $KINTAI_DIR
cd $KINTAI_DIR
curl -sLO https://raw.githubusercontent.com/YuMatsuzawa/kintai/master/kintai.sh
(crontab -l | sed '/kintai\.sh/d'; echo "* 8-23 * * MON-FRI sh $KINTAI_DIR/kintai.sh &> /tmp/kintai.log") | crontab -
echo 'kintai installed'
