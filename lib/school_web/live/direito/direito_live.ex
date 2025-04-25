defmodule SchoolWeb.Direito.DireitoLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <.sala titulo="Direito" subtitulo="O grande sistema de causa e consequência"/>
    <.principal>
      <.coluna_direita>
        <.doutrina>
            <p class="mb-2">O Direito, em um nível mais abstrato, é um sistema de causa e consequência.</p>
        </.doutrina>
        <.questoes>
        </.questoes>
      </.coluna_direita>

      <.coluna_esquerda>
        <.legislacao>
        </.legislacao>
        <.jurisprudencia>
        </.jurisprudencia>
      </.coluna_esquerda>
    </.principal>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end