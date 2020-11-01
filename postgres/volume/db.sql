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
1	（ア）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。	バッチ正規化	ドロップアウト	データ拡張.	L2正則化	1	<p>正解は2である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>
2	（イ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。	バッチ正規化	ドロップアウト	データ拡張.	L2正則化	0	<p>正解は1である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>
3	（ウ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。	バッチ正規化	ドロップアウト	データ拡張.	L2正則化	2	<p>正解は3である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>
4	（エ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考案されている.例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。	バッチ正規化	ドロップアウト	データ拡張.	L2正則化	3	<p>正解は4である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>
5	（ア）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。	計算機による観測データの有意な情報の抽出	計算機による知的な情報処理システムの設計や実現	計算機による過去のデータを用いた時系列データの予測	計算機を人型ロボットに搭載し制御することによる人間の活動の模倣	1	<p>正解は2である。</P><br><p>人工知能（AI）とはコンピュータによる知的な情報処理システムを設計、または実現するための研究分野です。単に人工知能と聞くと選択肢１のようなことを思い浮かべるかも知れませんが、人工知能という言葉は「人型ロボット」に限った研究分野ではありません。</p>
6	（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。	人間が自然におこなっている学習能力と同様の機能をコンピュータで実現しようとする技術・手法	観測されたデータ群から、未来に世紀するデータを予測する技術・手法	人間の脳の神経細胞を信号から伝わる様子を模倣し、学習や予測を行う技術・手法	巨大な母集団から抽出した標本の情報を手がかりに、母集団の性質を明らかにする技術・手法	0	<p>正解は1である。</P><br><p>人工知能を実現するための具体的な方うち、特に人間の学習能力、予測能力をコンピュータで実現しようとする技術や手法を総評して機械学習と呼びます。機械学習の具体的なアルゴリズムは、実に多種多様であり、その中に深層学習（ディープラーニング）も含まれます。選択肢２と四は統計学に関する解説であり、３は真相学習の解説です。</p>
7	（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。	レイ・カーツワイル	イーロン・マスク	アーサー・サミュエル	ヤン・ルカン	2	<p>正解は3である。</P><br><p>機械学習の言葉の定義として、アーサー・サミュエルによる「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野」というものが有名です。</p>
8	（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。	人間が自然におこなっている学習能力と同様の機能をコンピュータで実現しようとする技術・手法	観測されたデータ群から、未来に世紀するデータを予測する技術・手法	人間の脳の神経細胞を信号から伝わる様子を模倣し、学習や予測を行う技術・手法	巨大な母集団から抽出した標本の情報を手がかりに、母集団の性質を明らかにする技術・手法	0	<p>正解は1である。</P><br><p>人工知能を実現するための具体的な方うち、特に人間の学習能力、予測能力をコンピュータで実現しようとする技術や手法を総評して機械学習と呼びます。機械学習の具体的なアルゴリズムは、実に多種多様であり、その中に深層学習（ディープラーニング）も含まれます。選択肢２と四は統計学に関する解説であり、３は真相学習の解説です。</p>
10	121	321	131321321	1313	13123	31312	131
11	1231	123	123	1231	1231	1	132132
12	sfss	sgsg	sfsf	ffssf	sgsdg	2	sdfa
13	asdasda	asda	asdasd	asdaasd	1	2	1231
14	123	123	123	123	123	2	123
15	123	123	123	123	123	2	123
16	1	11	123	121	1	2	123
17	1	11	123	121	1	2	123
18	123	123	123	123	123	1	tttttttttttttttt
19	あｓだあ	あｓだｄ	あｄさ		ｆｄｓ	3	fsafa
9	今日食べたご飯は？	いんっ	あ	ｓ	え	2	test123
\.


--
-- Name: gquestions_questionnumber_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.gquestions_questionnumber_seq', 19, true);


--
-- Name: gquestions gquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gquestions
    ADD CONSTRAINT gquestions_pkey PRIMARY KEY (questionnumber);


--
-- PostgreSQL database dump complete
--

