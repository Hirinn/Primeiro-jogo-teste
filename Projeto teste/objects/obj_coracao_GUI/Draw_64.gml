/*drawn hearts*/
// *variáveis ​​de posição*

// isso garante que a largura seja a largura do gui
var width = display_get_gui_width();


/* xx = width - 26 * 10 temos 10 corações por linha, cada coração tem 32 pixels 
de largura e queremos um espaço entre cada coração*/
/*então a largura é a borda da tela - 26 pixels * 10 isso nos 
dá a posição inicial para o primeiro coração*/
var xx = width - 26 * 10;

// 32 pixels do topo da tela
var yy = 32;
/* INCRIMENTANDO VARIAVEIS! */

//incremento de x para corações vazios, incrementamos Ex 26 pixels a cada repetição
var xEmpty = 0;

/*incremento de y para corações vazios nós só incrementamos Ey quando os corações estão == para 10, 
mas não veremos seu efeito até que tenhamos mais de 10 corações*/
var yEmpty = 0;


var xFull = 0;
var yFull = 0;

var xHalf = 0;
var yHalf = 0;
//maxhp can't go lower than 3 and max hp can't go higher than 20
Obj_Player.vida_maxima = clamp(Obj_Player.vida_maxima,6,40);

Obj_Player.vida = clamp(Obj_Player.vida, 0, Obj_Player.vida_maxima);


//mostrando o coração na tela 
draw_set_color(c_white);
draw_text(width - 26*15/2, 0, "-Vida-");
draw_set_halign(fa_center);

repeat(Obj_Player.vida_maxima/2)
{
	if xEmpty == 26*10
	{
		yEmpty = 26
		xEmpty = 0
	}
	draw_sprite(spr_coracao3, 0, xx + xEmpty, yy + yEmpty )
	xEmpty += 26
}

repeat(floor (Obj_Player.vida/2) + frac(Obj_Player.vida/2)*2)
{

if xHalf >= 26*10
{
yHalf = 26
xHalf = 0
}
draw_sprite(spr_coracao2, 0, xx + xHalf, yy + yHalf)
xHalf +=26
}

repeat(floor(Obj_Player.vida/2))
{
	if xFull >= 26*10
	{
	yFull = 26 
	xFull = 0
	}
draw_sprite(spr_coracao, 0, xx + xFull, yy + yFull)
	xFull +=26

}

