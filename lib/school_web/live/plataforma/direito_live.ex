defmodule SchoolWeb.Plataforma.DireitoLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.MenuComponents

  def render(assigns) do
    ~H"""
    <div class="relative isolate pt-20">
        <div class="flex mb-4 border-t border-gray-200 h-screen">
            <aside id="default-sidebar" class="left-0 z-40 w-64 transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
                <MenuComponents.menu items={[
                    %{path: "/plataforma", icon: "home", label: "Início"},
                    %{path: "/plataforma/direito", icon: "book-open", label: "Direito"},
                    %{path: "/plataforma/direito-penal", icon: "book-open", label: "Direito Penal"}
                ]} />
            </aside>

            <div class="flex-1 mx-auto max-w-4xl">
                <div class="dark:bg-gray-800 px-3 py-6">
                    <.header>
                        Direito
                        <:subtitle>Introdução</:subtitle>
                    </.header>
                    <p>
                      A primeira ideia que devemos ter ao analisamos o Direito diz respeito à necessidade de compreendermos a importância das <span class="font-bold">nomenclaturas</span>.
                    </p>
                    <.subtitle>Nomenclaturas</.subtitle>
                    <p>Ao analisarmos as nomenclaturas, podemos seguir dois caminhos:</p>
                  
                    <ul class="max-w-md space-y-1 px-4 text-gray-500 list-disc list-inside dark:text-gray-400">
                        <li>
                            Partir do <span class="font-bold">nome</span> para o se chegar ao <span class="font-bold">objeto</span>
                        </li>
                        <li>
                            Partir do <span class="font-bold">objeto</span> para se chegar ao <span class="font-bold">nome</span>
                        </li>
                    </ul>
                    <p>Cada um desses caminhos tem vantagens e desvantagens.</p>
                    <p>Abaixo segue uma imagem ilustrativa dessas técnicas.</p>
                    <div class="flex justify-center my-4 ">
                      <img src={~p"/images/analise-nomenclaturas.png"} alt="Análise de Nomenclaturas" class="h-96 w-192" />
                    </div>
                    <p>
                      Dito isso, a primeira analise que faremos diz respeito à diferença entre 
                      <span class="font-bold">Direito</span> com "D" maiúsculo e <span class="font-bold">direito</span> com "d" minúsculo.
                      </p>
                    <p></p>
                </div>
            </div>
        </div>
    </div>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end