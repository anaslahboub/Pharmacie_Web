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
		
	/*      **********************----             notification*/
		.notifications-page {
		    min-height: 100vh;
		    display: flex;
		    flex-direction: column;
		    background-color: #f7fafc;
		}
		
		.header-container {
		    background-color: white;
		    padding: 16px 24px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		}
		
		.header-wrapper {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		}
		
		.header-title {
		    font-size: 2.5rem;
		    font-weight: bold;
		    color: #2d3748;
		}
		
		.header-nav {
		    display: flex;
		    gap: 1rem;
		}
		
		.nav-link {
		    color: #4a5568;
		    text-decoration: none;
		    font-weight: 500;
		}
		
		.nav-link:hover {
		    color: #3182ce;
		}
		
		.main-content {
		    flex-grow: 1;
		    padding: 32px;
		    display: flex;
		    justify-content: center;
		}
		
		.notification-card {
		    background-color: #ffffff;
		    padding: 24px;
		    border-radius: 8px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    width: 100%;
		    max-width: 800px;
		    margin: 0 auto;
		}
		
		.notification-title {
		    font-size: 1.75rem;
		    font-weight: bold;
		    color: #2d3748;
		    margin-bottom: 16px;
		}
		
		.notification-list {
		    list-style: none;
		    padding: 0;
		    margin: 0;
		}
		
		.notification-item {
		    background-color: #edf2f7;
		    border-radius: 8px;
		    margin-bottom: 1rem;
		    padding: 16px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		}
		
		.notification-content {
		    display: flex;
		    flex-direction: column;
		}
		
		.notification-text {
		    font-size: 1rem;
		    color: #4a5568;
		}
		
		.mark-as-read {
		    background: transparent;
		    border: 1px solid #3182ce;
		    color: #3182ce;
		    padding: 8px 16px;
		    border-radius: 4px;
		    cursor: pointer;
		    transition: background-color 0.2s;
		}
		
		.mark-as-read:hover {
		    background-color: #63b3ed;
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
    
    <div>
        <main id="Notification" class="main-content">
            <div class="notification-card">
                <h2 class="notification-title">Historique des Notifications</h2>
                <ul class="notification-list">
                    <li class="notification-item">
                        <div class="notification-content">
                            <p class="notification-text">Nouvelle ordonnance reçue de Jean Dupont</p>
                            <button class="mark-as-read">Marquer comme lu</button>
                        </div>
                    </li>
                    <li class="notification-item">
                        <div class="notification-content">
                            <p class="notification-text">Ordonnance de Marie Curie prête à être récupérée</p>
                            <button class="mark-as-read">Marquer comme lu</button>
                        </div>
                    </li>
                    <li class="notification-item">
                        <div class="notification-content">
                            <p class="notification-text">Ordonnance de Albert Einstein en préparation</p>
                            <button class="mark-as-read">Marquer comme lu</button>
                        </div>
                    </li>
                </ul>
            </div>
        </main>
    </div>
   
    
    
	<footer>
        <p>&copy; 2024 Système de Pharmacie. Tous droits réservés.</p>
    </footer>
</body>
</html>