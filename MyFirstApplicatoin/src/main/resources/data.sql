INSERT INTO inquiry(name, email, contents, created)
VALUES('Ethan', 'sample@example.com', 'Hello', '2019-11-12 08:34:19');
INSERT INTO inquiry(name, email, contents, created)
VALUES('Emma', 'sample2@example.com', 'GoodMorning', '2019-12-18 12:10:52');
INSERT INTO inquiry(name, email, contents, created)
VALUES('William', 'sample3@example.com', 'GoodEvening', '2019-12-18 15:10:52');

INSERT INTO questions(categoryId, questionId, questionContent, answer, explanation, choice1, choice2, choice3, choice4)
VALUES(1, 1, 'aaaaaaa?', 'choice2', 'bbbbbbbbbb.', 'jjjjjjj', 'kkkkkkkkk', 'rrrrrrrrrr', 'ooooooooo');
INSERT INTO questions(categoryId, questionId, questionContent, answer, explanation, choice1, choice2, choice3, choice4)
VALUES(1, 2, 'aaaaaaa?', 'choice2', 'bbbbbbbbbb.', 'jjjjjjj', 'kkkkkkkkk', 'rrrrrrrrrr', 'ooooooooo');
INSERT INTO questions(categoryId, questionId, questionContent, answer, explanation, choice1, choice2, choice3, choice4)
VALUES(1, 3, 'aaaaaaa?', 'choice2', 'bbbbbbbbbb.', 'jjjjjjj', 'kkkkkkkkk', 'rrrrrrrrrr', 'ooooooooo');



INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	1,
	'（ア）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。',
	'バッチ正規化',
	'ドロップアウト',
	'データ拡張.',
	'L2正則化',
	1,
	'<p>正解は2である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>'
);

INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	2,
	'（イ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。',
	'バッチ正規化',
	'ドロップアウト',
	'データ拡張.',
	'L2正則化',
	0,
	'<p>正解は1である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>'
);

INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	3,
	'（ウ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考考案されている。例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。',
	'バッチ正規化',
	'ドロップアウト',
	'データ拡張.',
	'L2正則化',
	2,
	'<p>正解は3である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>'
);

INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	4,
	'（エ）に最もよくあてはまる選択肢を 1 つ選べ。ニューラルネットワークは高い表現力を持つ反面,過学習をしやすいという性質を持つため,それを改善させる方法が多数考案されている.例えば,学習の際に一部のノードを無効化する（ア）,一部の層の出力を正規化する（イ）,データの水増しをしてデータの不足を補う（ウ）,パラメータのノルムにペナルティを課す（エ）などがそれに当たる。',
	'バッチ正規化',
	'ドロップアウト',
	'データ拡張.',
	'L2正則化',
	3,
	'<p>正解は4である。</P><br><p>バッチ正規化：一部の層の出力を正規化する。</p><br><p>ドロップアウト：学習の際に一部のノードを無効化する。</p><br><p>データ拡張：データの水増しをしてデータの不足を補う。</p><br><p>L2正則化：パラメータのノルムにペナルティを課す。</p>'
);

INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	5,
	'（ア）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。',
	'計算機による観測データの有意な情報の抽出',
	'計算機による知的な情報処理システムの設計や実現',
	'計算機による過去のデータを用いた時系列データの予測',
	'計算機を人型ロボットに搭載し制御することによる人間の活動の模倣',
	1,
	'<p>正解は2である。</P><br><p>人工知能（AI）とはコンピュータによる知的な情報処理システムを設計、または実現するための研究分野です。単に人工知能と聞くと選択肢１のようなことを思い浮かべるかも知れませんが、人工知能という言葉は「人型ロボット」に限った研究分野ではありません。</p>'
);

INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	6,
	'（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。',
	'人間が自然におこなっている学習能力と同様の機能をコンピュータで実現しようとする技術・手法',
	'観測されたデータ群から、未来に世紀するデータを予測する技術・手法',
	'人間の脳の神経細胞を信号から伝わる様子を模倣し、学習や予測を行う技術・手法',
	'巨大な母集団から抽出した標本の情報を手がかりに、母集団の性質を明らかにする技術・手法',
	0,
	'<p>正解は1である。</P><br><p>人工知能を実現するための具体的な方うち、特に人間の学習能力、予測能力をコンピュータで実現しようとする技術や手法を総評して機械学習と呼びます。機械学習の具体的なアルゴリズムは、実に多種多様であり、その中に深層学習（ディープラーニング）も含まれます。選択肢２と四は統計学に関する解説であり、３は真相学習の解説です。</p>'
);


INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	7,
	'（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。',
	'レイ・カーツワイル',
	'イーロン・マスク',
	'アーサー・サミュエル',
	'ヤン・ルカン',
	2,
	'<p>正解は3である。</P><br><p>機械学習の言葉の定義として、アーサー・サミュエルによる「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野」というものが有名です。</p>'
);


INSERT INTO gQuestions(questionNumber, question, choice1, choice2, choice3, choice4, answer, explanation)
VALUES(
	8,
	'（イ）に最もよく当てはまる選択肢を１つ選べ。人工知能（AI）とは、（ア）に関する研究分野のことで、人工知能における研究課題の一つである（イ）のことを機械学習という。また（ウ）は、機械学習を「明示的にプログラムしなくても学習する能力をコンピュータに与える研究分野（Field of study that gives computers the ability to learn without being explicitly programmed）」と定義した。',
	'人間が自然におこなっている学習能力と同様の機能をコンピュータで実現しようとする技術・手法',
	'観測されたデータ群から、未来に世紀するデータを予測する技術・手法',
	'人間の脳の神経細胞を信号から伝わる様子を模倣し、学習や予測を行う技術・手法',
	'巨大な母集団から抽出した標本の情報を手がかりに、母集団の性質を明らかにする技術・手法',
	0,
	'<p>正解は1である。</P><br><p>人工知能を実現するための具体的な方うち、特に人間の学習能力、予測能力をコンピュータで実現しようとする技術や手法を総評して機械学習と呼びます。機械学習の具体的なアルゴリズムは、実に多種多様であり、その中に深層学習（ディープラーニング）も含まれます。選択肢２と四は統計学に関する解説であり、３は真相学習の解説です。</p>'
);

