defmodule SchoolWeb.DireitoPenal.DireitoPenalLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <.sala titulo="Direito Penal" subtitulo="A infração penal, o direito de punir e a pena"/>
    <.principal>
      <.coluna_direita>
        <.doutrina>
            <p class="mb-2">O Direito Penal pode ser entendido como a parte do Direito que cuida do <span class="font-bold">direito de punir</span>.</p>
            <p class="mb-2">O direito de punir, por sua vez, nasce a partir do momento em que se conclui que houve uma <span class="font-bold">infração penal</span>.</p>
            <p class="mb-2">E, por fim, para se concluir pela ocorrência de uma infração penal, deve-se definir quais <span class="font-bold">normas penais</span> devem ser aplicadas:</p>
            <ul class="mb-2 px-4 list-disc list-inside">
              <li>As normas penais brasileiras ou estrangeiras?</li>
              <li>As normas penais do Código Penal ou de outras Legislações Penais?</li>
            </ul>
            <p class="mb-2">Em suma, para se aplicar uma pena a alguém, temos que percorrer este caminho:</p>
            <p class="mb-2 p-4 bg-blue-50 rounded">normas penais (gerais ou específicas) <span aria-hidden="true">&rarr;</span> infração penal  <span aria-hidden="true">&rarr;</span> direito de punir (punibilidade)<span aria-hidden="true">&rarr;</span> pena</p>
        </.doutrina>
        <.questoes>
        </.questoes>
      </.coluna_direita>

      <.coluna_esquerda>
        <.legislacao>
            <p class="mb-2">Decreto-Lei Nº 2.848, de 7 de dezembro de 1940 (Código Penal)</p>
            <p class="mb-2">Art. 12 - As regras gerais deste Código aplicam-se aos fatos incriminados por lei especial, se esta não dispuser de modo diverso.</p>
        </.legislacao>
        <.jurisprudencia>
        </.jurisprudencia>
      </.coluna_esquerda>
    </.principal>
    """
  end

  def mount(_params, _session, socket) do
    changeset_tipo_infracao_penal = %{} |> to_form()
    changeset_tipo_crime = %{} |> to_form()

    socket = 
     socket
     |> assign(:tipo_infracao_penal_form, changeset_tipo_infracao_penal)
     |> assign(:tipo_infracao_penal, "")
     |> assign(:tipo_tipo_crime_form, changeset_tipo_crime)
     |> assign(:tipo_tipo_crime, "")
     |> assign(:toggle_direito_punir, :false)
     |> assign(:toggle_direito_punir_abstrato, :false)
     |> assign(:toggle_direito_punir_concreto, :false)

    {:ok, socket}
  end

  def handle_event("toggle_direito_punir", _params, socket) do
    socket =
      socket
      |> assign(:toggle_direito_punir, !socket.assigns.toggle_direito_punir)

    {:noreply, socket}
  end

  def handle_event("toggle_direito_punir_abstrato", _params, socket) do
    socket =
      socket
      |> assign(:toggle_direito_punir_abstrato, !socket.assigns.toggle_direito_punir_abstrato)

    {:noreply, socket}
  end

  def handle_event("toggle_direito_punir_concreto", _params, socket) do
    socket =
      socket
      |> assign(:toggle_direito_punir_concreto, !socket.assigns.toggle_direito_punir_concreto)

    {:noreply, socket}
  end

  def handle_event("get_tipo_infracao_penal", %{"tipo_infracao_penal" => tipo_infracao_penal}, socket) do
    socket =
      socket
      |> assign(:tipo_infracao_penal, tipo_infracao_penal)

    {:noreply, socket}
  end

end