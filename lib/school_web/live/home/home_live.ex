defmodule SchoolWeb.Home.HomeLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-red-900 text-slate-300 py-20">
        <div class="container mx-auto px-4 text-center">
            <h1 class="text-4xl md:text-5xlfont-bold mb-6 inline bg-gradient-to-r from-gray-200 via-white to-gray-200 bg-clip-text font-display text-5xl tracking-tight text-transparent">
              Aprenda Direito de forma gratuita!
            </h1>
            <p class="text-xl mb-8 max-w-2xl mx-auto">Entenda as normas jurídicas mesmo sem ter conhecimento na área.</p>
            <.link navigate={~p"/plataforma"} class="rounded-full bg-gray-200 py-2 px-4 text-sm font-semibold text-slate-900 hover:bg-gray-100 focus:outline-none focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-orange-300/50 active:bg-orange-500">
                Entre em nossa plataforma
            </.link>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-16 bg-white">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-center mb-12">Tudo o que você precisa em um só lugar</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-gray-50 p-6 rounded-lg shadow-md">
                    <div class="w-12 h-12 bg-red-800 rounded-full flex items-center justify-center mb-4 text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z" />
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-2">Conteúdo Aprofundado</h3>
                    <p class="text-slate-600">Material de estudo detalhado e completo, abrangendo lei seca, jurisprudência e doutrina.</p>
                </div>
                
                <div class="bg-gray-50 p-6 rounded-lg shadow-md">
                    <div class="w-12 h-12 bg-red-800 rounded-full flex items-center justify-center mb-4 text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-2">Guias Interativos</h3>
                    <p class="text-slate-600">Conteúdo interativo para a construção de uma linha lógica de raciocínio.</p>
                </div>
                
                <div class="bg-gray-50 p-6 rounded-lg shadow-md">
                    <div class="w-12 h-12 bg-red-800 rounded-full flex items-center justify-center mb-4 text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-2">Questões e Dicas</h3>
                    <p class="text-slate-600">Resolução de questões de concurso e dicas de memorização.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Latest Updates Section -->
    <section class="py-16 bg-gray-100">
        <div class="container mx-auto px-4">
            <h2 class="text-3xl font-bold text-center mb-12">Últimas atualizações</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Article 1 -->
                <article class="bg-white rounded-lg overflow-hidden shadow-md transition-transform duration-300 hover:shadow-lg hover:scale-105">
                    <img src={~p"/images/direito-1.jpg"} alt="Imagem de Guia" class="w-full h-48 object-cover" />
                    <div class="p-6">
                        <span class="text-red-900 text-sm font-semibold">Direito Constitucional</span>
                        <h3 class="text-xl font-bold mt-2 mb-3">Entenda os principais pontos da Teoria da Constituição</h3>
                        <p class="text-slate-600 mb-4">Um guia completo para iniciantes que desejam aprender o essencial da Teoria da Constituição.</p>
                        <.link navigate={~p"/plataforma"} class="text-red-900 font-medium hover:underline">Continuar lendo →</.link>
                    </div>
                </article>
                
                <!-- Article 2 -->
                <article class="bg-white rounded-lg overflow-hidden shadow-md transition-transform duration-300 hover:shadow-lg hover:scale-105">
                    <img src={~p"/images/direito-2.jpg"} alt="Imagem de Guia" class="w-full h-48 object-cover" />
                    <div class="p-6">
                        <span class="text-red-900 text-sm font-semibold">Direito Penal</span>
                        <h3 class="text-xl font-bold mt-2 mb-3">Guia de estudo essencial do Direito Penal</h3>
                        <p class="text-slate-600 mb-4">Entenda de forma simples e objetiva como funciona o direito de punir do Estado.</p>
                        <.link navigate={~p"/plataforma"} class="text-red-900 font-medium hover:underline">Continuar lendo →</.link>
                    </div>
                </article>
                
                <!-- Article 3 -->
                <article class="bg-white rounded-lg overflow-hidden shadow-md transition-transform duration-300 hover:shadow-lg hover:scale-105">
                    <img src={~p"/images/direito-3.jpg"} alt="Imagem de Guia" class="w-full h-48 object-cover" />

                    <div class="p-6">
                        <span class="text-red-900 text-sm font-semibold">Direito</span>
                        <h3 class="text-xl font-bold mt-2 mb-3">Os fundamentos do pensamento jurídico</h3>
                        <p class="text-slate-600 mb-4">Domine os conceitos e ideias fundamentais do Direito.</p>
                        <.link navigate={~p"/plataforma"} class="text-red-900 font-medium hover:underline">Continuar lendo →</.link>
                    </div>
                </article>
            </div>
            
            <div class="text-center mt-12">
                <.link navigate={~p"/plataforma"} class="bg-red-900 text-white px-6 py-3 rounded-lg font-medium hover:bg-red-800 transition duration-300">Veja mais em nossa plataforma</.link>
            </div>
        </div>
    </section>

    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end