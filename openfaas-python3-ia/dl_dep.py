from transformers import pipeline

nlp = pipeline('question-answering', model='mrm8488/bert-multi-cased-finedtuned-xquad-tydiqa-goldp', tokenizer='mrm8488/bert-multi-cased-finedtuned-xquad-tydiqa-goldp')

nlp({
        'question': 'qui est le plus fort ?',
        'context': 'Jerôme wax est très fort'
})
