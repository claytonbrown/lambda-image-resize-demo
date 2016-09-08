# Lambda Image Process Demo

Resize image to mutiple specs and upload into the same bucket of AWS S3.

## Configuration

Edit config.json as you will.

```
config/config.json

[
    {
        "width": 800,
        "destinationPath": "large"
    },
    {
        "width": 500,
        "destinationPath": "medium"
    },
    {
        "width": 200,
        "destinationPath": "small"
    }
]
```

* width: Image Width
* destinationPath: Directory Path

## Usage

**Create Lambda Code Package**

```
make lambda
```

**Clear Build Files**

```
make clean
```
