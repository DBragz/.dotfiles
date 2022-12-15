--
-- Name: starship.lua
-- Description: Loads up Starship in Command Prompt using Clink.
-- Author: Daniel Ribeirinha-Braga
--

load(io.popen('starship init cmd'):read("*a"))()

