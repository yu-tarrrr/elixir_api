ExUnit.start()
Mox.defmock(TodoGateway.FindGatewayMock, for: TodoGateway.FindGatewayBehaviour)
Mox.defmock(TodoGateway.CreateGatewayMock, for: TodoGateway.CreateGatewayBehaviour)