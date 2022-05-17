import os
import re
import contractions


def clean_text(s):
    s = s.strip()  # The strip() method removes any leading and trailing spaces
    s = s.upper()  # convert to uppercase
    s = contractions.fix(s)  # e.g. don't -> do not, you're -> you are
    s = re.sub("\s+", " ", s)  # strip multiple whitespace
    s = re.sub(r"[^A-Z\s]", " ", s)  # keep only uppercase letters and spaces
    return s


def convert_text_to_lexicon():
    """ This function first reads the lines of the lexicon file and creates a dictionary that matches each word to
    its corresponing phoneme. Then, for each sentence of the different files, it splits it into words and finds its
    corresponding phonemes. After that, it adds the strings of the phonemes of a sentence and writes the results in a new file.
    """
    dir = os.getcwd()
    # read the lines of the lexicon.txt file
    with open(dir + "/lexicon.txt") as f:
        lexicons = f.readlines()

    # create a dictionary with key: the word, and value the lexicon
    dict = {}
    for lex in lexicons:
        [key, value] = lex.split(" ", 1)
        if "(" in key:
            continue
        else:
            key = key.split("\t")[0]
        value = value.split("\n")[0] if value.endswith("\n") else value
        dict[key] = value

    # repeat for every set of the data
    for set in ['dev', 'test', 'train']:
        text_dir = dir + "/data/" + set + "/text.txt"

        # read the lines of the text.txt file
        with open(text_dir, "r+") as f:
            data = f.readlines()

        # for every word of every sentence, find the according lexicon, concatenate the lexicons of the same sentence.
        new_data = []
        for elem in data:
            [id, sentence] = elem.split(" ", 1)
            text = clean_text(sentence)
            lex = str("sil ")
            for word in text.split(" "):
                if len(word) >= 1:
                    lex += dict[word] + " "
            lex += "sil"
            new_data.append((id, lex))

        # clear the file and write the lexicons of the sentences
        with open(text_dir, 'w') as f:
            for id, lex in new_data:
                f.write(id + " " + lex + "\n")


if __name__ == "__main__":
    convert_text_to_lexicon()
