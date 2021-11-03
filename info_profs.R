library(magrittr)
tibble::tribble(
  ~ url_foto,
  ~ nome,
  ~ atividade,
  ~ url_github,
  ~ url_twitter,
  ~ url_facebook,
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
    url_site = "https://beatrizmilz.com/",
    mini_bio = "- Doutoranda em Ciência Ambiental na
    Universidade de São Paulo (PROCAM/IEE/USP). <br>
    - Instrutora de tidyverse certificada pela RStudio.<br>
    - Co-organizadora da R-Ladies São Paulo, uma comunidade que tem como
    objetivo promover a diversidade de gênero na comunidade da linguagem R. <br>
    "
  ) %>%

  # Infos Carol

  tibble::add_row(
    url_foto = "https://pbs.twimg.com/profile_images/858423807022964736/x1Sjv9bJ_400x400.jpg",
    nome = "Ana Carolina Moreno",
    atividade = "Monitora",
    url_github = "https://github.com/anacarolinamoreno",
    url_twitter = "https://twitter.com/anarina",
    url_facebook = "https://www.facebook.com/anacarolinamoreno/",
    mini_bio = "- Jornalista de dados, focada atualmente na cobertura da pandemia com análises de dados usando R. <br>
    - Participa do R-Ladies SP desde janeiro de 2019."
  ) %>%

  # Infos Tereza

  tibble::add_row(
    url_foto = "https://avatars.githubusercontent.com/u/83192430?v=4",
    nome = "Tereza Lacerda",
    atividade = "Monitora",
    url_github = "https://github.com/terezalacerda",
    url_twitter = "https://twitter.com/tereza_lacerda",
    mini_bio = "- Estudante de Estatística na Universidade de São Paulo (IME/USP) <br>
- Estagiária na <a href='https://curso-r.com/'>Curso-R</a> <br>
- Interessada em Análise de Dados Musicais"
  ) %>%







  readr::write_rds("info_profs.Rds")
