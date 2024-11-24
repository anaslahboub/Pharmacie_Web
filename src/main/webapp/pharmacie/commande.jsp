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
		
		
  /*-----------------commande ------------------------------------------------------*/

		
		.order-list {
		    background-color: white;
		    padding: 24px;
		    border-radius: 8px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    width: 100%;
		}
		
		.order-title {
		    font-size: 1.5rem;
		    font-weight: bold;
		    margin-bottom: 16px;
		}
		
		.order-grid {
		    display: grid;
		    grid-template-columns: 1fr;
		    gap: 24px;
		}
		
		@media (min-width: 768px) {
		    .order-grid {
		        grid-template-columns: 1fr 1fr 1fr;
		    }
		}
		
		.order-card {
		    background-color: #f1f1f1;
		    padding: 16px;
		    border-radius: 8px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		}
		
		.order-image {
		    width: 100%;
		    height: 120px;
		    object-fit: cover;
		    border-radius: 8px;
		    margin-bottom: 16px;
		}
		
		.order-name {
		    font-size: 1.25rem;
		    font-weight: bold;
		}
		
		.order-info {
		    color: #4a4a4a;
		    font-size: 1rem;
		    margin: 8px 0;
		}
		
		.order-details-link {
		    color: #3182ce;
		    font-weight: 500;
		    margin-top: 8px;
		    display: inline-block;
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
        <main id="commonde" class="main-container ">
        <div class="order-list">
            <h2 class="order-title">
                Liste des Commandes Passées
            </h2>
            <div class="order-grid">
                <div class="order-card">
                    <img alt="Image de l'ordonnance de Jean Dupont" class="order-image" src="https://storage.googleapis.com/a1aa/image/faYSa23U4fomJU5XS8PqJPdeCVHqoNHpv5R8sTYnNQOp76nnA.jpg"/>
                    <h3 class="order-name">
                        Jean Dupont
                    </h3>
                    <p class="order-info">
                        ID: 001
                    </p>
                    <p class="order-info">
                        Date: 2023-09-30
                    </p>
                    <p class="order-info">
                        Statut: Terminée
                    </p>
                    <p class="order-info">
                        Montant Total: 50€
                    </p>
                    <a class="order-details-link" href="#">
                        Détails
                    </a>
                </div>
                <div class="order-card">
                    <img alt="Image de l'ordonnance de Marie Curie" class="order-image" src="https://storage.googleapis.com/a1aa/image/3ttPcr1p07J2GtqdzytxAfPKWKjjSe8htcCVE45Q3c22d9zTA.jpg"/>
                    <h3 class="order-name">
                        Marie Curie
                    </h3>
                    <p class="order-info">
                        ID: 002
                    </p>
                    <p class="order-info">
                        Date: 2023-09-29
                    </p>
                    <p class="order-info">
                        Statut: Terminée
                    </p>
                    <p class="order-info">
                        Montant Total: 75€
                    </p>
                    <a class="order-details-link" href="#">
                        Détails
                    </a>
                </div>
                <div class="order-card">
                    <img alt="Image de l'ordonnance de Albert Einstein" class="order-image" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg"/>
                    <h3 class="order-name">
                        Albert Einstein
                    </h3>
                    <p class="order-info">
                        ID: 003
                    </p>
                    <p class="order-info">
                        Date: 2023-09-28
                    </p>
                    <p class="order-info">
                        Statut: Terminée
                    </p>
                    <p class="order-info">
                        Montant Total: 60€
                    </p>
                    <a class="order-details-link" href="#">
                        Détails
                    </a>
                </div>
                <div class="order-card">
                    <img alt="Image de l'ordonnance de Albert Einstein" class="order-image" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg"/>
                    <h3 class="order-name">
                        Albert Einstein
                    </h3>
                    <p class="order-info">
                        ID: 003
                    </p>
                    <p class="order-info">
                        Date: 2023-09-28
                    </p>
                    <p class="order-info">
                        Statut: Terminée
                    </p>
                    <p class="order-info">
                        Montant Total: 60€
                    </p>
                    <a class="order-details-link" href="#">
                        Détails
                    </a>
                </div>
                <div class="order-card">
                    <img alt="Image de l'ordonnance de Albert Einstein" class="order-image" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg"/>
                    <h3 class="order-name">
                        Albert Einstein
                    </h3>
                    <p class="order-info">
                        ID: 003
                    </p>
                    <p class="order-info">
                        Date: 2023-09-28
                    </p>
                    <p class="order-info">
                        Statut: Terminée
                    </p>
                    <p class="order-info">
                        Montant Total: 60€
                    </p>
                    <a class="order-details-link" href="#">
                        Détails
                    </a>
                </div>
            </div>
        </div>
        </main>
    </div>
    
    
     
	<footer>
        <p>&copy; 2024 Système de Pharmacie. Tous droits réservés.</p>
    </footer>
</body>
</html>