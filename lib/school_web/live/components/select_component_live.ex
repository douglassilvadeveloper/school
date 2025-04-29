defmodule SchoolWeb.Components.SelectComponentLive do
  use SchoolWeb, :live_component

  @impl true
  def update(assigns, socket) do
    socket =
      socket
      |> assign_new(:selected, fn -> nil end)
      |> assign(assigns)

    {:ok, socket}
  end

  @impl true
  def handle_event("select_changed", %{"object" => selected}, socket) do
    {:noreply, assign(socket, selected: selected)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="mb-2">
      <p class="mb-2 font-semibold">{@label}</p>

      <form phx-change="select_changed" phx-target={@myself}>
        <select name="object" class="border p-1 rounded w-full">
          <option value="">-- Selecione --</option>
          <%= for {key, _text} <- @options do %>
            <option value={key} selected={@selected == key}>
              <%= key %>
            </option>
          <% end %>
        </select>
      </form>

      <div class="mt-2">
        <%= if @selected do %>
          <p><%= @options[@selected] %></p>
        <% else %>
          <p class="text-gray-500">Nenhuma opção selecionada.</p>
        <% end %>
      </div>
    </div>
    """
  end
end
