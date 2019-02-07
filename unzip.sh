flare ()
{
  # Set Variables
  DATE=`date +'%m-%d'`
  FILENAME=$2-${DATE}

  if [[ $1 =~ \.zip$ ]]; then
    # Unzip the File
    unzip $1 -d ~/.flare/;

    if [ -z "$2"]; then
      FILENAME='flare-file'
    fi

    # Remove Unzipped File
    rm -rf *.zip;

    # Change Directory into ~/.flare and clear history
    cd ~/.flare; c; rmf;

    # Change the file name
    mv */ $FILENAME;

    # Change Directory into the file and view status.log
    cd $FILENAME;

    # run vim
    vim status.log -c # 'vs logs/agent.log'
  else
    a; echo "There are no flares to unzip.. Please try again"
  fi
}
