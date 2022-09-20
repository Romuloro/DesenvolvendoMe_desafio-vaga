
# Desafio Vaga

É um desafio proposto pelo mentor Marco Castro no qual temos como objetivo de preparar os mentorados aos habilidades basilares para o desenvolvedor junior.


## Documentação da API

### Authors routes (/authors/)

#### Retorna todos os autores

```http
   GET /authors or GET /authors.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Responses

| Codes |
|:------|
| `200` |

      [
        {
          "id": 1,
          "name": "Domenico Losurdo",
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        },
        {
          "id": 2,
          "name": "Karl Marx",
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        }
      ]

| Codes |
|:------|
| `400` |


      {
        "error": "bad input parameter" 
      }


#### Retorna um autor

```http
  GET /authors/${id} or GET /authors/${id}.json
```

| Parâmetro | Tipo     | Descrição                                      |
|:----------|:---------|:-----------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do authors que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       [
         {
           "id": 1,
           "name": "Domenico Losurdo",
           "created_at": "2016-08-29T09:12:33.001Z",
           "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }

#### Deletar um autor
```http
  DELETE /authors/${id}
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do autor que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       {
         "message": "Autor deletado com sucesso" 
       }

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }


#### Criar um autor

```http
  POST /authors or POST /authors.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Request Body

        {
          "name": "Domenico Losurdo",
        }

- ###### Responses

| Codes |
|:------|
| `200` |

       [
         {
           "id": 1,
           "name": "Domenico Losurdo",
           "created_at": "2016-08-29T09:12:33.001Z",
           "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }


#### Atualizar um autor

```http
  PUT /authors/${id} or PUT /authors/${id}.json
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do livro que você quer |


- ###### Request Body


        {
          "name": "Domenico Losurdo",
        }



- ###### Responses

| Codes |
|:------|
| `200` |

       [
         {
           "id": 1,
           "name": "Domenico Losurdo",
           "created_at": "2016-08-29T09:12:33.001Z",
           "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }


### Books routes (/books/)

#### Retorna todos os livros

```http
   GET /books or GET /books.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Responses

| Codes |
|:------|
| `200` |

      [
        {
          "id": 1,
          "titulo": "Manifesto Comunista",
          "published_at": "2013-08-24T09:12:33.001Z",
          "author_id": 1,
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        },
        {
          "id": 2,
          "titulo": "O Estado e a Revolução",
          "published_at": "2012-05-24T09:12:33.001Z",
          "author_id": 3,
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        }
      ]

| Codes |
|:------|
| `400` |


      {
        "error": "bad input parameter" 
      }


#### Retorna um livro

```http
  GET /books/${id} or GET /books/${id}.json
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do livro que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       [
         {
          "id": 1,
          "titulo": "Manifesto Comunista",
          "published_at": "2013-08-24T09:12:33.001Z",
          "author_id": 1,
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }

#### Deletar um livro
```http
  DELETE /books/${id}
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do livro que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       {
         "message": "Livro deletado com sucesso" 
       }

| Codes |
|:------|
| `400` |

        {
          "error": "bad input parameter" 
        }


#### Criar um livro

```http
  POST /books or POST /books.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Request Body

        {
          "titulo": "Contra-História do Liberalismo",
          "published_at": "2013-08-24T09:12:33.001Z",
          "author_id": 1
        }

- ###### Responses

| Codes |
|:------|
| `200` |

       [
          {
            "id": 1,
            "titulo": "Manifesto Comunista",
            "published_at": "2013-08-24T09:12:33.001Z",
            "author_id": 1,
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
          }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }


#### Atualizar um livro

```http
  PUT /authors/${id} or PUT /authors/${id}.json
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID do autor que você quer |


- ###### Request Body

        {
          "titulo": "Contra-História do Liberalismo",
          "published_at": "2013-08-24T09:12:33.001Z",
          "author_id": 1
        }


- ###### Responses

| Codes |
|:------|
| `200` |

       [
          {
            "id": 1,
            "titulo": "Manifesto Comunista",
            "published_at": "2013-08-24T09:12:33.001Z",
            "author_id": 1,
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
          }
       ]

| Codes |
|:------|
| `400` |

        {
          "error": "bad input parameter" 
        }



### Accounts routes (/accounts/)

#### Retorna todos as contas

```http
   GET /accounts or GET /accounts.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Responses

| Codes |
|:------|
| `200` |

      [
        {
          "id": 1,
          "account_number": "fisajhios564g56f6g5f4g5dfg54",
          "supplier_id": 1,
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        },
        {
          "id": 2,
          "account_number": "fisajhios564g56f6g5f4g5dfg74",
          "supplier_id": 3,
          "created_at": "2016-08-29T09:12:33.001Z",
          "updated_at": "2016-08-29T09:12:33.001Z"
        }
      ]

| Codes |
|:------|
| `400` |


      {
        "error": "bad input parameter" 
      }


#### Retorna uma conta

```http
  GET /accounts/${id} or GET /accounts/${id}.json
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID da conta que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       [
         {
            "id": 1,
            "account_number": "fisajhios564g56f6g5f4g5dfg54",
            "supplier_id": 1,
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }

#### Deletar uma conta
```http
  DELETE /books/${id}
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID da conta que você quer |

- ###### Responses

| Codes |
|:------|
| `200` |

       {
         "message": "Conta deletada com sucesso" 
       }

| Codes |
|:------|
| `400` |

        {
          "error": "bad input parameter" 
        }


#### Criar uma conta

```http
  POST /accounts or POST /accounts.json
```

| Parâmetro       | Tipo | Descrição |
|:----------------|:-----|:----------|
| `No parameters` |      |           |

- ###### Request Body

        {
          "account_number": "a5d4f8a445d64fg56a4f564d",
          "supplier_id": 1
        }

- ###### Responses

| Codes |
|:------|
| `200` |

       [
          {
            "id": 1,
            "account_number": "fisajhios564g56f6g5f4g5dfg54",
            "supplier_id": 1,
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |


        {
          "error": "bad input parameter" 
        }


#### Atualizar uma conta

```http
  PUT /accounts/${id} or PUT /accounts/${id}.json
```

| Parâmetro | Tipo     | Descrição                                    |
|:----------|:---------|:---------------------------------------------|
| `id`      | `string` | **Obrigatório**. O ID da conta que você quer |


- ###### Request Body

        {
          "account_number": "a5d4f8a445d64fg56a4f564d",
          "supplier_id": 1
        }


- ###### Responses

| Codes |
|:------|
| `200` |

       [
          {
            "id": 1,
            "account_number": "fisajhios564g56f6g5f4g5dfg54",
            "supplier_id": 1,
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
         }
       ]

| Codes |
|:------|
| `400` |

        {
          "error": "bad input parameter" 
        }
