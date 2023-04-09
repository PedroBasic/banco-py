tipos de relacionamento entre tabelas de banco de dados

1:1 --> relacionamento Um para Um
1:N --> relacionamento UM para Muitos
N:N --> relacionamento Muitos para Muitos

Modelar um sistema de blog. Quais as regras que teremos que implementar nesse sistema?


1) As postasgens serao feitas por usuario. Cada usuario tera apenas 1 perfil dentro do sistema, e um perfil so pode ter 1 correspondente.
    -Ususario, Perfildeusuario

2) Cada usuario pode fazer quantas postagens quiser(0, 1 ou muitas) porem cada postagem tera como autor apenas 1 usuario. Nesse caso teremos uma relaçao de 1:N, entre usuarios e postagens

3) Quando um usuario fez uma postagens ele pode associar categorias (hashtags) nessa postagens. Uma postagem pode ter diversas categorias , e uma categoria pod aparecer em diversas postagens. Isso catactriza uma relacao de N:N(muitos para muitos)

PARA USAR N:N, CRIA UMA TABELA ASSOCIATIVA 

