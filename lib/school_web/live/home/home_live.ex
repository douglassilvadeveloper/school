defmodule SchoolWeb.Home.HomeLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="flex justify-between items-center shrink-0 h-16 bg-white border-b border-slate-300 px-4">
      <div class="flex flex-col gap-1.5">
        <h1 class="text-sm font-bold leading-none">
          Início
        </h1>
        <div class="text-xs leading-none h-3.5">
            <span class="text-slate-600">Apresentação</span>
        </div>
      </div>
    </div>
    <div class="text-sm p-4">
        <h2 class="text-lg font-bold mb-1">Boas-vindas</h2>

        <p class="mb-2">Olá! Seja muito bem-vindo à <span class="font-bold">Escola Aberta de Direito</span>!</p>
        
        <p class="mb-2">
            É uma alegria ter você aqui. Nosso objetivo é tornar o estudo do Direito mais acessível, 
            eficiente e agradável, seja você um estudante iniciante ou alguém se preparando para concursos e exames jurídicos.
        </p>
        
        <p class="mb-2">
            Na <span class="font-bold">Escola Aberta de Direito</span>, você encontrará um ambiente feito especialmente para quem quer aprender de verdade, 
            com recursos que facilitam a compreensão e a fixação dos conteúdos jurídicos mais importantes.
        </p>

        <h2 class="text-lg font-bold mb-1 mt-4">Por que escolher a Escola Aberta de Direito?</h2>

        <p class="mb-2">
            Aqui estão alguns motivos que fazem da nossa plataforma uma excelente aliada nos seus estudos:
        </p>
        
        <ul class="list-disc pl-6 mb-6 space-y-2">
            <li>✅ <span class="font-bold">Conteúdo gratuito</span> – Aprenda sem pagar nada. Nosso compromisso é com a democratização do conhecimento.</li>
            <li>✅ <span class="font-bold">Conteúdo interativo</span> – Estude de forma dinâmica com quizzes, mapas mentais, flashcards e outros recursos que estimulam a aprendizagem ativa.</li>
            <li>✅ <span class="font-bold">Abordagem completa</span> – Aqui você encontra o tripé essencial: lei seca, jurisprudência e doutrina, tudo organizado e explicado de forma clara.</li>
            <li>✅ <span class="font-bold">Resolução de questões</span> – Treine com questões comentadas de concursos, OAB e outras avaliações, com foco no que realmente cai nas provas.</li>
            <li>✅ <span class="font-bold">Dicas de memorização</span> – Técnicas práticas para ajudar você a lembrar o que estudou e melhorar seu desempenho nos estudos.</li>
        </ul>
        
        <p class="mb-2">
            Estamos apenas começando e temos muitos planos para crescer junto com você. 
            Explore a plataforma, descubra nossos recursos e comece a transformar sua forma de estudar Direito.
        </p>
        
        <p class="mb-4 font-bold">Bons estudos e conte sempre conosco!</p>
    </div>
    """
  end


  def mount(_params, _session, socket) do
    {:ok, socket}
  end

end