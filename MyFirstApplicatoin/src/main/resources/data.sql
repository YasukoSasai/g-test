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