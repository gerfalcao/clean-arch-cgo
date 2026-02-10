# Clean Architecture

## Subir

```bash
docker compose up --build
```

## Migração

A migração roda automaticamente ao subir os containers.

## Servidor Go

O servidor Go sobe automaticamente com o `docker compose up --build`.

## Testes

### REST (porta 8000)

```bash
# Criar order
curl -X POST http://localhost:8000/order \
  -H "Content-Type: application/json" \
  -d '{"id": "abc", "price": 100.5, "tax": 0.5}'

# Listar orders
curl http://localhost:8000/order
```

### gRPC (porta 50051)

evans -r repl

pb.OrderService@localhost:50051> package pb
pb.OrderService@localhost:50051> service OrderService
pb.OrderService@localhost:50051> call ListOrders

### GraphQL (porta 8080)

Abra http://localhost:8080 e execute:

```graphql
mutation {
  createOrder(input: { id: "abc", Price: 100.0, Tax: 10.0 }) {
    id
    Price
    Tax
    FinalPrice
  }
}
```

```graphql
query {
  listOrders {
    id
    Price
    Tax
    FinalPrice
  }
}
```
