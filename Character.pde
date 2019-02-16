// SCAD Life v.1
// aka when life gives you lemon
// Created by Raymond Yiu Nam Wong
// On 14 Feb 2018
// 
// For Entertainment Only
// Seriously don't take this seriously
// 


class Character{  
  // Declare image for faculty members
  PImage stand;
  
  // Declare global and feet position
  PVector pos, lFoot, rFoot;
  
  // Declare velocity and acceleration
  PVector vel, acc;
  
  // Declare facing direction
  boolean faceForward;
  // Initialise
  public Character(String standimg, int iheight, PVector p, boolean ff){
    stand = loadImage(standimg);
    stand.resize(iheight*(stand.width/stand.height), iheight);
    pos = p.copy();
    faceForward = ff;
  }
}

class hero extends Character{
  // Declare dodging images for finer controls
  PImage dodge;
  
  // Declare mass for future changes
  float mass;
  
  // Declare facing direction and bouncing attribute
  boolean noBounce, faceForward;
  
  // Declare tracking variables
  int life, money, comm, exec, crea;
  
  // Initialise
  public hero(String standimg, String dodgeimg, int iheight, PVector p, boolean ff, float m, boolean nb){
    super(standimg, iheight, p, ff);
    dodge = loadImage(dodgeimg);
    dodge.resize(iheight*(stand.width/stand.height), iheight);
    mass = m;
    noBounce = nb;
    
    // Setup game variables
    life = 100;
    money = 100;
    comm = 5;
    exec = comm;
    crea = comm;
    
  }
}
