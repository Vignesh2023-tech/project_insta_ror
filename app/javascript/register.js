let signupBtn = document.querySelector("#signup");

signupBtn.addEventListener("submit", e => {

  let name = document.getElementById("name").value.trim;
  let email = document.getElementById("email").value.trim;
  let password = document.getElementById("password").value.trim;

  let name_pattern = "[A-Za-z.]+";
  let email_pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$";
  let password_pattern = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}";

  if (name.length == 0 && name_pattern.test(name) == false) {
    alert("Please enter a valid name");
    e.preventDefault();
  }

  if (email.length == 0 && email_pattern.test(email) == false) {
    alert("Please enter a valid email");
    e.preventDefault();
  }

  console.log("register.js")

  if (password.length < 8 && password_pattern.test(password) == false) {
    alert("Please enter a valid password");
    e.preventDefault();
  }

});
