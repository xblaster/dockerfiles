# Constants
HOME=/home/condauser

# Download Anaconda
Anaconda3=http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh
if [ ! -f /tmp/Anaconda.sh ];
then
	# Normal build will download Anaconda directly to user's directory
	wget $Anaconda3 -O $HOME/Anaconda.sh
else
	# If you predownload anaconda, or for testing the build it should be in /src, named Anaconda.sh
	cp /tmp/Anaconda.sh $HOME/Anaconda.sh
fi

chown condauser:condauser $HOME/Anaconda.sh
