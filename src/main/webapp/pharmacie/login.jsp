<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* Global styles */
		body {
		    margin: 0;
		    font-family: Arial, sans-serif;
		}
		
		.bg-page {
		    background-color: #f3f4f6; 
		}
		
		.flex-center {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    min-height: 100vh;
		}
		
		/* Card styles */
		.login-card {
		    background-color: #ffffff; 
		    padding: 2rem; 
		    border-radius: 0.5rem; 
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
		    width: 100%;
		    max-width: 28rem; 
		}
		
		.login-title {
		    font-size: 1.75rem; 
		    font-weight: bold; 
		    text-align: center; 
		    margin-bottom: 1.5rem;
		}
		
		/* Form styles */
		.form-group {
		    margin-bottom: 1rem; 
		}
		
		.form-label {
		    display: block;
		    color: #4b5563; 
		    font-weight: 600; 
		}
		
		.form-input {
		    width: 100%; 
		    padding: 0.5rem 0.75rem;
		    border: 1px solid #d1d5db; 
		    border-radius: 0.5rem; 
		}
		
		/* Checkbox and links */
		.form-options {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    margin-bottom: 1.25rem; 
		}
		
		.checkbox-label {
		    display: flex;
		    align-items: center;
		    color: #4b5563; 
		}
		
		.checkbox-input {
		    margin-right: 0.5rem; 
		}
		
		.link-forgot {
		    color: #3b82f6; 
		    text-decoration: none;
		}
		
		.link-forgot:hover {
		    text-decoration: underline;
		}
		
		/* Button styles */
		.btn {
		    width: 100%; 
		    padding: 0.5rem 0;
		    border-radius: 0.5rem; 
		    font-weight: bold;
		    text-align: center;
		    color: #ffffff; 
		    cursor: pointer;
		    border: none; 
		}
		
		.btn-primary {
		    background-color: #3b82f6; 
		}
		
		.btn-primary:hover {
		    background-color: #2563eb; 
		}
		/* Lien pour inscription */
		.register-link {
		    margin-top: 1rem; /* Espacement au-dessus du lien */
		}
		
		.register-link .link-register {
		    color: #3b82f6; /* Couleur bleue */
		    text-decoration: none; /* Supprimer le soulignement */
		    font-weight: bold; /* Texte en gras */
		}
		
		.register-link .link-register:hover {
		    text-decoration: underline; /* Soulignement au survol */
		    color: #2563eb; /* Bleu plus foncé */
		}
		
			
</style>
</head>
<body class="bg-page flex-center">
    <div class="login-card">
        <h2 class="login-title">Connexion Pharmacien</h2>
        <form action="/login" method="POST">
            <!-- Email ou Nom d'utilisateur -->
            <div class="form-group">
                <label for="username" class="form-label">Email ou Nom d'utilisateur</label>
                <input type="text" id="username" name="username" 
                       placeholder="Email ou Nom d'utilisateur" class="form-input">
            </div>

            <!-- Mot de passe -->
            <div class="form-group">
                <label for="password" class="form-label">Mot de passe</label>
                <input type="password" id="password" name="password" 
                       placeholder="Mot de passe" class="form-input">
            </div>

            <!-- Options supplémentaires -->
            <div class="form-options">
                <a href="#" class="link-forgot">Mot de passe oublié?</a>
            </div>

            <!-- Bouton Connexion -->
            <button type="submit" class="btn btn-primary">Connexion</button>
        </form>

        <!-- Lien pour créer un compte -->
        <div class="register-link">
            <p class="text-center">
                Vous êtes un nouveau pharmacien ?
                <a href="signin.jsp" class="link-register">Créer un compte</a>
            </p>
        </div>
    </div>
</body>

</html>