from transformers import pipeline

nlp = pipeline('question-answering', model='illuin/camembert-base-fquad', tokenizer='illuin/camembert-base-fquad')

return nlp({
        'question': 'qui est le plus fort ?',
        'context': 'Jerôme wax est très fort'
    })
