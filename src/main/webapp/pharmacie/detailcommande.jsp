<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		.header-container {
		    background: linear-gradient(to right, #032406, #43c751, #fffbfb);
		    padding: 16px 24px;
		    color: white;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		    position: fixed; 
		    top: 0;
		    left: 0;
		    right: 0;
		    z-index: 1000;
		  
		}
		
		/* Contenu à l'intérieur de l'en-tête */
		.header-wrapper {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    width: 100%;
		}
		
		/* Logo */
		.logo a {
		    font-size: 2rem;
		    font-weight: bold;
		    color: white;
		    text-decoration: none;
		    transition: color 0.3s ease;
		}
		
		.logo a:hover {
		    color: #3182ce; /* Couleur du survol */
		}
		
		/* Contenu du nav */
		.header-content {
		    flex-grow: 1;
		    display: flex;
		    justify-content: center;
		}
		
		/* Navigation */
		.header-nav {
		    display: flex;
		    gap: 2rem;
		    list-style: none;
		    margin: 0;
		}
		
		/* Liens de navigation */
		.nav-link {
		    color: white;
		    font-size: 1rem;
		    text-decoration: none;
		    font-weight: 500;
		    padding: 8px 12px;
		    border-radius: 4px;
		    transition: background-color 0.3s ease, color 0.3s ease;
		}
		
		.nav-link:hover {
		    background-color: #cddeee; /* Fond de survol */
		    color: white; /* Texte blanc sur survol */
		}
		
		/* Zone de déconnexion */
		.logout a {
		    color: white;
		    text-decoration: none;
		    font-weight: 500;
		    padding: 8px 16px;
		    background-color: #e53e3e; /* Couleur rouge */
		    border-radius: 4px;
		    transition: background-color 0.3s ease;
		}
		
		.logout a:hover {
		    background-color: #c53030; /* Couleur rouge foncé au survol */
		}
		
		/* Réactivité pour les petits écrans */
		@media (max-width: 768px) {
		    .header-wrapper {
		        flex-direction: column;
		        align-items: flex-start;
		    }
		
		    .header-nav {
		        flex-direction: column;
		        gap: 1rem;
		        width: 100%;
		        text-align: left;
		    }
		
		    .logout {
		        margin-top: 16px;
		    }
		}
		
		footer {
		    background-color: hwb(121 81% 0%);
		    text-align: center;
		    padding: 10px 0;
		    bottom: 0;
		    width: 100%;
		}
		body {
		    background-color: #f3f4f6; /* Equivalent to bg-gray-100 */
		    min-height: 100vh;
		    display: flex;
		    flex-direction: column;
		    justify-content: center;
		    align-items: center;
		}
		
		.card {
		    background-color: #ffffff; /* bg-white */
		    padding: 1.5rem; /* p-6 */
		    border-radius: 0.5rem; /* rounded-lg */
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* shadow-lg */
		    max-width: 32rem; /* max-w-2xl */
		    width: 100%; /* w-full */
		}
		
		.card-title {
		    font-size: 1.5rem; /* text-2xl */
		    font-weight: 700; /* font-bold */
		    margin-bottom: 1rem; /* mb-4 */
		}
		
		/* Order details */
		.order-details {
		    margin-bottom: 1.5rem; /* mb-6 */
		}
		
		.order-img {
		    width: 100%; /* w-full */
		    height: 16rem; /* h-64 */
		    object-fit: cover; /* object-cover */
		    border-radius: 0.5rem; /* rounded-lg */
		    margin-bottom: 1rem; /* mb-4 */
		}
		
		.order-title {
		    font-size: 1.25rem; /* text-xl */
		    font-weight: 600; /* font-semibold */
		}
		
		.order-info {
		    color: #4b5563; /* text-gray-700 */
		}
		
		/* Form styles */
		.form-group {
		    margin-bottom: 1rem; /* mb-4 */
		}
		
		.form-label {
		    display: block;
		    color: #4b5563; /* text-gray-700 */
		    font-weight: 600; /* font-semibold */
		}
		
		.form-input-group {
		    display: flex;
		    gap: 1rem; /* space-x-4 */
		}
		
		.form-input {
		    padding: 0.5rem 0.75rem; /* px-3 py-2 */
		    border: 1px solid #d1d5db; /* border */
		    border-radius: 0.5rem; /* rounded-lg */
		}
		
		.form-input-small {
		    width: 25%; /* w-1/4 */
		}
		
		.form-input-readonly {
		    background-color: #f9fafb; /* bg-gray-100 */
		}
		
		/* Buttons */
		.btn-group {
		    display: flex;
		    justify-content: space-between;
		}
		
		.btn {
		    padding: 0.5rem 1rem; /* px-4 py-2 */
		    border-radius: 0.5rem; /* rounded-lg */
		    color: #ffffff; /* text-white */
		}
		
		.btn-green {
		    background-color: #10b981; /* bg-green-500 */
		}
		
		.btn-red {
		    background-color: #ef4444; /* bg-red-500 */
		}
				
		    </style>
</head>
<body>
	<header class="header-container">
        <div class="header-wrapper">
            <div class="logo">
                <a href="dashboard.jsp">Pharmacie</a>
            </div>
            <div class="header-content">
                <nav class="header-nav">
                    <a class="nav-link" href="dashbord.jsp">Tableau de bord</a>
                    <a class="nav-link" href="ordonnonce.jsp">Ordonnances</a>
                    <a class="nav-link" href="commande.jsp">Commandes</a>
                    <a class="nav-link" href="notification.jsp">Notifications</a>
                    <a class="nav-link" href="profile.jsp">Profil</a>
                </nav>
            </div>
            <div class="logout">
                <a href="logout.jsp">Déconnexion</a>
            </div>
        </div>
    </header>  
    
    
    <div id="detail" class="card">
            <h2 class="card-title">Détails de l'Ordonnance</h2>
            <div class="order-details">
                <img src="https://storage.googleapis.com/a1aa/image/faYSa23U4fomJU5XS8PqJPdeCVHqoNHpv5R8sTYnNQOp76nnA.jpg" 
                     alt="Ordonnance de Jean Dupont" 
                     class="order-img">
                <h3 class="order-title">Jean Dupont</h3>
                <p class="order-info">ID: 001</p>
                <p class="order-info">Date: 2023-10-01</p>
            </div>
    
            <form action="/process_order" method="POST">
                <!-- Médicaments -->
                <div class="form-group">
                    <label for="medicament1" class="form-label">Médicament 1</label>
                    <div class="form-input-group">
                        <input type="text" id="medicament1" name="medicament[]" 
                               placeholder="Nom du Médicament" 
                               class="form-input">
                        <input type="number" id="prix1" name="prix[]" 
                               placeholder="Prix (en €)" 
                               class="form-input form-input-small">
                    </div>
                </div>
    
                <!-- Plus de champs ici (Médicaments 2 et 3) -->
    
                <!-- Montant Total -->
                <div class="form-group">
                    <label for="montantTotal" class="form-label">Montant Total (€)</label>
                    <input type="number" id="montantTotal" name="montantTotal" readonly 
                           placeholder="Calculé automatiquement après soumission"
                           class="form-input form-input-readonly">
                </div>
    
                <!-- Boutons -->
                <div class="btn-group">
                    <button type="submit" name="action" value="accepter" 
                            class="btn btn-green">Accepter</button>
                    <button type="submit" name="action" value="refuser" 
                            class="btn btn-red">Refuser</button>
                </div>
            </form>
        </div>
    
    
      
    
    
     
	<footer>
        <p>&copy; 2024 Système de Pharmacie. Tous droits réservés.</p>
    </footer>
</body>
</html>