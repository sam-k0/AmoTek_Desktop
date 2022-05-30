/// resetAmbiColors(obj)
// Resets all color registers of cached colors to 0
with(argument0)
{
    for(var i = 0; i < 32; i++)
    {
        for(var j = 0; j < 2; j++)
        {
            ambicolors[i,j] = 0;
        }
    }
}
