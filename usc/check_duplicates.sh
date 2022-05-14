awk 'a[$0]++{exit 1}' ./data/train/utt2spk || (
    echo -n "remove duplicates? [y/n] "
    read answer
    # Remove duplicates if answer was "y" . I'm using `[` the shorthand
    # of the test command. Check `help [`
    [ "$answer" == "y" ] && uniq ./data/train/utt2spk > ./data/train/utt2spk.uniq
)
