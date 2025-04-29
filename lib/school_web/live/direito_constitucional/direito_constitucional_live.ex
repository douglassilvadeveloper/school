defmodule SchoolWeb.DireitoConstitucional.DireitoConstitucionalLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.Components.SelectComponentLive

  def render(assigns) do
    ~H"""
    <.sala titulo="Direito Constitucional" subtitulo="O Estado e os direitos fundamentais"/>
    <.principal>
      <.coluna_esquerda>
        <.doutrina>
            <p class="mb-2">O Direito Constitucional é o ramo jurídico que cuida do <span class="font-bold">Estado e dos direitos fundamentais das pessoas (individual ou coletivamente)</span>.</p>
            <.p texto="Tais normas são colocadas, em regra, em um documento solene chamado Constituição." />
            <.p texto="No Brasil, tivemos várias Constituições." />
            <.interagindo>
              <.live_component 
                module={SelectComponentLive} 
                id="constituicao_brasileira_select"
                label="Escolha o ano de uma Constituição brasileira:"
                options={
                %{
                  "1824" => "Outorgada por Dom Pedro I, estabeleceu a monarquia constitucional e o poder moderador no Brasil Império.",
                  "1891" => "Proclamou a República e instituiu o presidencialismo, inspirada na Constituição dos EUA.",
                  "1934" => "Criada após a Revolução de 1930, introduziu avanços sociais e o voto secreto e feminino.",
                  "1937" => "Outorgada por Getúlio Vargas, centralizou o poder e instaurou o Estado Novo, de caráter autoritário.",
                  "1946" => "Restabeleceu a democracia após o Estado Novo, com foco em direitos civis e políticos.",
                  "1967" => "Institucionalizou o regime militar, restringindo liberdades e concentrando o poder no Executivo.",
                  "1988" => "Conhecida como “Constituição Cidadã”, marcou o retorno da democracia e ampliou os direitos individuais e sociais."
                }
              }/>
            </.interagindo>
            
            <.p texto="Contudo, devemos destacar que, por vezes, pode haver, na Constituição, normas que não diz respeito nem ao Estado e nem a direitos fundamentais." />
            <p class="mb-2">A partir dessa constatação é que podemos dizer que existem normas <.span_bold texto="materialmente"/> constitucionais e normas <.span_bold texto="formalmente"/> constitucionais.</p>
            <.interagindo>
              <.live_component 
                module={SelectComponentLive} 
                id="tipo_norma_constitucional_select"
                label="Escolha um tipo de norma constitucional:"
                options={
                %{
                  "Normas materialmente constitucionais" => "Tratam do Estado ou de direitos fundamentais e podem estar na Constituição ou fora dela.",
                  "Normas formalmente constitucionais" => "Não tratam nem do Estado nem de direitos fundamentais, mas estão na Constituição.",
                }
              }/>
            </.interagindo>
        </.doutrina>
        <.questoes>
        </.questoes>
      </.coluna_esquerda>

      <.coluna_direita>
        <.legislacao>
        </.legislacao>
        <.jurisprudencia>
        </.jurisprudencia>
      </.coluna_direita>
    </.principal>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end