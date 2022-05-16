steps/decode.sh --nj 4 models/mono/unigram_graph data/dev models/mono/decode_uni_dev
steps/decode.sh --nj 4 models/mono/unigram_graph data/test models/mono/decode_uni_test
steps/decode.sh --nj 4 models/mono/bigram_graph data/dev models/mono/decode_bi_dev
steps/decode.sh --nj 4 models/mono/bigram_graph data/test models/mono/decode_bi_test
