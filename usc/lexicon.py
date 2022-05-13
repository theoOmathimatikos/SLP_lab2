
def create_lexicon():

    with open("data/local/dict/nonsilence_phones.txt", "r+") as f:
        phon = f.readlines()
    phon = [ph.split("\n")[0] for ph in phon]

    with open("data/local/dict/lexicon.txt", "w+") as f:
        for ph in phon:
            f.write(ph + " " + ph + "\n")


if __name__ == "__main__":
    create_lexicon()