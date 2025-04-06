defmodule SchoolWeb.Plataforma.PlataformaLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.MenuComponents

  def render(assigns) do
    ~H"""
    <!-- Layout principal com sidebar e conteúdo -->
    <div class="container mx-auto px-4 py-8">
        <div class="flex flex-wrap md:flex-nowrap">
            <!-- Botão para abrir sidebar no mobile -->
            <button id="sidebar-toggle" class="fixed z-10 bottom-4 right-4 md:hidden bg-blue-600 text-white p-3 rounded-full shadow-lg focus:outline-none">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
            </button>
            
            <!-- Sidebar (inicialmente fechado no mobile) -->
            <aside id="sidebar" class="sidebar sidebar-closed md:sidebar-open w-full md:w-1/4 lg:w-1/5 fixed md:static top-0 left-0 h-full md:h-auto bg-white p-6 shadow-lg md:shadow-md z-20 md:mr-8">
                <div class="flex justify-between items-center mb-6 md:hidden">
                    <h2 class="text-xl font-bold">Menu</h2>
                    <button id="close-sidebar" class="focus:outline-none">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>
                
                <div class="mb-8">
                    <h3 class="font-semibold text-lg mb-3">Categorias</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-blue-600 hover:text-blue-800">Desenvolvimento Web</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">JavaScript</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">CSS</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">HTML</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">React</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">Vue.js</a></li>
                        <li><a href="#" class="text-gray-700 hover:text-blue-600">Node.js</a></li>
                    </ul>
                </div>
                
                <div class="mb-8">
                    <h3 class="font-semibold text-lg mb-3">Artigos Populares</h3>
                    <ul class="space-y-4">
                        <li>
                            <a href="#" class="flex items-start">
                                <img src="https://via.placeholder.com/50" alt="thumbnail" class="w-12 h-12 rounded object-cover mr-3">
                                <span class="text-sm">Como melhorar o desempenho do seu site</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="flex items-start">
                                <img src="https://via.placeholder.com/50" alt="thumbnail" class="w-12 h-12 rounded object-cover mr-3">
                                <span class="text-sm">Guia completo de SEO para desenvolvedores</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="flex items-start">
                                <img src="https://via.placeholder.com/50" alt="thumbnail" class="w-12 h-12 rounded object-cover mr-3">
                                <span class="text-sm">Introdução ao TypeScript</span>
                            </a>
                        </li>
                    </ul>
                </div>
                
                <div>
                    <h3 class="font-semibold text-lg mb-3">Tags</h3>
                    <div class="flex flex-wrap gap-2">
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">tailwind</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">css</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">responsive</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">web</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">design</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">framework</a>
                        <a href="#" class="bg-gray-200 text-gray-700 text-xs px-2 py-1 rounded-full hover:bg-blue-100 hover:text-blue-600">utility</a>
                    </div>
                </div>
            </aside>
            
            <!-- Overlay para o sidebar no mobile -->
            <div id="sidebar-overlay" class="fixed inset-0 bg-black bg-opacity-50 z-10 hidden md:hidden"></div>
            
            <!-- Conteúdo principal -->
            <main class="w-full md:w-3/4 lg:w-4/5 bg-white rounded-lg shadow-md p-6 md:p-8">
                <article>
                    <!-- Cabeçalho do artigo -->
                    <header class="mb-8">
                        <span class="text-blue-600 text-sm font-semibold">Desenvolvimento Web</span>
                        <h1 class="text-3xl md:text-4xl font-bold mt-2 mb-4">Como Construir Sites com Tailwind CSS</h1>
                        
                        <div class="flex items-center text-gray-500 text-sm mb-4">
                            <span class="flex items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                </svg>
                                05 de Abril, 2025
                            </span>
                            <span class="mx-3">•</span>
                            <span class="flex items-center">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                </svg>
                                10 min de leitura
                            </span>
                        </div>
                        
                        <div class="flex items-center mb-6">
                            <img src="https://via.placeholder.com/40" alt="Author" class="w-10 h-10 rounded-full mr-3">
                            <div>
                                <p class="font-medium">Ana Silva</p>
                                <p class="text-gray-500 text-sm">Desenvolvedora Frontend</p>
                            </div>
                        </div>
                        
                        <img src="https://via.placeholder.com/1200x600" alt="Article feature image" class="w-full h-auto rounded-lg">
                    </header>
                    
                    <!-- Conteúdo do artigo -->
                    <div class="prose max-w-none">
                        <h2 class="text-2xl font-bold mt-8 mb-4">O que é Tailwind CSS?</h2>
                        <p class="mb-4">Tailwind CSS é um framework CSS utilitário de baixo nível que fornece classes utilitárias que você pode usar diretamente em seu HTML para construir interfaces completamente personalizadas, sem sair do seu HTML.</p>
                        <p class="mb-4">Diferente de frameworks como Bootstrap ou Materialize, que fornecem componentes pré-estilizados, o Tailwind fornece classes de utilidade de nível atômico que permitem construir designs completamente personalizados sem nunca deixar o seu HTML.</p>
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Por que escolher Tailwind CSS?</h2>
                        <p class="mb-4">Existem várias razões para considerar o Tailwind como sua escolha para o desenvolvimento frontend:</p>
                        
                        <ul class="list-disc pl-6 mb-6 space-y-2">
                            <li>Desenvolvimento mais rápido com classes utilitárias</li>
                            <li>Design consistente com um sistema de design integrado</li>
                            <li>Personalização completa através do arquivo de configuração</li>
                            <li>Responsivo por padrão com utilitários sensíveis a breakpoints</li>
                            <li>Otimizado para produção através de PurgeCSS</li>
                        </ul>
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Começando com Tailwind</h2>
                        <p class="mb-4">Vamos começar instalando o Tailwind CSS em seu projeto.</p>
                        
                        <h3 class="text-xl font-semibold mt-6 mb-3">1. Instalação</h3>
                        <p class="mb-4">Primeiro, você precisa instalar o Tailwind via npm:</p>
                        
                        <div class="code-block">
                            <code>npm install tailwindcss postcss autoprefixer</code>
                        </div>
                        
                        <h3 class="text-xl font-semibold mt-6 mb-3">2. Configuração</h3>
                        <p class="mb-4">Em seguida, crie os arquivos de configuração:</p>
                        
                        <div class="code-block">
                            <code>npx tailwindcss init -p</code>
                        </div>
                        
                        <p class="mb-4">Isso criará um arquivo <code>tailwind.config.js</code> que você pode personalizar:</p>
                        
                        
                        <h3 class="text-xl font-semibold mt-6 mb-3">3. Adicionando Tailwind ao seu CSS</h3>
                        <p class="mb-4">Crie um arquivo CSS e adicione as diretivas do Tailwind:</p>
                        
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Criando um Layout Simples</h2>
                        <p class="mb-4">Vamos criar um layout simples usando classes do Tailwind:</p>
                        
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Responsividade com Tailwind</h2>
                        <p class="mb-4">Uma das grandes vantagens do Tailwind é como ele lida com a responsividade. Usando prefixos de breakpoint, você pode aplicar estilos diferentes em diferentes tamanhos de tela:</p>
                        
                        
                        <p class="mb-4">O Tailwind inclui vários breakpoints por padrão:</p>
                        <ul class="list-disc pl-6 mb-6 space-y-2">
                            <li><code>sm</code>: 640px</li>
                            <li><code>md</code>: 768px</li>
                            <li><code>lg</code>: 1024px</li>
                            <li><code>xl</code>: 1280px</li>
                            <li><code>2xl</code>: 1536px</li>
                        </ul>
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Personalizando o Tailwind</h2>
                        <p class="mb-4">Você pode personalizar seu Tailwind estendendo o tema no arquivo de configuração:</p>
                        
                        
                        <h2 class="text-2xl font-bold mt-8 mb-4">Conclusão</h2>
                        <p class="mb-4">Tailwind CSS oferece uma abordagem diferente para estilizar seus sites. Em vez de opiniões pré-concebidas sobre como seus componentes devem parecer, ele fornece ferramentas de baixo nível que ajudam a construir designs totalmente personalizados.</p>
                        <p class="mb-4">Com sua abordagem utilitária, sistema de design consistente e recursos de responsividade, o Tailwind CSS é uma excelente escolha para desenvolvedores que desejam controle total sobre o design de seus sites, sem o inchaço de frameworks CSS tradicionais.</p>
                    </div>
                </article>
            </main>
        </div>
    </div>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end