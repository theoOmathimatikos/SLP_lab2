import os
import scipy.io
import scipy.io.wavfile
import math

def return_frames():
    """Returns the number of frames of the first 5 wav files of the training set"""
    wavs = ['f1_003', 'f1_004', 'f1_005', 'f1_007', 'f1_008']
    lens = []
    for wav in wavs:
        wavs_tot = os.path.join(os.getcwd(),'wav', wav) + ".wav"
        sample_rate, signal = scipy.io.wavfile.read(wavs_tot)
        len_in_sec = len(signal)/sample_rate
        lens.append(len_in_sec)

    return [math.ceil((el-0.025)/0.01) for el in lens]

print(return_frames())
