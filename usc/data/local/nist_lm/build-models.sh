compile-lm ~/Documents/lab2/usc/data/local/lm_tmp/unigram.ilm.gz -t=yes /dev/stdout | grep -v unk | gzip -c > ~/Documents/lab2/usc/data/local/nist_lm/lm_phone_ug.arpa.gz
compile-lm ~/Documents/lab2/usc/data/local/lm_tmp/bigram.ilm.gz -t=yes /dev/stdout | grep -v unk | gzip -c > ~/Documents/lab2/usc/data/local/nist_lm/lm_phone_bg.arpa.gz

