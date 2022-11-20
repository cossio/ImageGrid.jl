module ImageGrid

"""
    imggrid(A)

Given a four dimensional array `A` of size `(width, height, ncols, nrows)`
containing `width x height` images in a grid of `nrows x ncols`, this returns
a matrix of size `(width * ncols, height * nrows)`, that can be plotted in a heatmap
to display all images arranged in a grid.
"""
function imggrid(A::AbstractArray{<:Any,4})
    width, height, ncols, nrows = size(A)
    return reshape(permutedims(A, (1,3,2,4)), width * ncols, height * nrows)
end

end # module
