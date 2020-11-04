--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gquestions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.gquestions (
    questionnumber integer NOT NULL,
    question character varying(1000) NOT NULL,
    choice1 character varying(1000) NOT NULL,
    choice2 character varying(1000) NOT NULL,
    choice3 character varying(1000) NOT NULL,
    choice4 character varying(1000) NOT NULL,
    answer integer NOT NULL,
    explanation character varying(1000) NOT NULL
);


ALTER TABLE public.gquestions OWNER TO admin;

--
-- Name: gquestions_questionnumber_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.gquestions_questionnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gquestions_questionnumber_seq OWNER TO admin;

--
-- Name: gquestions_questionnumber_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.gquestions_questionnumber_seq OWNED BY public.gquestions.questionnumber;


--
-- Name: gquestions questionnumber; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gquestions ALTER COLUMN questionnumber SET DEFAULT nextval('public.gquestions_questionnumber_seq'::regclass);


--
-- Data for Name: gquestions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.gquestions (questionnumber, question, choice1, choice2, choice3, choice4, answer, explanation) FROM stdin;
12	第一次AIブームの説明として適切な組み合わせを選べ。ア：ディープラーニングによる人工知能が台頭した。　イ：推論と探索による人工知能が台頭した。　ウ：チェスの手や迷路などのようなトイプロブレムを解決することができた。　エ：複数の要素が絡み合った問題にもある程度対応できるようになった。	アイ	イウ	ウエ	エア	1	<p>1950年代後半から1960年代にかけての第一次AIブームでは、「推論と探索」により問題を得人工知能が台頭しました。推論と探索とは、あるルールとゴールが決められた枠組みの中で、コンピュータがなるべく早くゴールにたどり着けるよう選択肢を選び続けることを指す。結局のところ、推論と探索では複雑に絡み合った現実の問題を解くことはできませんでした。推論と探索で解ける問題はゲームの有利なての探索などトイプロブレムに限られることが明らかになり第一次AIブームは終焉を迎えました。<br>また、第一次AIブームでは特に冷戦化の米国で自然言語処理による機械翻訳の研究に注力されたことが有名です。しかし当時は機械翻訳を行うことは極めて困難であると結論づけられました。</p>
16	<p>（ウ）に当てはまる選択肢を選べ。<br><br>1980年代後半に訪れた第二次AIブームでは、（ア）による人工知能が台頭した。<br>これは、（イ）ことにより、現実問題に現れる問題を解決するというアイディアに基づくものであり、（ウ）と、（ウ）を使って推論を行うプログラムである（エ）から成り立っている。<br>しかし、ノウハウがうまく定式化できなかったり、矛盾を含んでいた理することが多く、結果として満足な結果が得られず、ブームは終焉を迎えた。</p>	推測エンジン	学習済みネットワーク	確率テーブル	知識ベース	3	<p>答えは4である。<br><br>知識ベースとは「もし…ならば…」という規則による知識の集まりです。</p>
17	<p>（エ）に当てはまる選択肢を選べ。<br><br>1980年代後半に訪れた第二次AIブームでは、（ア）による人工知能が台頭した。<br>これは、（イ）ことにより、現実問題に現れる問題を解決するというアイディアに基づくものであり、（ウ）と、（ウ）を使って推論を行うプログラムである（エ）から成り立っている。<br>しかし、ノウハウがうまく定式化できなかったり、矛盾を含んでいた理することが多く、結果として満足な結果が得られず、ブームは終焉を迎えた。</p>	推論エンジン	学習済みネットワーク	確率テーブル	知識ベース	0	<p>答えは1である。<br><br>エキスパートシステムは知識ベースと推論エンジンから成ります。推論エンジンとは知識ベースを用いて推論を行うプログラムのことです。</p>
9	（エ）に当てはまる選択肢を選びなさい。チューリングテストはある機械が人工知能稼働化を判定するためのテストで、人間の審査員に相手が機械であることを伏せて対話させ、どの程度でそれを判定できるかを調べるためというものである。1996年に開発された（ウ）は、チューリングテストにおいて簡単なルールベースのプログラムで約30％の人間の審査員の判定を誤らせた。また、（ウ）とともに有名な初期の会話ロボット（エ）は（ウ）と何度か対話したことがあり、その記録は（オ）として残されている。	AlexNet	ELIZA	LeNet	PARRY	3	答えは4である。1996年に開発されたELIZAの後に開発されたPARRYも多くの判定者を誤らせました。
10	（オ）に当てはまる選択肢を選びなさい。チューリングテストはある機械が人工知能稼働化を判定するためのテストで、人間の審査員に相手が機械であることを伏せて対話させ、どの程度でそれを判定できるかを調べるためというものである。1996年に開発された（ウ）は、チューリングテストにおいて簡単なルールベースのプログラムで約30％の人間の審査員の判定を誤らせた。また、（ウ）とともに有名な初期の会話ロボット（エ）は（ウ）と何度か対話したことがあり、その記録は（オ）として残されている。	RFC439	ICCC1972	ILSVRC2010	WSDM2008	0	答えは1である。
13	<p>（ア）に当てはまる選択肢を選べ。<br><br>1980年代後半に訪れた第二次AIブームでは、（ア）による人工知能が台頭した。<br>これは、（イ）ことにより、現実問題に現れる問題を解決するというアイディアに基づくものであり、（ウ）と、（ウ）を使って推論を行うプログラムである（エ）から成り立っている。<br>しかし、ノウハウがうまく定式化できなかったり、矛盾を含んでいた理することが多く、結果として満足な結果が得られず、ブームは終焉を迎えた。</p>	推論と探索	エキスパートシステム	パーセプトロン	教師あり学習	1	<p>答えは2である。<br><br>1980年代後半に訪れた第二次AIブームではエキスパートシステムにより問題を解く人工知能が台頭しました。</p>
14	<p>（イ）に当てはまる選択肢を選べ。<br><br>1980年代後半に訪れた第二次AIブームでは、（ア）による人工知能が台頭した。<br>これは、（イ）ことにより、現実問題に現れる問題を解決するというアイディアに基づくものであり、（ウ）と、（ウ）を使って推論を行うプログラムである（エ）から成り立っている。<br>しかし、ノウハウがうまく定式化できなかったり、矛盾を含んでいた理することが多く、結果として満足な結果が得られず、ブームは終焉を迎えた。</p>	事後確率が最も高くなるような条件に対応する解決策を選択し続ける。	今日調べるが付与された学習用データを用いて学習し、解決策を予測する。	様々な状況に応じた最適な解決策をデータベースに保持する。	専門家の知識を規則としてデータベース化して人工知能に移植する。	3	<p>答えは3である。<br><br>エキスパートシステムは、専門家の知識を人工知能に移植することにより様々な問題を解決するというアイディアでした。エキスパートシステムを用いたAIの代表例としては、抗生物質を処方するAIであるMYCINや、有機化合物の特定を行うDENDRALなどが挙げられます。しかし専門家の知識の定式化は難しく、複雑な問題は解けるようになりませんでした。</p>
18	<p>（ア）に当てはまる選択肢を選べ。<br><br>ニューラルネットワークとは、入力に対して重み付けを行い、それらとバイアスを足し合わせる処理を行ったあと、活性化関数を用いて出力に変換を行う予測器である（ア）を多層に組み合わせた予測器を指す。ニューラルネットワークにおいて、入力が行われる層を入力層、出力が行われる層を出力層、それ以外の層を（イ）または、（ウ）と呼ぶ。</p>	パーセプトロン	ニューロン	サポートベクターマシン	論理ゲート	1	<p>答えは2である。<br><br>ニューロンは、単純な予測を行うことができる予測器で、ニューラルネットワークの最小単位です。ニューロンでは次のような演算が行われます。<br>・総入力（入力の重み付け和＋バイアス）の計算<br>・活性化関数による出力の計算<br>ニューラルネットワークとはニューロンをたくさんつなげてできる予測器で、各ニューロンで上述した演算が繰り返し行われることで最終的に出力が得られます。ニューラルネットワークは「単純な数値予測しかできないニューロンでも、たくさん繋げれば複雑な予測ができるのではないか」という考えから生まれました。これは、単純パーセプトロンをつなげて多層パーセプトロンを作るのと同じ仕組みです。</p>
19	<p>（イ）に当てはまる選択肢を選べ。<br><br>ニューラルネットワークとは、入力に対して重み付けを行い、それらとバイアスを足し合わせる処理を行ったあと、活性化関数を用いて出力に変換を行う予測器である（ア）を多層に組み合わせた予測器を指す。ニューラルネットワークにおいて、入力が行われる層を入力層、出力が行われる層を出力層、それ以外の層を（イ）または、（ウ）と呼ぶ。</p>	合成層	演算層	中間層	途中層	2	<p>答えは3です。</p>
20	<p>（ウ）に当てはまる選択肢を選べ。<br><br>ニューラルネットワークとは、入力に対して重み付けを行い、それらとバイアスを足し合わせる処理を行ったあと、活性化関数を用いて出力に変換を行う予測器である（ア）を多層に組み合わせた予測器を指す。ニューラルネットワークにおいて、入力が行われる層を入力層、出力が行われる層を出力層、それ以外の層を（イ）または、（ウ）と呼ぶ。</p>	プーリング層	双対層	隠れ層	再起層	2	<p>答えは3です。</p>
\.


--
-- Name: gquestions_questionnumber_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.gquestions_questionnumber_seq', 20, true);


--
-- Name: gquestions gquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gquestions
    ADD CONSTRAINT gquestions_pkey PRIMARY KEY (questionnumber);


--
-- PostgreSQL database dump complete
--

