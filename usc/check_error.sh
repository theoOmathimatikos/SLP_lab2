#!/usr/bash

cmd="$@"

no_feats=false
no_wav=false
no_text=false
no_spk_sort=false
non_print=false


while [ $# -ne 0 ] ; do
  case "$1" in
    "--no-feats")
      no_feats=true;
      ;;
    "--no-text")
      no_text=true;
      ;;
    "--non-print")
      non_print=true;
      ;;
    "--no-wav")
      no_wav=true;
      ;;
    "--no-spk-sort")
      no_spk_sort=true;
      ;;
    *)
      if ! [ -z "$data" ] ; then
        show_help;
        exit 1
      fi
      data=$1
      ;;
  esac
  shift
done

export LC_ALL=C

function check_sorted_and_uniq {
 ! awk '{print $1}' $1
 echo step 1
 ! awk '{print $1}' < $1 | sort -C && echo "$0: file $1 is not sorted" && exit 1;
 echo step 2
 ! awk '{print $1}' < $1 | sort -uC && echo "$0: file $1 contains duplicates" && exit 1; 
 echo step 3
}

check_sorted_and_uniq ./data/train/utt2spk

