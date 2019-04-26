Create a new Workspace/Clone our GitHub on Cloud9. Set it as a blank layout. Name it anything you like.

Type the following commands IN THIS ORDER. Some will be quick, some will be slow.

1. curl -fsSL https://raw.githubusercontent.com/saasbook/courseware/master/vm-setup/configure-cloud9-1.1.4.sh | sudo bash --login && rvm use 2.4.0 --default
2. gem install rails -v 4.2.10
3. git clone https://github.com/bluesquadit484/Cultural_Contribution_App.git
4. cd Cultural_Contribution_App
5. cd appculturalcontribution
6. bundle install
7. rails s -p $PORT -b $IP

Then you can open your localhost and you'll see a warning (click OK) and you will reach our home page.

To push to git:

git commit -a -m "YOUR MESSAGE ABOUT WHAT HAS CHANGED"

git push

To pull from git:

git pull origin master

git push -u origin master
