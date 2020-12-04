import React from "react";
import ReactDOM from "react-dom";
import {createUser} from './util/session_api_util'

document.addEventListener("DOMContentLoaded", () => {

  window.createUser = createUser;

  const root = document.getElementById("root");
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});