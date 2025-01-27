
    # Parameter Checking Function

    function engineCheck() {
        if [ -z $parameter ]
        then {
            cd /usr/share/SearchitTerminal
            ./logo
            echo "${aqua}${bold}Please Provide A Option Or A Search Query"
            echo "Use Directly"
            echo "Ex: \" searchit --help \" Or \" searchit john wick \""
            echo ""
            echo "--------------------------------------------------------"
            connectionTest
            updateCheck
            function searchLoop(){
              echo -e "${aqua}${bold}Search Query ${blink}${orange}>>>${normal} ${lightgreen} \c"
              read query;
              if [ "$query" == "-e" ] || [ "$query" == "-exit" ]
              then {
                echo "${normal}"
                if [ -f ~/.wget-hsts ]
                then {
                  rm ~/.wget-hsts
                }
               fi
                exit
              }
              elif [ "$query" == "-un" ] || [ "$query" == "-uninstall" ]
              then {
                uninstaller
                exit
              }
              else {
                searchit $query
              }
              fi
              searchLoop
            }
            searchLoop
        }
        else {
            if [ "$parameter" == '--help' ]  || [ "$parameter" == '-h' ] || [ "$parameter" == '-?' ]
                then {
                    help
                }
            elif [ "$parameter" == '--uninstall' ] || [ "$parameter" == '-un' ]
                then {
                    uninstaller
                }
            elif [ "$parameter" == '--about' ] || [ "$parameter" == '-a' ]
                then {
                    about
                }
            elif [ "$parameter" == '--update' ] || [ "$parameter" == '-u' ]
                then {
                    connectionTest
                    update
                }
            elif [ "$parameter" == '--config' ] || [ "$parameter" == '-cfg' ]
                then {
                    config
                }
            elif [ "$parameter" == '--readme' ] || [ "$parameter" == '-rdm' ]
                then {
                    clear
                    cat /usr/share/SearchitTerminal/README.txt
                }
            elif [ "$parameter" == '--release' ] || [ "$parameter" == '-rn' ]
                then {
                    clear
                    cat /usr/share/SearchitTerminal/releaseNote
                }
            elif [ "$parameter" == '--version' ] || [ "$parameter" == '-v' ]
                then {
                    echo "Searchit Version: $version"
                }
            elif [ "$parameter" == '-duckduckgo' ] || [ "$parameter" == '-ddg' ]
                then {
                    connectionTest
                    duckduckgo
                }
            elif [ "$parameter" == '-dogpile' ] || [ "$parameter" == '-dpl' ]
                then {
                    connectionTest
                    dogpile
                }
            elif [ "$parameter" == '-google' ] || [ "$parameter" == '-ggl' ]
                then {
                    connectionTest
                    google
                }
            elif [ "$parameter" == '-ecosia' ] || [ "$parameter" == '-eco' ]
                then {
                    connectionTest
                    ecosia
                }
            elif [ "$parameter" == '-yahoo' ] || [ "$parameter" == '-yah' ]
                then {
                    connectionTest
                    yahoo
                }
            elif [ "$parameter" == '-bing' ] || [ "$parameter" == '-bng' ]
                then {
                    connectionTest
                    bing
                }
            elif [ "$parameter" == '-yandex' ] || [ "$parameter" == '-ydx' ]
                then {
                    connectionTest
                    yandex
                }
            elif [ "$parameter" == '-baidu' ] || [ "$parameter" == '-bdu' ]
                then {
                    connectionTest
                    baidu
                }
            elif [ "$parameter" == '-searx' ] || [ "$parameter" == '-srx' ]
                then {
                    connectionTest
                    searx
                }
            elif [ "$parameter" == '-shodan' ] || [ "$parameter" == '-sdn' ]
                then {
                    connectionTest
                    shodan
                }
            elif [ "$parameter" == '-startpage' ] || [ "$parameter" == '-spg' ]
                then {
                    connectionTest
                    startpage
                }
            elif [ "$parameter" == '-facebook' ] || [ "$parameter" == '-fb' ]
                then {
                    connectionTest
                    facebook
                }
            elif [ "$parameter" == '-twitter' ] || [ "$parameter" == '-ttr' ]
                then {
                    connectionTest
                    twitter
                }
            elif [ "$parameter" == '-reddit' ] || [ "$parameter" == '-rddt' ]
                then {
                    connectionTest
                    reddit
                }
            elif [ "$parameter" == '-linkedin' ] || [ "$parameter" == '-lnkdn' ]
                then {
                    connectionTest
                    linkedin
                }
            elif [ "$parameter" == '-youtube' ] || [ "$parameter" == '-ytb' ]
                then {
                    connectionTest
                    youtube
                }
            elif [ "$parameter" == '-pinterest' ] || [ "$parameter" == '-pntr' ]
                then {
                    connectionTest
                    pinterest
                }
            elif [ "$parameter" == '-tumblr' ] || [ "$parameter" == '-tmblr' ]
                then {
                    connectionTest
                    tumblr
                }
            elif [ "$parameter" == '-quora' ] || [ "$parameter" == '-qra' ]
                then {
                    connectionTest
                    quora
                }
            elif [ "$parameter" == '-wikipedia' ] || [ "$parameter" == '-wiki' ]
                then {
                    connectionTest
                    wikipedia
                }
            elif [ "$parameter" == '-stackoverflow' ] || [ "$parameter" == '-stkof' ]
                then {
                    connectionTest
                    stackoverflow
                }
            elif [ "$parameter" == '-amazon' ] || [ "$parameter" == '-amzn' ]
                then {
                    connectionTest
                    amazon
                }
            elif [ "$parameter" == '-ebay' ] || [ "$parameter" == '-eby' ]
                then {
                    connectionTest
                    ebay
                }
            elif [ "$parameter" == '-github' ] || [ "$parameter" == '-gthb' ]
                then {
                    connectionTest
                    github
                }
            elif [ "$parameter" == '-gitlab' ] || [ "$parameter" == '-gtlb' ]
                then {
                    connectionTest
                    gitlab
                }
             elif [ "$parameter" == '-qwant' ] || [ "$parameter" == '-qwnt' ]
                then {
                    connectionTest
                    qwant
                }
             elif [ "$parameter" == '-qwantjunior' ] || [ "$parameter" == '-qwntjr' ]
                then {
                    connectionTest
                    qwantjr
                }
            elif [ "$parameter" == '-yippy' ] || [ "$parameter" == '-ypy' ]
                then {
                    connectionTest
                    yippy
                }
            elif [ "$parameter" == '-wolframalpha' ] || [ "$parameter" == '-wfa' ]
                then {
                    connectionTest
                    wolframalpha
                }
            elif [ "$parameter" == '-drugs' ] || [ "$parameter" == '-drug' ]
                then {
                    connectionTest
                    drugs
                }
            else {
                connectionTest
                defaultSearch
            }
            fi
        }
    fi
    }
