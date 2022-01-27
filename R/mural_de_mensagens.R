criar_mensagem_mural <- function(titulo,
                                 texto,
                                 link,
                                 texto_link,
                                 data) {
  glue::glue(
    '<div class="card text-center">
<div class="card-header">
{data} - {titulo}
</div>
<div class="card-body">

<p class="card-text">{titulo}</p>
<a href="{link}" class="btn btn-primary">{texto_link}</a></div>
</div>'
  )

}
