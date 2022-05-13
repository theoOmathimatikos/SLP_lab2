#!bin/bash

mv ./data/train/wav.scp ./data/train/dummy_wav.scp
sort ./data/train/dummy_wav.scp > ./data/train/wav.scp
rm ./data/train/dummy_wav.scp

mv ./data/test/wav.scp ./data/test/dummy_wav.scp
sort ./data/test/dummy_wav.scp > ./data/test/wav.scp
rm ./data/test/dummy_wav.scp

mv ./data/dev/wav.scp ./data/dev/dummy_wav.scp
sort ./data/dev/dummy_wav.scp > ./data/dev/wav.scp
rm ./data/dev/dummy_wav.scp

mv ./data/train/utt2spk ./data/train/dummy_utt2spk
sort ./data/train/dummy_utt2spk > ./data/train/utt2spk
rm ./data/train/dummy_utt2spk

mv ./data/test/utt2spk ./data/test/dummy_utt2spk
sort ./data/test/dummy_utt2spk > ./data/test/utt2spk
rm ./data/test/dummy_utt2spk

mv ./data/dev/utt2spk ./data/dev/dummy_utt2spk
sort ./data/dev/dummy_utt2spk > ./data/dev/utt2spk
rm ./data/dev/dummy_utt2spk

mv ./data/train/text ./data/train/dummy_text
sort ./data/train/dummy_text > ./data/train/text
rm ./data/train/dummy_text

mv ./data/test/text ./data/test/dummy_text
sort ./data/test/dummy_text > ./data/test/text
rm ./data/test/dummy_text

mv ./data/dev/text ./data/dev/dummy_text
sort ./data/dev/dummy_text > ./data/dev/text
rm ./data/dev/dummy_text

