defmodule SchoolWeb.MenuComponents do
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
end
