library(magrittr)
tibble::tribble(
  ~ url_foto,
  ~ nome,
  ~ atividade,
  ~ url_github,
  ~ url_twitter,
  ~ url_facebook,
  ~ url_linkedin,
  ~ url_site,
  ~ mini_bio
) %>%


  # Infos BEA
  tibble::add_row(
    url_foto = "https://beatrizmilz.com/about/sidebar/avatar.jpeg",
    nome = "Beatriz Milz",
    atividade = "Docente",
    url_github = "https://github.com/beatrizmilz",
    url_twitter = "https://twitter.com/BeaMilz",
    url_linkedin = "https://www.linkedin.com/in/beatrizmilz/",
    url_site = "https://beatrizmilz.com/",
    mini_bio = "- Doutoranda em Ciência Ambiental na
    Universidade de São Paulo (PROCAM/IEE/USP). <br>
    - <a href='https://education.rstudio.com/trainers/people/milz+beatriz/'>Instrutora de tidyverse certificada pela RStudio</a>.<br>
    - Co-organizadora da <a href='https://linktr.ee/rladies_sp'>R-Ladies SP</a>, uma comunidade que tem como
    objetivo promover a diversidade de gênero na comunidade da linguagem R. <br>
    "
  ) %>%

  # Infos Carol

  tibble::add_row(
    url_foto = "https://pbs.twimg.com/profile_images/858423807022964736/x1Sjv9bJ_400x400.jpg",
    nome = "Ana Carolina Moreno",
    atividade = "Monitoria",
    url_github = "https://github.com/anacarolinamoreno",
    url_twitter = "https://twitter.com/anarina",
    url_facebook = "https://www.facebook.com/anacarolinamoreno/",
    url_linkedin = "https://www.linkedin.com/in/anacarolinamoreno/",
    mini_bio = "- Jornalista de dados, focada atualmente na cobertura da pandemia com análises de dados usando R. <br>
    - Participa da <a href='https://linktr.ee/rladies_sp'>R-Ladies SP</a> desde janeiro de 2019."
  ) %>%

  # Infos Tereza

  tibble::add_row(
    url_foto = "https://avatars.githubusercontent.com/u/83192430?v=4",
    nome = "Tereza Lacerda",
    atividade = "Monitoria",
    url_github = "https://github.com/terezalacerda",
    url_twitter = "https://twitter.com/tereza_lacerda",
    url_linkedin = "https://www.linkedin.com/in/terezalacerda/",
    mini_bio = "- Estudante de Estatística na Universidade de São Paulo (IME/USP) <br>
- Estagiária na <a href='https://curso-r.com/'>Curso-R</a> <br>
- Interessada em Análise de Dados Musicais"
  ) %>%

  # Infos Alan
  tibble::add_row(
    url_foto = "img/alan.jpeg",
    nome = "Alan da Silva",
    atividade = "Monitoria",
    url_github = "https://github.com/Alandasilva",
    url_linkedin = "https://www.linkedin.com/in/alan-silva-341600196/",
    url_facebook = "https://www.facebook.com/profile.php?id=100003267154291",
    mini_bio = "- Doutorando em Estatística pela Universidade de São Paulo (IME/USP) <br>
- Participou da manutenção/atualizações do pacote <a href='https://ipeagit.github.io/geobr/'>geobr</a>, um pacote R que tem como objetivo facilitar o acesso de base de dados espaciais oficiais do Brasil."
  ) %>%





  readr::write_rds("info_profs.Rds")
