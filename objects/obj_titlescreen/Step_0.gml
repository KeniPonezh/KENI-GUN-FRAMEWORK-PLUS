	valtimer+=1;
	logox=logox+(16-logox) * 0.085;
	
	//Input difference
	var v = getinput.DownPress - getinput.UpPress;
	
	//If input has been modified change the selection
	if(v != 0)
	{
		select += v;
	}
	
	//Limit the selections
	select = clamp(select, 0, day -1);
	