# Test Workflows

Create Release

```shell
gh release create  1.0.0  --repo smashedr/test-workflows --title "1.0.0" --notes-file notes.md --target  test1
```

Delete Release

```shell
gh release delete  1.0.0  --cleanup-tag
```
