/*
https://www.hackerrank.com/challenges/weather-observation-station-2

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
Input Format

The STATION table is described as follows:
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| city        | char(35) |
| state       | char(3)  |
| lat_n       | char(20) |
| long_w      | int(11)  |
+-------------+----------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

--solution 
SELECT CAST(SUM(lat_n) AS DECIMAL(10, 2)) AS TotalDecimal, cast(sum(long_w) as decimal(10,2))
from station

--OBS:. 
-- As funções CONVERT, CAST, ROUND e FORMAT têm propósitos diferentes e são usadas para tarefas específicas em SQL. Vou explicar a diferença entre cada uma delas:

-- CONVERT:
-- A função CONVERT é usada para converter um valor de um tipo de dados para outro tipo de dados específico. Ela permite que você defina o tipo de dados de destino e é útil quando você precisa realizar conversões explícitas de um tipo para outro. Por exemplo:

SELECT CONVERT(INT, '123') AS valor_inteiro;
Neste exemplo, a função CONVERT converte a string '123' para o tipo de dados inteiro (INT), resultando no valor inteiro 123.

-- CAST:
-- A função CAST também é usada para converter um valor de um tipo de dados para outro tipo de dados, assim como a função CONVERT. A diferença é que a sintaxe do CAST é mais concisa e segue a seguinte forma:

SELECT CAST('123' AS INT) AS valor_inteiro;
Este exemplo é equivalente ao exemplo anterior usando CONVERT, mas a sintaxe é um pouco diferente. Ambas as funções têm o mesmo propósito e podem ser usadas para conversões entre tipos de dados.

-- ROUND:
-- A função ROUND é usada para arredondar um valor numérico para um número específico de casas decimais. Ela é útil para obter valores arredondados para cima, para baixo ou para o valor mais próximo. Por exemplo:

SELECT ROUND(3.14159, 2) AS valor_arredondado;
Neste exemplo, a função ROUND arredondaria o valor 3.14159 para duas casas decimais, resultando em 3.14.

-- FORMAT:
-- A função FORMAT é usada para formatar um valor numérico em uma representação de texto com base em um padrão específico. Ela é mais útil para fins de apresentação, onde você deseja controlar a formatação de números exibidos em relatórios ou resultados. Por exemplo:

SELECT FORMAT(1234.5678, 'N2') AS valor_formatado;
Neste exemplo, a função FORMAT formata o valor 1234.5678 com duas casas decimais e adiciona separadores de milhares, resultando em "1,234.57".

-- Em resumo, CONVERT e CAST são usadas para conversão explícita entre tipos de dados, ROUND é usada para arredondamento de valores numéricos e FORMAT é usada para formatação de números para exibição.

-- Escolher a função certa depende da tarefa específica que você deseja realizar. Cada função tem sua utilidade em diferentes situações e cenários em SQL.