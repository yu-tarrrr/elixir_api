ExUnit.start()
Mox.defmock(TodoGateway.FindGatewayMock, for: TodoGateway.FindGatewayBehaviour)
Mox.defmock(TodoGateway.CreateGatewayMock, for: TodoGateway.CreateGatewayBehaviour)
Mox.defmock(TodoGateway.DeleteGatewayMock, for: TodoGateway.DeleteGatewayBehaviour)