function DialogueResponses(){
	/// @arg Response
	
	switch(argument0)
	{
		case 0: break;
		case 1: NewTextBox("Você deu a resposta A!", 1); break;
		case 2: NewTextBox("Você deu a resposta B! Mais alguma resposta?", 1, ["3:Sim!","0:Não."]); break;
		case 3: NewTextBox("Obrigado por suas respostas!",0); break;
		default: break;
	}
}