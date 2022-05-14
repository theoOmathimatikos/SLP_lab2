import os


def corrector():
    path = os.getcwd()
    for set in ['train', 'test', 'dev']:
        file_path = path + "/data/" + set + "/wav.scp"
        with open(file_path, "r+") as f:
            lines = f.readlines()

        with open(file_path, "w+") as f:
            for l in lines:
                f.write(l.split(" ")[0] + " " + l.split(" ")[1][1:])


if __name__ == "__main__":
    corrector()