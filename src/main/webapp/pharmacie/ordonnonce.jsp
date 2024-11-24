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
		/*-----------------------------------------------------------------------------------*/
		
		.main-container {
		    margin: 0 auto;
		    padding: 32px 24px;
		    max-width: 1200px;
		    background-color: #f9fafb;
		  }
		  
		  
		  .card-wrapper {
		    background-color: #ffffff;
		    padding: 32px;
		    border-radius: 10px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		  }
		  
		  /* Section Title */
		  .section-title {
		    font-size: 24px;
		    font-weight: 700;
		    margin-bottom: 20px;
		  }
		  
		  /* Grid for the cards */
		  .card-grid {
		    display: grid;
		    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
		    gap: 24px;
		  }
		  
		  /* Individual card */
		  .card-item {
		    background-color: #f1f5f9;
		    padding: 20px;
		    border-radius: 8px;
		    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		    transition: transform 0.3s ease;
		  }
		  
		  .card-item:hover {
		    transform: translateY(-5px); /* Slightly lift the card on hover */
		  }
		  
		  /* Card image */
		  .card-img {
		    width: 100%;
		    height: 180px;
		    object-fit: cover;
		    border-radius: 8px;
		    margin-bottom: 16px;
		  }
		  
		  /* Card name (title) */
		  .card-name {
		    font-size: 20px;
		    font-weight: 600;
		    margin-bottom: 8px;
		  }
		  
		  /* Card text */
		  .card-text {
		    color: #4b5563;
		    font-size: 14px;
		    margin-bottom: 8px;
		  }
		  
		  /* Card link */
		  .card-link {
		    color: #3b82f6;
		    font-size: 16px;
		    text-decoration: none;
		    font-weight: 500;
		    margin-top: 12px;
		    display: inline-block;
		  }
		  
		  .card-link:hover {
		    color: #1d4ed8;
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
                <a href="login	.jsp">Déconnexion</a>
            </div>
        </div>
    </header>  
    
    
    
    <div>
        <main id="ordonnonce" class="main-container ">
            <div class="card-wrapper">
            <h2 class="section-title">
                Liste des Ordonnances
            </h2>
            <div class="card-grid">
                <div class="card-item">
                <img class="card-img" src="https://storage.googleapis.com/a1aa/image/faYSa23U4fomJU5XS8PqJPdeCVHqoNHpv5R8sTYnNQOp76nnA.jpg" alt="Image de l'ordonnance de Jean Dupont" />
                <h3 class="card-name">Jean Dupont</h3>
                <p class="card-text">ID: 001</p>
                <p class="card-text">Date: 2023-10-01</p>
                <p class="card-text">Statut: En attente</p>
                <a class="card-link" href="detailcommande.jsp">Détails</a>
                </div>
                <div class="card-item">
                <img class="card-img" src="https://storage.googleapis.com/a1aa/image/3ttPcr1p07J2GtqdzytxAfPKWKjjSe8htcCVE45Q3c22d9zTA.jpg" alt="Image de l'ordonnance de Marie Curie" />
                <h3 class="card-name">Marie Curie</h3>
                <p class="card-text">ID: 002</p>
                <p class="card-text">Date: 2023-10-01</p>
                <p class="card-text">Statut: En préparation</p>
                <a class="card-link" href="detailcommande.jsp">Détails</a>
                </div>
                <div class="card-item">
                <img class="card-img" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg" alt="Image de l'ordonnance de Albert Einstein" />
                <h3 class="card-name">Albert Einstein</h3>
                <p class="card-text">ID: 003</p>
                <p class="card-text">Date: 2023-10-01</p>
                <p class="card-text">Statut: Prête</p>
                <a class="card-link" href="detailcommande.jsp">Détails</a>
                </div>
                <div class="card-item">
                    <img class="card-img" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg" alt="Image de l'ordonnance de Albert Einstein" />
                    <h3 class="card-name">Anas Lahboub</h3>
                    <p class="card-text">ID: 003</p>
                    <p class="card-text">Date: 2023-10-01</p>
                    <p class="card-text">Statut: Prête</p>
                    <a class="card-link" href="detailcommande.jsp">Détails</a>
                </div>
                <div class="card-item">
                    <img class="card-img" src="https://storage.googleapis.com/a1aa/image/JNMERwhnxZpjGZlfPYwu0ACrzJ7e9mvgzZMki1yblVfm76nnA.jpg" alt="Image de l'ordonnance de Albert Einstein" />
                    <h3 class="card-name">Anas Lahboub</h3>
                    <p class="card-text">ID: 003</p>
                    <p class="card-text">Date: 2023-10-01</p>
                    <p class="card-text">Statut: Prête</p>
                    <a class="card-link" href="detailcommande.jsp">Détails</a>
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