/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

        
            const togglePassword = document.querySelector('#eyeclose');
            const password = document.querySelector('#password');

            togglePassword.addEventListener('click', function (e) {
              // toggle the type attribute
              const type = password.getAttribute('type') === 'text' ? 'password' : 'text';
              password.setAttribute('type', type);
              // toggle the eye slash icon
              //this.classList.toggle("fa-eye-slash");
              const sr=this.getAttribute('src') === 'Resources/icons/closed-eye.png' ? 'Resources/icons/eye-25.png' : 'resources/icons/closed-eye.png';
              this.setAttribute('src',sr);
            });
           const togglePassword1 = document.querySelector('#eyeclose1');
            const password1 = document.querySelector('#password1');

            togglePassword1.addEventListener('click', function (e) {
              // toggle the type attribute
              const type = password1.getAttribute('type') === 'text' ? 'password' : 'text';
              password1.setAttribute('type', type);
              // toggle the eye slash icon
              //this.classList.toggle("fa-eye-slash");
              const sr=this.getAttribute('src') === 'Resources/icons/closed-eye.png' ? 'Resources/icons/eye-25.png' : 'resources/icons/closed-eye.png';
              this.setAttribute('src',sr);
          });