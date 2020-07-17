if keyboard_check_pressed(vk_delete) {
	ChatBox.ToggleVisibility();
	paused = !paused;
}

if keyboard_check_pressed(vk_space) {
	var t = GetTextInst(x, y - 6, 100)
		.SetColor(Color.WarmRed)
		.SetText("*")
		.SetMode(Text.Mode.GUI)
		.SetAlpha(0.5);
	
	with (t) {
		SetTimeout(Seconds(2), function () {
			instance_destroy();
		});
	};
	
}

if paused return;

if Controls.GetLeft() xUpdate-= xSpeed;
if Controls.GetRight() xUpdate+= xSpeed;
if Controls.GetUp() yUpdate-= ySpeed/5;
if Controls.GetDown() yUpdate+= ySpeed;
if Controls.GetJumpPressed() yUpdate -= jumpSpeed;

var grav = 0.05;
yUpdate += grav;

if yUpdate < 0 yUpdate *= 0.8;
xUpdate *= 0.8;

xUpdate = clamp(xUpdate, -xUpdateMax,xUpdateMax);
yUpdate = clamp(yUpdate, -yUpdateMax, yUpdateMax);
   
var xUpdateSign = sign(xUpdate);
xUpdateSubPixel += xUpdate;
while floor(abs(xUpdateSubPixel)) > 0 {
	if place_meeting(x + xUpdateSign, y, o_Solid) {
		if !place_meeting(x+xUpdateSign, y-1, o_Solid) {
			y--; x+= xUpdateSign;
		} else { xUpdate = 0; xUpdateSubPixel = 0; break;}
	} else {
		x+= xUpdateSign;
	}
	xUpdateSubPixel -= xUpdateSign;
}
   
//Vertical collision
if (place_meeting(x, y + yUpdate, o_Solid))
{
    move_contact_solid( (yUpdate > 0)? 270 : 90, 1);
    yUpdate = 0;
}
   
y += yUpdate;

var xMaxCameraDist = 38; var yMaxCameraDist = 32;
Camera.x = clamp(
	lerp(Camera.x, x + xUpdate * 78, 0.06),
	x - xMaxCameraDist, 
	x + xMaxCameraDist);
Camera.y = clamp(
	lerp(Camera.y, y + (yUpdate-grav) * 68, 0.02),
	y - yMaxCameraDist, 
	y + yMaxCameraDist);
	
if keyboard_check_pressed(vk_up) Camera.y += floor(jumpSpeed/2);


if (xUpdate > 0.5) image_xscale = 1;
if (xUpdate < -0.5) image_xscale = -1;
image_speed = xUpdate*3;
if abs(image_speed) < 0.4 image_index = 0;