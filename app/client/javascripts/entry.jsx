import React, { Component } from "react"
import { render } from "react-dom"
import { Route, Switch } from "react-router"
import { ApolloClient } from "apollo-client"
import { ApolloProvider } from "react-apollo"
import HomePage from "./homepage.jsx"

class GraphqlApp extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Switch>
          <Route
            exact
            path="/ferb"
            component={HomePage}
          >
          </Route>
        </Switch>
      </ApolloProvider>
    )
  }
}