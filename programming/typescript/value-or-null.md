# Get Array Value With `null` as Default

Return a property from the first object in an array of objects, or `null` if it doesn’t exist.
Use optional chaining and nullish coalescing operator together to account for missing data.

```typescript
type Store = {id: string}
const idOrNull = (possibleStores: Array<Store> | null) => (possibleStores && possibleStores[0]?.id) ?? null;

# testing
console.log("null", idOrNull(null))                # null
console.log("empty array", idOrNull([]))           # null
console.log("has value", idOrNull([{id: "foo"}]))  # "foo"
```
