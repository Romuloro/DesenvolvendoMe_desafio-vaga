
# Desafio Vaga

É um desafio proposto pelo mentor Marco Castro no qual temos como objetivo de preparar os mentorados aos habilidades basilares para o desenvolvedor junior.


## Documentação da API

#### Retorna todos os autores

```http
   GET /authors
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `No parameters` |  |  |

- ###### Responses

  | Codes   |
  | :---------- |
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

  | Codes   |
  | :---------- |
  | `400` |

      
      {
        "error": "bad input parameter" 
      }


#### Retorna um autor

```http
  GET /authors/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do authors que você quer |

 - ###### Responses

    | Codes   |
    | :---------- |
    | `200` |

        [
          {
            "id": 1,
            "name": "Domenico Losurdo",
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
          }
        ]

    | Codes   |
    | :---------- |
    | `400` |

        
        {
          "error": "bad input parameter" 
        }

#### Deletar um autor
```http
  DELETE /authors/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do autor que você quer |

 - ###### Responses

    | Codes   |
    | :---------- |
    | `200` |

        {
          "message": "Autor deletado com sucesso" 
        }

    | Codes   |
    | :---------- |
    | `400` |

        
        {
          "error": "bad input parameter" 
        }


#### Criar um autor

```http
  POST /authors
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `No parameters` |  |  |

 - ###### Request Body

      
        {
          "name": "Domenico Losurdo",
        }
    
  

 - ###### Responses 

    | Codes   |
    | :---------- |
    | `200` |

        [
          {
            "id": 1,
            "name": "Domenico Losurdo",
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
          }
        ]

    | Codes   |
    | :---------- |
    | `400` |

  
        {
          "error": "bad input parameter" 
        }


#### Atualizar um autor

```http
  PUT /authors
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do autor que você quer |


 - ###### Request Body

      
        {
          "name": "Domenico Losurdo",
        }
    
  

 - ###### Responses 

    | Codes   |
    | :---------- |
    | `200` |

        [
          {
            "id": 1,
            "name": "Domenico Losurdo",
            "created_at": "2016-08-29T09:12:33.001Z",
            "updated_at": "2016-08-29T09:12:33.001Z"
          }
        ]

    | Codes   |
    | :---------- |
    | `400` |

  
        {
          "error": "bad input parameter" 
        }
