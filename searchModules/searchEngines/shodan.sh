# Shodan Search Function

function shodan() {
    dbCheck
    query=${tmpquery//\ /+}
  if [ "$opParam" == '-exploit' ] || [ "$opParam" == '-exp' ]
          then {
            query=${query/-exp+}
            query=${query/-exploit+}
            query=${query/-sdn+}
            query=${query/-shodan+}
            $browser https://exploits.shodan.io/?q=$query
    }
  elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
      then {
        echo " ${aqua}${bold}Shodan Search Filters: ${normal}
                For Exploits     -exploit       -exp
             "
        exit
  }
    else {
      query=${query/-sdn+}
      query=${query/-shodan+}
      $browser www.shodan.io/search?query=$query
      exit
    }
  fi

}