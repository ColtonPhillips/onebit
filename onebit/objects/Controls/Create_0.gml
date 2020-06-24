/// @function           sqr_calc(val);
/// @param {real}  val  The value to calculate the square of
/// @description        Calculate the square of the given value
function sqr(value)
    {
    if !is_real(value)
        {
        return 0;
        }
    else
        {
        return (value * value);
        }
    }