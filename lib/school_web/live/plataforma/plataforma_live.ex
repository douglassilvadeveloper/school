defmodule SchoolWeb.Plataforma.PlataformaLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="relative isolate pt-20">
        <div class="flex mb-4 border-t border-gray-200 h-screen">
            <aside id="default-sidebar" class="left-0 z-40 w-64 transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
                <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
                    <ul class="space-y-2 font-medium">
                        <li>
                            <.link navigate={~p"/plataforma"} class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <.icon name="hero-home" class="h-5 w-5" />
                            <span class="ms-3">Início</span>
                            </.link>
                        </li>
                        <li>
                            <.link navigate={~p"/maintenance"} class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <.icon name="hero-academic-cap" class="h-5 w-5" />
                            <span class="flex-1 ms-3 whitespace-nowrap">Direito Constitucional</span>
                            </.link>
                        </li>
                    </ul>
                </div>
            </aside>

            <div class="flex-1">
                <div class="dark:bg-gray-800 px-3 py-6">
                    <p class="dark:text-gray-500">
                        Olá, seja bem-vindo à Plataforma de Aprendizagem da Escola Aberta de Direito!
                    </p>
                </div>
            </div>
        </div>
    </div>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end