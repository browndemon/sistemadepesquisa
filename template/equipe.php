<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Sistema de pesquisa</title>
    
    <!-- VIEWPORT -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	
    <!-- JQUERY -->
    <script src="assets/plugins/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
    
    <!-- FONTAWESOME -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    
    <!-- RESET -->
    <link rel="stylesheet" type="text/css" href="assets/css/reset.css">
    
    <!-- CSS ALL -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    
    <!-- FONTES LETRA -->
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans|Raleway" rel="stylesheet">
    
    <!-- CSS PAGINA SEPARADA -->
    <link rel="stylesheet" type="text/css" href="assets/css/equipe.css">
    
</head>
<body>

    <header>
        <div class="ar container">
            <div class="divlogomenu">
                <div class="logo">
                    <a href="#"><img class="logo-desktop" src="assets/img/logo/logo-desktop.png" alt="sistema de pesquisa"></a>
                    
                    <a href="#"><img class="logo-mobile" src="assets/img/logo/logo-mobile.png" alt="sistema de pesquisa"></a>
                    
                    <i class="fas fa-bars btMenu"></i>
                </div>
            </div>


        <!-- MENU -->
            <div class="bgmenu">
                <div id="divMenu" class="container">
                    <nav class="menu">
                        <ul>
                            <li><a href="index.php">Início</a></li>
                            <li><a href="sobre.php">Sobre</a></li>
                            <li><a class="active" href="equipe.php">Equipe</a></li>
                            <li><a href="contato.php">Contato</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>    
    </header>

    
<main>  
    
<section id="banner-ps">
    <div class="bg-ps"></div>
</section>
    
<section class="equipe container">
    <h2>Equipe</h2>
    
    <div class="divequipe">
        <div class="fotoequipe">
            <img src="assets/img/equipe/foto01.jpg"/>
            
            <div class="nome">
                <h4>Nome aqui</h4>
            </div>
            
            <div class="linha"></div>
            
            <div class="redesequipe">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-github-square"></i></a>
            </div>
        </div>
        
        <div class="textoequipe">
            <p><stron>Nome...</stron> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ullamcorper bibendum dui porttitor finibus. Curabitur feugiat nulla egestas lectus fringilla, sed auctor magna semper. Pellentesque non leo vitae ipsum elementum accumsan vitae at dui. Praesent gravida eleifend eros, in varius eros mattis eu. Integer gravida purus eu accumsan venenatis. Suspendisse lorem tellus, iaculis id dignissim at, imperdiet sit.</p>
        </div>
    </div>
    
    <div class="divequipe">
        <div class="fotoequipe">
            <img src="assets/img/equipe/foto01.jpg"/>
            
            <div class="nome">
                <h4>Nome aqui</h4>
            </div>
            
            <div class="linha"></div>
            
            <div class="redesequipe">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-github-square"></i></a>
            </div>
        </div>
        
        <div class="textoequipe">
            <p><stron>Nome...</stron> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ullamcorper bibendum dui porttitor finibus. Curabitur feugiat nulla egestas lectus fringilla, sed auctor magna semper. Pellentesque non leo vitae ipsum elementum accumsan vitae at dui. Praesent gravida eleifend eros, in varius eros mattis eu. Integer gravida purus eu accumsan venenatis. Suspendisse lorem tellus, iaculis id dignissim at, imperdiet sit.</p>
        </div>
    </div>
    
    <div class="divequipe">
        <div class="fotoequipe">
            <img src="assets/img/equipe/foto01.jpg"/>
            
            <div class="nome">
                <h4>Nome aqui</h4>
            </div>
            
            <div class="linha"></div>
            
            <div class="redesequipe">
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="#"><i class="fab fa-github-square"></i></a>
            </div>
        </div>
        
        <div class="textoequipe">
            <p><stron>Nome...</stron> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ullamcorper bibendum dui porttitor finibus. Curabitur feugiat nulla egestas lectus fringilla, sed auctor magna semper. Pellentesque non leo vitae ipsum elementum accumsan vitae at dui. Praesent gravida eleifend eros, in varius eros mattis eu. Integer gravida purus eu accumsan venenatis. Suspendisse lorem tellus, iaculis id dignissim at, imperdiet sit.</p>
        </div>
    </div>
    
</section>
    

</main> 
    
    
<footer>
    
    <section class="footer">
        <div class="bgfooter container">
            <div class="f1">
                <div class="divlogof">
                    <img src="assets/img/logo/logo-mobile.png"/>
                </div>

                <div class="divtextof">
                    <p>Esse projeto foi desenvolvido por: <a class="equipenome" href="#">NOME EQUIPE</a></p>
                </div>
            </div>
        </div>
        
        <div class="divdireitos">
            <p>© 2018 - Sistema de Pesquisa | Todos os direitos reservados.</p>
        </div>
    
    </section>
    
</footer>
    
    
    <script type="text/javascript">
        $(".btMenu").click(function(){
            $("#divMenu").toggle(200);
        });
    </script>
    
</body>
</html>