defmodule SchoolWeb.Plataforma.DireitoPenalLive do
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
                    %{path: "/direito-penal", icon: "book-open", label: "Direito Penal"}
                ]} />
            </aside>

            <div class="flex-1 mx-auto max-w-4xl">
                <div class="dark:bg-gray-800 px-3 py-6">
                    <.header>
                        Direito Penal
                        <:subtitle>Introdução</:subtitle>
                    </.header>
                    <p>
                      O Direito Penal tem por objeto as normas que disciplinam o <span id="direito-punir" class=" cursor-pointer text-blue-500 hover:text-blue-600" phx-click="toggle_direito_punir">direito de punir</span> por meio de uma sanção penal.
                    </p>
                    <%= if @toggle_direito_punir == :true do %>
                        <p class="mt-2 text-sm text-gray-600">(O quê?, Quem?, Quando?, Por quê?, Onde?, Como?, Quanto?)</p>
                    <% end %>

                    <.simple_form for={@tipo_infracao_penal_form} phx-change="get_tipo_infracao_penal">
                        <.input
                            field={@tipo_infracao_penal_form[:tipo_infracao_penal]}
                            type="select"
                            label="Qual o tipo de infração penal?"
                            options={["", "Contravenção Penal", "Crime"]}
                        />
                    </.simple_form>

                    <%= if @tipo_infracao_penal == "Contravenção Penal" do %>
                        <p class="mt-2 text-sm text-gray-600">Juizado Especial</p>
                    <% end %>
                    <%= if @tipo_infracao_penal == "Crime" do %>
                        <p class="mt-2 text-sm text-gray-600">Verificar tipo de crime.</p>
                    <% end %>
                </div>
            </div>
        </div>
    </div>
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

    {:ok, socket}
  end

  def handle_event("toggle_direito_punir", _params, socket) do
    socket =
      socket
      |> assign(:toggle_direito_punir, not socket.assigns.toggle_direito_punir)

    {:noreply, socket}
  end

  def handle_event("get_tipo_infracao_penal", %{"tipo_infracao_penal" => tipo_infracao_penal}, socket) do
    socket =
      socket
      |> assign(:tipo_infracao_penal, tipo_infracao_penal)

    {:noreply, socket}
  end

end