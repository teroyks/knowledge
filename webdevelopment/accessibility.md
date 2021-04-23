# Accessible Web Development

## Custom Checkbox

Hiding a checkbox by setting `display: none` or `visibility: hidden` also hides it from the accessibility point of view. One possible solution for hiding the standard checkbox:

```css
.custom-checkbox input[type="checkbox"] {
    /* hide the default box only visually but not programmatically */
    clip: rect(0 0 0 0);
    clip-path: inset(50%);
    height: 1px;
    overflow: hidden;
    position: absolute;
    white-space: nowrap;
    width: 1px;
}

.custom-checkbox label {
    /* label styling here */
}

.custom-checkbox label::before {
    /* your custom box definition here */
    display: inline-block;
    width: 1rem;
    height: 1rem;
    padding: 0.25rem;
    border: 1px solid #111;
    content: "";
}

.custom-checkbox input[type="checkbox"]:checked ~ label::before {
    /* don't use only color to indicate state! */
    background-color: #456;
}

.custom-checkbox input[type="checkbox"]:focus ~ label::before {
    outline: 2px solid var(--focus-color, #111);
    outline-offset: 1px
}
```
