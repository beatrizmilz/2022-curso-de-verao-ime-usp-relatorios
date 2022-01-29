pessoas_inscritas_verao  <-
  readr::read_delim(
    "inscricoes/semana4_prof_lista_21_relatorios_reprodutiveis_r.csv",
    delim = ";",
    escape_double = FALSE,
    col_types = readr::cols(
      ...1 = readr::col_skip(),
      ...6 = readr::col_skip(),
      ...7 = readr::col_skip()
    ),
    trim_ws = TRUE,
    skip = 5
  ) |>
  janitor::clean_names() |>
  dplyr::rename(email = e_mail)


pessoas_inscritas_extensao <-
  readr::read_csv(
    "inscricoes/courseid_2991_participants.csv") |>
  janitor::clean_names() |>
  dplyr::rename(email = endereco_de_email)


pessoas_nao_cadastradas_extensao <- pessoas_inscritas_verao |>
  dplyr::anti_join(pessoas_inscritas_extensao , by = "email")



unique(pessoas_nao_cadastradas_extensao$email) |> writeLines()
