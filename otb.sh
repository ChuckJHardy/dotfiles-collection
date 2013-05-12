function otb {
  if [[ $# > 0 ]]
  then
    if [[ $# = 1 ]]
    then
      otb_move $1
    else
      if [[ $# = 2 ]]
      then
        # Tail Dev Logs
        # E.g. otb www tail
        if [[ $2 = "tail" ]]
        then
          otb_tail $1 development
        fi

        # Tail Dev Logs
        # E.g. otb www tail
        if [[ $2 = "console" ]]
        then
          otb_console $1 development
        fi

        # Unicorns
        # E.g. 
        # otb admin start
        # otb admin stop
        # otb admin restart
        if [[ $2 = "start" ]]
        then
          otb_unicorn $1 $2
        fi
        if [[ $2 = "stop" ]]
        then
          otb_unicorn $1 $2
        fi
        if [[ $2 = "restart" ]]
        then
          otb_unicorn $1 $2
        fi
      else
        if [[ $# = 3 ]]
        then
          # Start Queues!
          # E.g. otb middleware queue development_order
          if [[ $2 = "queue" ]]
          then
            otb_queue $1 $3
          fi

          # Tail Logfiles
          # E.g. otb www.tail development
          if [[ $2 = "tail" ]]
          then
            otb_tail $1 $3
          fi

          # Start Console
          # E.g. otb www console production
          if [[ $2 = "console" ]]
          then
            otb_console $1 $3
          fi
        fi
      fi
    fi
  else
    cd "$OnTheBeach"
  fi
}

function otb_move {
  if [[ -d "$OnTheBeach/otb_$1_app/current" ]]
  then
    cd "$OnTheBeach"/otb_"$1"_app/current
  else
    if [[ -d "$OnTheBeach/otb_$1_gem" ]]
    then
      cd "$OnTheBeach"/otb_"$1"_gem
    else
      echo "Not a valid project!"
    fi
  fi
}

function otb_unicorn {
  if [[ $2 = "start" ]]
  then
    unicorn_otb_"$1"_app start
  fi

  if [[ $2 = "stop" ]]
  then
    unicorn_otb_"$1"_app stop
  fi

  if [[ $2 = "restart" ]]
  then
    unicorn_otb_"$1"_app restart
  fi
}

function otb_queue {
  otb "$1" && RACK_ENV=development rake resque:work QUEUE="$2" VVERBOSE=true
}

function otb_tail {
  if [[ -f "$OnTheBeach/otb_$1_app/current/log/$2.log" ]]
  then
    tail -f "$OnTheBeach/otb_$1_app/current/log/$2.log"
  else
    echo "No Log File Exists!"
  fi
}

function otb_console {
  # Rails 3.x Project
  if [[ -f "$OnTheBeach/otb_$1_app/current/script/rails" ]]
  then
    otb $1 && ./script/rails console $2
  fi

  # Rails 2.x Project
  if [[ -f "$OnTheBeach/otb_$1_app/current/script/console" ]]
  then
    otb $1 && ./script/console $2
  fi
}
