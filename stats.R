url <- "https://docs.google.com/spreadsheets/d/1IKeS3fyPlGPnxtJozxI9nlAYG6NcxF1kfP8g-mKpYX4/edit?usp=sharing"

tab <- googlesheets4::read_sheet(url, skip = 8)

tab |> janitor::clean_names() |> 
  dplyr::filter(status != "Não inscrito") |> 
 # dplyr::count(status) |> 
  #janitor::adorn_totals() |>
  janitor::tabyl(status) |> 
  janitor::adorn_totals() |> 
  dplyr::mutate(percent = round(percent*100,1))
