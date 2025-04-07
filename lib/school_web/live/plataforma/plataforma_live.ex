defmodule SchoolWeb.Plataforma.PlataformaLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.MenuComponents

  def render(assigns) do
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
                        <li><a href="#" class="text-red-800 hover:text-red-900">Boas-vindas</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Constitucional</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Administrativo</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Civil</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Processual Civil</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Penal</a></li>
                        <li><a href="#" class="text-slate-700 hover:text-red-900">Direito Processual Penal</a></li>
                    </ul>
                </div>
                
            </aside>
            
            <!-- Overlay para o sidebar no mobile -->
            <div id="sidebar-overlay" class="fixed inset-0 bg-black bg-opacity-50 z-10 hidden md:hidden"></div>
            
            <!-- Conteúdo principal -->
            <main class="w-full md:w-3/4 lg:w-4/5 p-4 md:p-6">
                <article>
                    <!-- Cabeçalho do artigo -->
                    <header class="mb-8">
                        <h1 class="text-3xl font-bold mb-4">Boas-vindas à Escola Aberta de Direito</h1>
                    </header>
                    
                    <!-- Conteúdo do artigo -->
                    <div class="prose max-w-none">
                        <p class="mb-4">Olá! Seja muito bem-vindo à <span class="font-bold">Plataforma de Estudo da Escola Aberta de Direito</span>!</p>
                        <p class="mb-4">
                          É uma alegria ter você aqui. Nosso objetivo é tornar o estudo do Direito mais acessível, 
                          eficiente e agradável, seja você um estudante iniciante ou alguém se preparando para concursos e exames jurídicos.
                        </p>
                        
                        <p class="mb-4">
                          Na <span class="font-bold">Escola Aberta de Direito</span>, você encontrará um ambiente feito especialmente para quem quer aprender de verdade, 
                          com recursos que facilitam a compreensão e a fixação dos conteúdos jurídicos mais importantes.
                        </p>

                        <h2 class="text-2xl font-bold mt-8 mb-4">Por que escolher a Escola Aberta de Direito?</h2>
                        <p class="mb-4">
                          Aqui estão alguns motivos que fazem da nossa plataforma uma excelente aliada nos seus estudos:
                        </p>
                        
                        <ul class="list-disc pl-6 mb-6 space-y-2">
                            <li>✅ <span class="font-bold">Conteúdo gratuito</span> – Aprenda sem pagar nada. Nosso compromisso é com a democratização do conhecimento.</li>
                            <li>✅ <span class="font-bold">Conteúdo interativo</span> – Estude de forma dinâmica com quizzes, mapas mentais, flashcards e outros recursos que estimulam a aprendizagem ativa.</li>
                            <li>✅ <span class="font-bold">Abordagem completa</span> – Aqui você encontra o tripé essencial: lei seca, jurisprudência e doutrina, tudo organizado e explicado de forma clara.</li>
                            <li>✅ <span class="font-bold">Resolução de questões</span> – Treine com questões comentadas de concursos, OAB e outras avaliações, com foco no que realmente cai nas provas.</li>
                            <li>✅ <span class="font-bold">Dicas de memorização</span> – Técnicas práticas para ajudar você a lembrar o que estudou e melhorar seu desempenho nos estudos.</li>
                        </ul>
                        
                        <p class="mb-4">
                          Estamos apenas começando, e temos muitos planos para crescer junto com você. 
                          Explore a plataforma, descubra nossos recursos e comece a transformar sua forma de estudar Direito.
                        </p>
                        
                        <p class="mb-4 font-bold">Bons estudos e conte sempre conosco!</p>
                        
                    </div>
                </article>
            </main>
        </div>
    </div>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end