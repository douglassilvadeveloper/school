defmodule SchoolWeb.Plataforma.DireitoLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.PlataformaComponents

  def render(assigns) do
    ~H"""
    <PlataformaComponents.plataforma>
    
      <PlataformaComponents.aside_plataforma items={[
          %{path: "/plataforma", text: "Boas-vindas", active: ""},
          %{path: "/plataforma/direito", text: "Direito", active: "active"},
          %{path: "/maintenance", text: "Direito Constitucional", active: ""},
          %{path: "/maintenance", text: "Direito Administrativo", active: ""},
          %{path: "/maintenance", text: "Direito Civil", active: ""},
          %{path: "/maintenance", text: "Direito Processual Civil", active: ""},
          %{path: "/plataforma/direito-penal", text: "Direito Penal", active: ""},
          %{path: "/maintenance", text: "Direito Processual Penal", active: ""}
      ]} />
      
      <PlataformaComponents.main_plataforma title="Introdução ao Estudo do Direito">
        <p>A primeira ideia que devemos para estudar o Direito diz respeito à necessidade de compreendermos a importância das <span class="font-bold">nomenclaturas</span>.</p>

        <p>Para analisarmos as nomenclaturas, podemos seguir dois caminhos:</p>
                  
        <ul class="list-disc pl-6 mb-6 space-y-2">
            <li>Partir do <span class="font-bold">nome</span> para o se chegar ao <span class="font-bold">objeto</span></li>
            <li>Partir do <span class="font-bold">objeto</span> para se chegar ao <span class="font-bold">nome</span></li>
        </ul>

        <p>Cada um desses caminhos tem vantagens e desvantagens.</p>

        <p>Abaixo segue uma imagem ilustrativa dessas técnicas.</p>

        <div class="flex justify-center my-4 ">
          <img src={~p"/images/analise-nomenclaturas.png"} alt="Análise de Nomenclaturas" class="h-192 w-full rounded-md" />
        </div>

        <p>
          Dito isso, a primeira analise que faremos diz respeito à diferença entre 
          <span class="font-bold">Direito</span> com "D" maiúsculo e <span class="font-bold">direito</span> com "d" minúsculo.
        </p>
      
      </PlataformaComponents.main_plataforma>

    </PlataformaComponents.plataforma>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end