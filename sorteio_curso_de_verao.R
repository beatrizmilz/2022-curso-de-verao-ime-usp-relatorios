# Ler a base ------
url <-
  "https://docs.google.com/spreadsheets/d/1oUzmd5RTULRsHvaO8ap0VzLG7pcz85D80tUumkz759g/edit?resourcekey#gid=1720551798"

df_raw <- googlesheets4::read_sheet(url)


# Organizar a base --------
df <- df_raw |> janitor::clean_names()

respostas_validas <- df |>
  dplyr::filter(
    possuo_conhecimento_basico_ou_superior_sobre_r == "Sim",
    tenho_18_anos_ou_mais_e_me_identifico_como_mulher_negra_preta_ou_parda == "Concordo",
    tenho_disponibilidade_de_data_e_horario_para_realizar_o_curso_de_forma_sincrona_ao_vivo_via_web == "Concordo",
    declaro_que_caso_seja_contemplada_com_a_bolsa_do_curso_e_nao_realize_a_inscricao_no_site_do_ime_usp_e_nem_encaminhe_as_organizadoras_do_sorteio_o_boleto_de_pagamento_em_48h_perco_o_direito_de_usufruir_da_bolsa == "Concordo",
    declaro_que_compreendo_que_a_nao_concordancia_das_afirmacoes_impedem_a_minha_participacao_no_sorteio_e_que_declaracoes_falsas_me_impedem_de_usufruir_da_bolsa == "Concordo"
  ) |>
  dplyr::mutate(
    curso_vis = stringr::str_detect(voce_deseja_participar_do_sorteio_para_qual_curso, "NOITE"),
    curso_rmd = stringr::str_detect(voce_deseja_participar_do_sorteio_para_qual_curso, "MANHÃ")
  )

# Filtrar ------
participantes_vis <-
  respostas_validas |> dplyr::filter(curso_vis == TRUE)


participantes_rmd <-
  respostas_validas |> dplyr::filter(curso_rmd == TRUE)

# Sortear -----
participantes_vis |> dplyr::select(nome_completo, endereco_de_e_mail) |>
  dplyr::slice_sample(n = 2)


participantes_rmd |> dplyr::select(nome_completo, endereco_de_e_mail) |>
  dplyr::slice_sample(n = 2)



# Enviar email para todo mundo

dplyr::distinct(df, endereco_de_e_mail) |>
  dplyr::pull() |>
  writeLines()
