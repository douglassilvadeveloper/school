defmodule SchoolWeb.PlataformaComponents do
  use Phoenix.Component

  alias SchoolWeb.CoreComponents

  @doc """
  Renders a dynamic menu based on a list of paths and icons.

  ## Example usage:

      <MenuComponents.menu items={[
        %{path: "/plataforma", icon: "home", label: "Início"},
        %{path: "/plataforma/direito", icon: "book-open", label: "Direito"},
        %{path: "/plataforma/direito-penal", icon: "book-open", label: "Direito Penal"}
      ]} />
  """
  def menu(assigns) do
    ~H"""
    <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
        <ul class="space-y-2 font-medium">
            <%= for item <- @items do %>
                <li>
                    <.link navigate={item.path} class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <CoreComponents.icon name="hero-#{item.icon}" class="h-5 w-5" />
                        <span class="ms-3"><%= item.label %></span>
                    </.link>
                </li>
            <% end %>
        </ul>
    </div>
    """
  end

  slot :inner_block, required: true
  def plataforma(assigns) do
    ~H"""
    <!-- Layout principal com sidebar e conteúdo -->
    <div class="container mx-auto px-4 py-8">
      <div class="flex flex-wrap md:flex-nowrap">
        <!-- Botão para abrir sidebar no mobile -->
        <button id="sidebar-toggle" class="fixed z-10 bottom-4 right-4 md:hidden bg-red-900 text-white p-3 rounded-full focus:outline-none">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            </svg>
        </button>
        <%= render_slot(@inner_block) %>
        </div>
    </div>
    """
  end 

  @doc """
  Renders a dynamic menu based on a list of paths and icons.

  ## Example usage:

      <MenuComponents.aside_plataforma items={[
        %{path: "/plataforma", text: "Boas-vindas", active: "active"},
        %{path: "/plataforma/direito", text: "Direito", active: ""},
        %{path: "/plataforma/direito-penal", text: "Direito Penal", active: ""}
      ]} />
  """
  def aside_plataforma(assigns) do
    ~H"""
    <!-- Sidebar (inicialmente fechado no mobile) -->
    <aside id="sidebar" class="sidebar sidebar-closed md:sidebar-open w-full md:w-1/4 lg:w-1/5 fixed md:static top-0 left-0 h-full md:h-auto bg-white p-6 z-20 md:mr-8">
      <div class="flex justify-between items-center mb-6 md:hidden">
          <h2 class="text-xl font-bold">Menu</h2>
          <button id="close-sidebar" class="focus:outline-none">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
          </button>
      </div>
      <div class="mb-8">
          <ul class="space-y-2">
              <%= for item <- @items do %>
                <li><.link navigate={item.path} class={["menu-plataforma text-slate-700 hover:text-red-900", item.active]}><%= item.text %></.link></li>
              <% end %>
          </ul>
      </div>
    </aside>
    """
  end

  attr :text, :string, required: true
  attr :handle_event, :string, required: true
  def toggle_text(assigns) do
    ~H"""
      <span class="cursor-pointer text-blue-500 hover:text-blue-600" phx-click={@handle_event}><%= @text %></span>
    """
  end

  slot :inner_block, required: true
  attr :title, :string, required: true
  def main_plataforma(assigns) do
    ~H"""
    <!-- Conteúdo principal -->
    <main class="w-full md:w-3/4 lg:w-4/5 p-4 md:p-6">
        <article>
            <!-- Cabeçalho do artigo -->
            <header class="mb-8">
                <h1 class="text-3xl font-bold mb-4"><%= @title %></h1>
            </header>
            
            <!-- Conteúdo do artigo -->
            <div class="prose max-w-none">
              <%= render_slot(@inner_block) %>
            </div>
        </article>
    </main>
    """ 
  end
end
