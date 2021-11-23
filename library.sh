#/bin/bash

: library

except=(
	"""
	</> kesalahan syntax $1
	    argumen tidak terdaftar
	"""
)

data="date"
function lab {
    case $1 in
              volume)termux-volume $2 $3 ;;
              vib)termux-vibrate -d $2 -f ;;
              notif)notify-send -t 0 "$2" ;;
              musik)mpv $2 ;;
              *)echo "${except[*]}"; exit 4 ;;
              esac
}

function github {
	case $1 in
   	           clone)git clone $2 ;;
   	           init)git init $2 ;;
   	           add)git add $2 ;;
   	           mv)git mv $2 ;;
   	           restore)git restore $2 ;;
   	           rm)git rm $2 ;;
   	           bisect)git bisect $2 ;;
   	           commit)git commit $2 ;;
   	           diff)git diff $2 ;;
   	           grep)git grep $2 ;;
   	           log)git log $2 ;;
   	           show)git show $2 ;;
   	           status)git status $2 ;;
   	           merge)git merge $2 ;;
   	           rebase)git rebase $2 ;;
   	           reset)git reset $2 ;;
   	           switch)git switch $2 ;;
   	           tag)git tag $2 ;;
   	           fetch)git fetch $2 ;;
   	           pull)git pull $2 ;;
   	           push)git push $2 ;;
   	           *)echo "${except[*]}"; exit 3
   	     esac
   	           
}

function socket {
	#comming soon
             case $1 in
                        *)shift; exit 5
                       ;;
                  esac
}
