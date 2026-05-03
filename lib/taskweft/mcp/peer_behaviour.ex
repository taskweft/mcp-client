defmodule Taskweft.MCP.PeerBehaviour do
  @moduledoc """
  Contract for a peer MCP server connection.

  Implement this behaviour to swap the concrete peer (e.g. replace the
  real minizinc-mcp with a test double via `mox`).
  """

  @callback connect(Taskweft.MCP.Client.connection_spec(), keyword()) ::
              {:ok, Taskweft.MCP.Client.t()} | {:error, term()}

  @callback disconnect(Taskweft.MCP.Client.t()) :: :ok

  @callback call_tool(
              Taskweft.MCP.Client.t(),
              String.t(),
              map(),
              keyword()
            ) :: {:ok, [map()]} | {:error, term()}
end
