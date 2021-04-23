# Sizing Images

## Uniform Image Sizes

Display images as close to the original size but zooming and cropping to be uniform (e.g. in a grid):

```html
<style>
  .grid-img {
    /* make all image containers equal height regardless of image proportions */
    height: 180px;
  }

  .grid-img img {
    /* show as much of the image as fits in equal-sized boxes */
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
</style>

<div class="grid-img">
  <img src="" alt="" />
</div>
```
