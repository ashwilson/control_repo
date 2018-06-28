class profile::agent_nodes {
    include dockeragent
    dockeragent::node {'web.puppet.vm'}
    docketagent::node {'db.puppet.vm'}
}
