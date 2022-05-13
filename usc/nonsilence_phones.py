
def create_file():

    with open("lexicon.txt", "r+") as f:
        lines = f.readlines()

    phonemes = [line.rsplit(" ", 1)[1] for line in lines]
    phonemes = [phon.split("\n")[0] for phon in phonemes]
    phonemes = list(set(phonemes))
    phonemes.sort()
    phonemes[0] = phonemes[0].split("\t")[1]

    with open("data/local/dict/nonsilence_phones.txt", "w+") as f:
        for phon in phonemes:
            if phon != "sil":
                f.write(phon + "\n")


if __name__ == "__main__":
    create_file()
