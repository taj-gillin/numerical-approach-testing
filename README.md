# Numerical approach testing
Written in Minecraft's native language, mcfunction, this project implements a Newtonian approach to various problems. Since mcfunction is quite limited, involving only basic arithmetic functions (+,_,*,/,%) and having no variables, only registers, many physics based problems cannot be solved. 

The solution is to take a Newtonian approach: since we can write the mathematical equation but can't solve it, we can substitute out any derivative/infintensimal value for a finite, small value. We can then walk through our simulation step by step, storing the position and velocity, calculating the acceleration based on forces, then updating using the time step.

## Projectile motion with air resistance
In physics, air resistance is fake. Unfortunately (or fortunate if you don't like living in a vacuum), real projectiles 
