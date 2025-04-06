defmodule SchoolWeb.Plataforma.PlataformaLiveCopy do
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
                    <p class="mb-2 dark:text-gray-500">
                        Olá, seja bem-vindo à <span class="font-bold">Escola Aberta de Direito</span>!
                    </p>
                    <p class="mb-2 dark:text-gray-500">
                        É com imenso prazer que apresentamos a nossa <span class="font-bold">Plataforma de Aprendizagem</span>.
                    </p>
                    <p class="mb-2 dark:text-gray-500">
                        Aqui você terá acesso a um conteúdo interativo totalmente focado em proporcionar a você a formação de uma boa base de conhecimento sobre o mundo jurídico. 
                    </p>
                    <p class="mb-2 dark:text-gray-500">
                        Fique à vontade para navegar pelo menu ao lado.
                    </p>
                    <p class="mb-2 dark:text-gray-500">
                        Tenha um excelente estudo!
                    </p>
                </div>
            </div>
        </div>
    </div>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end