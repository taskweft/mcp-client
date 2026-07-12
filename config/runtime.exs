import Config

# MCP peer configuration. Each entry is `{name, connection_spec}`. Specs
# follow `Taskweft.MCP.Client.connection_spec()` (forwarded to
# `ExMCP.Client.connect/2`).
#
# No peers are configured by default. Declare peers here (or at runtime via
# `Application.put_env(:taskweft, :mcp_peers, [...])`) to have
# `Taskweft.MCP.Client.connect_configured/0` reach them.
config :taskweft, :mcp_peers, []
