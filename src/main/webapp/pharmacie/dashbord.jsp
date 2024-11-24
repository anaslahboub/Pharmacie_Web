<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tableau de Bord - Pharmacien</title>
    <link rel="stylesheet" href="styles.css">
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
		
		
/************************dashbord       ---------------------------------------------*/


		.dashboard-page {
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
		    flex-direction: column;
		    align-items: center;
		}
		
		.stats-grid {
		    display: grid;
		    grid-template-columns: repeat(1, 1fr);
		    gap: 1.5rem;
		    margin-bottom: 2rem;
		}
		
		.stat-card {
		    background-color: #ffffff;
		    padding: 24px;
		    border-radius: 8px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    text-align: center;
		}
		
		.stat-title {
		    font-size: 1.5rem;
		    font-weight: bold;
		    color: #2d3748;
		    margin-bottom: 1rem;
		}
		
		.stat-value {
		    font-size: 2.5rem;
		    font-weight: bold;
		    color: #3182ce;
		}
		
		.recent-orders-card {
		    background-color: #ffffff;
		    padding: 24px;
		    border-radius: 8px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    width: 100%;
		    max-width: 1000px;
		}
		
		.recent-orders-title {
		    font-size: 1.75rem;
		    font-weight: bold;
		    color: #2d3748;
		    margin-bottom: 1.5rem;
		}
		
		.orders-grid {
		    display: grid;
		    grid-template-columns: repeat(1, 1fr);
		    gap: 1.5rem;
		}
		
		.order-card {
		    background-color: #edf2f7;
		    border-radius: 8px;
		    padding: 16px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    text-align: center;
		}
		
		.order-image {
		    width: 100%;
		    height: 200px;
		    object-fit: cover;
		    border-radius: 8px;
		    margin-bottom: 1rem;
		}
		
		.order-name {
		    font-size: 1.25rem;
		    font-weight: bold;
		    color: #2d3748;
		}
		
		.order-id,
		.order-date,
		.order-status {
		    font-size: 1rem;
		    color: #4a5568;
		}
		
		.order-details-link {
		    color: #3182ce;
		    text-decoration: none;
		    font-weight: 500;
		}
		
		.order-details-link:hover {
		    text-decoration: underline;
		}
		
		@media (min-width: 768px) {
		    .stats-grid {
		        grid-template-columns: repeat(3, 1fr);
		    }
		
		    .orders-grid {
		        grid-template-columns: repeat(3, 1fr);
		    }
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
                <a href="login.jsp">Déconnexion</a>
            </div>
        </div>
    </header>   


	 <div>
        <main id="dashboard" class="main-content">
            <div class="stats-grid">
                <div class="stat-card">
                    <h2 class="stat-title">Ordonnances Reçues Aujourd'hui</h2>
                    <p class="stat-value">15</p>
                </div>
                <div class="stat-card">
                    <h2 class="stat-title">Ordonnances en Attente</h2>
                    <p class="stat-value">8</p>
                </div>
                <div class="stat-card">
                    <h2 class="stat-title">Ordonnances Prêtes</h2>
                    <p class="stat-value">7</p>
                </div>
            </div>
            <div class="recent-orders-card">
                <h2 class="recent-orders-title">Ordonnances Récentes</h2>
                <div class="orders-grid">
                    <div class="order-card">
                        <img alt="Image de l'ordonnance de Jean Dupont" class="order-image" src="https://storage.googleapis.com/a1aa/image/faYSa23U4fomJU5XS8PqJPdeCVHqoNHpv5R8sTYnNQOp76nnA.jpg" />
                        <h3 class="order-name">Jean Dupont</h3>
                        <p class="order-id">ID: 001</p>
                        <p class="order-date">Date: 2023-10-01</p>
                        <p class="order-status">Statut: En attente</p>
                        <a class="order-details-link" href="detailcommande.jsp">Détails</a>
                    </div>
                    <div class="order-card">
                        <img alt="Image de l'ordonnance de Marie Curie" class="order-image" src="https://storage.googleapis.com/a1aa/image/3ttPcr1p07J2GtqdzytxAfPKWKjjSe8htcCVE45Q3c22d9zTA.jpg" />
                        <h3 class="order-name">Marie Curie</h3>
                        <p class="order-id">ID: 002</p>
                        <p class="order-date">Date: 2023-10-01</p>
                        <p class="order-status">Statut: En préparation</p>
                        <a class="order-details-link" href="detailcommande.jsp">Détails</a>
                    </div>
                    <div class="order-card">
                        <img alt="Image de l'ordonnance de Albert Einstein" class="order-image" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg" />
                        <h3 class="order-name">Albert Einstein</h3>
                        <p class="order-id">ID: 003</p>
                        <p class="order-date">Date: 2023-10-01</p>
                        <p class="order-status">Statut: Prête</p>
                        <a class="order-details-link" href="detailcommande.jsp">Détails</a>
                    </div>
                </div>
            </div>
        </main>
    </div>
	
	
	    <!-- Pied de page -->
    <footer>
        <p>&copy; 2024 Système de Pharmacie. Tous droits réservés.</p>
    </footer>
</body>
</html>
