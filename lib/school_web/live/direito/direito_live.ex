defmodule SchoolWeb.Direito.DireitoLive do
  use SchoolWeb, :live_view

  def render(assigns) do
    ~H"""
    <.sala titulo="Direito" subtitulo="O grande sistema de causas e consequências"/>
    <.principal>
      <.coluna_esquerda>
        <.doutrina>
          <p class="mb-2">O Direito é, em um nível mais abstrato, um <span class="font-bold">sistema de causas e consequências</span>.</p>
          <div class="my-8 flex rounded-3xl p-6 bg-slate-100">
            <div><span class="hero-light-bulb-solid h-6 w-6 my-1 text-sky-900"></span></div>
            <div class="ml-4 flex-auto">
              <p class="m-0 text-lg text-sky-900">
                Como representar uma causa e uma consequência?
              </p>
              <div class="prose mt-2.5 text-sky-800">
              <.p texto="Se A, então B." />
              <.p texto="ou"/>
              <.p texto="A -> B" />
              </div>
            </div>
          </div>
          <.p texto="No entanto, esse sistema não é autoimplementável, ou seja, a consequência B não se implementa de forma automática logo após a ocorrência da causa A."/>
          <.p texto="Pelo contrário, a consequência jurídica somente se implementa a partir de uma série de atos humanos concretos tendentes a torná-la realidade."/>
          <div class="my-8 flex rounded-3xl p-6 bg-slate-100">
            <div><span class="hero-light-bulb-solid h-6 w-6 my-1 text-sky-900"></span></div>
            <div class="ml-4 flex-auto">
              <p class="m-0 font-display text-lg text-sky-900">
                Entendendo com um exemplo.
              </p>
              <div class="prose mt-2.5 text-sky-800 [--tw-prose-background:theme(colors.sky.50)] prose-a:text-sky-900 prose-code:text-sky-900 dark:text-slate-300 dark:prose-code:text-slate-300">
                <.p texto="No art. 121 do Código Penal brasileiro está escrito:" />
                <.p texto="Matar alguem: Pena - reclusão, de seis a vinte anos." />
                <.p texto="Assim, caso uma pessoa mate outra, ela não é transportada imediatamente para uma prisão." />
                <.p texto="Isso só vai acontecer após uma série de atos humanos: capturar a pessoa, submetê-la a um processo judicial, garantir seu direito de defesa, condená-la e levá-la à prisão." />
              </div>
            </div>
          </div>
          <.p texto="Vamos comparar isso com o mundo regido pelas lei da natureza." />
          <div class="my-8 flex rounded-3xl p-6 bg-slate-100">
            <div><span class="hero-light-bulb-solid h-6 w-6 my-1 text-sky-900"></span></div>
            <div class="ml-4 flex-auto">
              <p class="m-0 font-display text-lg text-sky-900">
                No sistema de causas e consequências das leis da física, a implementação é automática.
              </p>
              <div class="prose mt-2.5 text-sky-800 [--tw-prose-background:theme(colors.sky.50)] prose-a:text-sky-900 prose-code:text-sky-900 dark:text-slate-300 dark:prose-code:text-slate-300">
              <.p texto="Na natureza, temos, por exemplo, a lei da gravidade segundo a qual há uma força que direciona os corpos ao centro da Terra." />
              <.p texto="Isso quer dizer que, se você pular de uma certa altura, então você vai cair ao chão."/>
              <.p texto="Veja-se, pois, que a consequência de cair ao chão se implementa de forma automática, diferentemente do que ocorre no mundo do Direito." />
              </div>
            </div>
          </div>
          <.p texto="É, por isso, que se diz, conforme a concepção de Hans Kelsen, que a Natureza está no mundo do 'ser', enquanto o Direito está no mundo do 'dever-ser', 
            ou seja, no mundo em as consequências previstas não acontecem necessariamente, mas sim no mundo ideal, em que as consequências dependem de uma série de atos humanos para se tornar uma realidade." />
         
          <.p texto="Essa concepção de que o Direito é um sistema de causas e consequências tem grande utilidade, porém não é o suficiente, uma vez que é preciso enxergá-lo em um nível menor de abstração. (Veremos isso mais tarde.)" class="font-bold"/>
        </.doutrina>
        <.questoes>
          <.p texto="A banca FCC, no concurso da Câmara de Fortaleza-CE, de 2019, considerou correta a seguinte afirmação:"/>
          <.p texto="O direito é perspectivado internamente por Kelsen e a norma jurídica é compreendida como uma idealidade, ou seja, um dever-ser, e não como tudo que é da natureza, ou seja, um ser." class="pl-6"/>
        </.questoes>
      </.coluna_esquerda>

      <.coluna_direita>
        <.legislacao>
          <.p texto="Não há nenhuma lei que diga o que é o Direito. Seu conceito é concebido fora das leis, notadamente na Filosofia."/>
        </.legislacao>
        <.jurisprudencia>
          <.p texto="STF - RE 543974 - Relator(a): Min. EROS GRAU - Julgamento: 26/03/2009."/>
          <.p texto="A interpretação/aplicação do direito se faz não apenas a partir de elementos colhidos do texto normativo [mundo do dever-ser], 
          mas também a partir de elementos do caso ao qual será ela aplicada, isto é, a partir de dados da realidade [mundo do ser]. 4. O direito, 
          qual ensinou CARLOS MAXIMILIANO, deve ser interpretado 'inteligentemente, não de modo que a ordem legal envolva um absurdo, 
          prescreva inconveniências, vá ter a conclusões inconsistentes ou impossíveis'." class="pl-6"/>
        </.jurisprudencia>
      </.coluna_direita>
    </.principal>
    """
  end

  def mount(_params, _session, socket), do: {:ok, socket}

end