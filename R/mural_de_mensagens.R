criar_mensagem_mural <- function(titulo,
                                 texto,
                                 link,
                                 data,
                                 badge) {

  glue::glue(
    '<div class="card text-center">
<div class="card-header">
{format(data, "%d/%m/%Y")} - {titulo} {badge}
</div>
<div class="card-body">

<p class="card-text">{texto}</p>
<a href="{link}" class="btn btn-primary">Clique aqui</a></div>
</div>'
  )

}
