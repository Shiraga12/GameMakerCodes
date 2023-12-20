/// @description Step Event
// You can write your code in this editor

if Way == TR_WAY.IN and progress < 1 {
	progress += Speed
}	else if Way == TR_WAY.OUT and progress > 0 {
	progress += -Speed
}

if Way == TR_WAY.IN and progress >= 1 and Callback1 != undefined {
    Callback1();
}	
else if Way == TR_WAY.OUT and progress <= 0 and Callback2 != undefined {
    Callback2();
    instance_destroy();
}