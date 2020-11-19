function img-pad-width --description 'Pads an image to given width, preserving height'
    set width $argv[1]
    set image $argv[2]

    if test -z $width
        echo Usage: (status current-command) width image-file >&2
        return
    end

    if not test -e $image
        echo "Not a file: $image" >&1
        return 1
    end

    set height (sips --getProperty pixelHeight $image -1 | perl -pe 's/.*\s(\d+)\D*/$1/')

    echo $image: $width $height

    if test -z $height
        echo "Cannot determine image height" >&2
        return 1
    end

    sips --padToHeightWidth $height $width --padColor FFFFFF $image
end
