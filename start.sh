if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tahimpro/Earningrepo.git /Earningrepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Earningrepo
fi
cd /TOM-BOT
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
