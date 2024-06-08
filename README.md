# Game of life (Conway)

Este é um projeto feito em Ruby, que reproduz o [Game of Life de Conway](https://pt.wikipedia.org/wiki/Jogo_da_vida) utilizando matrizes para exibir cada geração.

Cada "O" representa uma célula viva e cada "." representa uma célula morta.

## Pré-requisitos
- Docker
- Make

## Como executar
```bash
make build
```

```bash
make run
```

## Regras
- Qualquer célula viva com menos de dois vizinhos vivos morre (por solidão).
- Qualquer célula viva com dois ou três vizinhos vivos continua viva (sobrevivência).
- Qualquer célula viva com mais de três vizinhos vivos morre (por superpopulação).
- Qualquer célula morta com exatamente três vizinhos vivos se torna uma célula viva (reprodução).

## Referências
- [Game of Life de Conway - Jogo](https://playgameoflife.com/)
- [Wiki](https://pt.wikipedia.org/wiki/Jogo_da_vida)