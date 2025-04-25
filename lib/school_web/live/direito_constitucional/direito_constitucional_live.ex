defmodule SchoolWeb.DireitoConstitucional.DireitoConstitucionalLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <.sala titulo="Direito Constitucional" subtitulo="O Estado e os direitos fundamentais"/>
    <.principal>
      <.coluna_direita>
        <.doutrina>
            <p class="mb-2">O Direito Constitucional é o ramo jurídico que cuida do Estado e dos direitos fundamentais das pessoas.</p>
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