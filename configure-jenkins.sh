# ensure Yum has the latest packages
sudo yum -y update

# install Git
sudo yum -y install git

# install Java
sudo yum install java-1.8.0-openjdk.x86_64

# install Jenkins LTS
sudo wget -0 /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins-ci.org.key
sudo yum install jenkins

sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service

# Options to pass to java when running Jenkins.
JENKINS_JAVA_OPTIONS="-Djava.awt.headless=true -Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Los_Angeles -Djenkins.security.FrameOptionsPageDecorator.enabled=false -Djenkins.install.runSetupWizard=false"
