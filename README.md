Create a blank Cloud9 workspace. At the shell prompt in the workspace (the $ prompt), paste the following line and hit enter:

curl -fsSL https://raw.githubusercontent.com/saasbook/courseware/master/vm-setup/configure-cloud9-1.1.4.sh | sudo bash --login && rvm use 2.4.0 --default

Once that completes printing out a bunch of text (which should be mostly green), at the next shell prompt paste and enter this:

gem install rails -v 4.2.10

git clone https://github.com/bluesquadit484/Cultural_Contribution_App.git

bundle install

bundle exec rake db:migrate

cd appculturalcontribution

Now you can run the server with this command:

rails s -p $PORT -b $IP


Welcome to our home page!
