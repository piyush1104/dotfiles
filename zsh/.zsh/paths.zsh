before_paths=(
    # ~/.composer/vendor/bin
    ~/bin
    ~/.cargo/bin
)
for p in ${before_paths[@]}; do
    PATH=$p:$PATH
done

after_paths=(
    # ~/.composer/vendor/bin
)
for p in ${after_paths[@]}; do
    PATH=$PATH:$p
done

export PATH=$PATH
