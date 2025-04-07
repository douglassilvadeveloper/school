defmodule SchoolWeb.Plataforma.PlataformaLive do
  use SchoolWeb, :live_view

  alias SchoolWeb.PlataformaComponents

  def render(assigns) do
    ~H"""
    <PlataformaComponents.plataforma>
    
      <PlataformaComponents.aside_plataforma items={[
          %{path: "/plataforma", text: "Boas-vindas", active: "active"},
          %{path: "/plataforma/direito", text: "Direito", active: ""},
          %{path: "/maintenance", text: "Direito Constitucional", active: ""},
          %{path: "/maintenance", text: "Direito Administrativo", active: ""},
          %{path: "/maintenance", text: "Direito Civil", active: ""},
          %{path: "/maintenance", text: "Direito Processual Civil", active: ""},
          %{path: "/plataforma/direito-penal", text: "Direito Penal", active: ""},
          %{path: "/maintenance", text: "Direito Processual Penal", active: ""}
      ]} />
      
      <PlataformaComponents.main_plataforma title="Boas-vindas à Escola Aberta de Direito">
        <p>Olá! Seja muito bem-vindo à <span class="font-bold">Plataforma de Estudo da Escola Aberta de Direito</span>!</p>
        <p>
            É uma alegria ter você aqui. Nosso objetivo é tornar o estudo do Direito mais acessível, 
            eficiente e agradável, seja você um estudante iniciante ou alguém se preparando para concursos e exames jurídicos.
        </p>
        
        <p>
            Na <span class="font-bold">Escola Aberta de Direito</span>, você encontrará um ambiente feito especialmente para quem quer aprender de verdade, 
            com recursos que facilitam a compreensão e a fixação dos conteúdos jurídicos mais importantes.
        </p>

        <h2 class="text-2xl font-bold mt-8 mb-4">Por que escolher a Escola Aberta de Direito?</h2>
        <p>
            Aqui estão alguns motivos que fazem da nossa plataforma uma excelente aliada nos seus estudos:
        </p>
        
        <ul class="list-disc pl-6 mb-6 space-y-2">
            <li>✅ <span class="font-bold">Conteúdo gratuito</span> – Aprenda sem pagar nada. Nosso compromisso é com a democratização do conhecimento.</li>
            <li>✅ <span class="font-bold">Conteúdo interativo</span> – Estude de forma dinâmica com quizzes, mapas mentais, flashcards e outros recursos que estimulam a aprendizagem ativa.</li>
            <li>✅ <span class="font-bold">Abordagem completa</span> – Aqui você encontra o tripé essencial: lei seca, jurisprudência e doutrina, tudo organizado e explicado de forma clara.</li>
            <li>✅ <span class="font-bold">Resolução de questões</span> – Treine com questões comentadas de concursos, OAB e outras avaliações, com foco no que realmente cai nas provas.</li>
            <li>✅ <span class="font-bold">Dicas de memorização</span> – Técnicas práticas para ajudar você a lembrar o que estudou e melhorar seu desempenho nos estudos.</li>
        </ul>
        
        <p>
            Estamos apenas começando e temos muitos planos para crescer junto com você. 
            Explore a plataforma, descubra nossos recursos e comece a transformar sua forma de estudar Direito.
        </p>
        
        <p class="mb-4 font-bold">Bons estudos e conte sempre conosco!</p>
      </PlataformaComponents.main_plataforma>

    </PlataformaComponents.plataforma>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end