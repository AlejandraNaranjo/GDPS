<template>
  <div id="app">
    <Nav> </Nav>

    <div>
      <div>
        <router-view />
      </div>
    </div>
  </div>
</template>

<script>
import Nav from "./components/Nav.vue";
import axios from "axios";
export default {
  name: "App",
  components: {
    Nav,
  },

  async created() {
    const response = await axios.get("/api/user");

    this.$store.dispatch("user", response.data);
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css?family=Fira+Sans:400,500.600,700,800");

.app {
  background: url(https://images.unsplash.com/photo-1552083940-86877723de7a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGFic3RyYWN0fGVufDB8fDB8Ymx1ZXw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60) !important ;
}
body {
  background: url(https://images.unsplash.com/photo-1552083940-86877723de7a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGFic3RyYWN0fGVufDB8fDB8Ymx1ZXw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60) !important ;
  min-height: 100vh;
  display: flex;
  font-weight: 400;
  font-family: "Fira Sans", sans-serif;
}
h1,
h2,
h3,
h4,
h5,
h6,
label,
span {
  font-weight: 500;
  font-family: "Fira Sans", sans-serif;
  color: yellow;
  align-items: center;
}
#app {
  text-align: center;
}
body,
html,
#app {
  width: 100%;
  height: 100%;
}
.navbar-light {
  background-color: #ffffff;
  /*box-shadow: 0px 14px 80px rgba(34, 35, 58, 0.2);*/
}
.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 5px;
  margin: auto;
}

/**{
  box-sizing: border-box;
}
body{
  background:#url(https://images.unsplash.com/photo-1552083940-86877723de7a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGFic3RyYWN0fGVufDB8fDB8Ymx1ZXw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60)   !important ;
  min-height: 100vh;
  display: flex;
  font-weight:400;
  font-family: 'Fira Sans', sans-serif;
}

h1,h2,h3,h4,h5,h6,label, span{
  font-weight: 500;
  font-family: 'Fira Sans', sans-serif;
  color:yellow;
}
body, html, #app, #root, .auth-wrapper{
  width:100%;
  height: 100%;
}

#app{
  text-align: center;;
}
.navbar-light{
background-color: #ffffff ;
/*box-shadow: 0px 14px 80px rgba(34, 35, 58, 0.2);*/
/*}
.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.auth-wrapper{
  display:flex;
  justify-content: center;
  flex-direction:column;
  text-align: left;
}
.auth-inner{
  width: 450px;
  margin: auto;
  background: #c4dcfc;
  box-shadow: 0px 14px 80px rgba(34, 35, 58, 0.2);
  padding: 40px 55px 45px 55px;
  border-radius: 15px;
  transition: all .3s;
}
.auth-wrapper .form-control :focus{
border-color:#167bff;
box-shadow: none;
}
.auth-wrapper{
  display: flex;
  justify-content:center;
  flex-direction: column;
  text-align: left;
}
auth-wrapper h3{
  text-align:center;
  margin: 0;
  line-height: 1;
  padding-bottom: 20px;
}
.custom-control-label{
  font-weight:400;
}
.forgot-password,
.forgot-password a {
  text-align:right;
  font-size: 13px;
  padding-top: 10px;
  color: #7f7d7d;
  margin: 0;
}
.forgot-password a{
  color: #167bff;
}*/
</style>


