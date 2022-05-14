import os


def create_file():
    for file in ['dev', 'train', 'test']:
        path = os.getcwd() + "/data/" + file
        with open(path + "/text.txt", "r+") as f:
            lines = f.readlines()

        new_lines = []
        for line in lines:
            [id, text] = line.split(" ", 1)
            new_text = "<s> " + text[:-1] + " </s>"
            new_lines.append(id + " " + new_text)

        with open(path + "/lm_test.text", "w+") as f:
            for line in new_lines:
                f.write(line + "\n")


if __name__ == "__main__":
    create_file()
