# MulleScionHTMLPreprocessor Library Documentation for AI

## 1. Introduction & Purpose

**MulleScionHTMLPreprocessor** is a preprocessor for Scion templates that provides HTML-specific transformations before template parsing. It enables custom HTML-aware template processing such as whitespace normalization, HTML comment stripping, and other HTML optimizations.

This library is particularly useful for:
- Optimizing HTML templates before rendering
- Stripping HTML comments from production templates
- Normalizing whitespace in HTML
- Custom HTML transformations
- Integration with MulleScion for web applications

## 2. Key Concepts & Design Philosophy

- **Preprocessor Pattern**: Implements MulleScionPreprocessor protocol
- **HTML-Aware**: Understands HTML structure and semantics
- **Template Integration**: Plugs into Scion parser preprocessing pipeline
- **Optimization**: Reduce template size and improve performance

## 3. Core API & Data Structures

### MulleScionHTMLPreprocessor

Main preprocessing class implementing `MulleScionPreprocessor` protocol.

#### Methods

- `- (NSData *) preprocessedData:(NSData *)data` → `NSData *`
  - Preprocess HTML template data
  - Applies HTML transformations (comment stripping, etc.)
  - Returns processed NSData
  - Thread-safe

## 4. Integration with MulleScion

### Using with Parser

```objc
MulleScionHTMLPreprocessor *preprocessor = [[MulleScionHTMLPreprocessor new] autorelease];
MulleScionParser *parser = [MulleScionParser parserWithContentsOfFile:@"template.html"
    searchPath:nil];
parser.preprocessor = preprocessor;

MulleScionTemplate *template = [parser template];
```

## 5. Performance Characteristics

- **Preprocessing**: O(n) where n = template size
- **Memory**: O(n) for processed output
- **Typical**: < 5ms for 100 KB HTML template
- **Benefit**: Reduced template size = faster parsing

## 6. Integration Examples

### Example 1: Setup with Parser
```objc
MulleScionHTMLPreprocessor *preprocessor = [[MulleScionHTMLPreprocessor new] autorelease];
MulleScionParser *parser = [[MulleScionParser alloc] initWithData:templateData
    fileName:@"template.html"
    searchPath:nil];
parser.preprocessor = preprocessor;

MulleScionTemplate *template = [parser template];
NSString *output = [template renderWithContext:context];

[parser release];
```

## 7. Dependencies

- **MulleScion** - Core template engine
- **MulleFoundation** - NSData, NSString
- **mulle-objc** (runtime)

## 8. Version Information

MulleScionHTMLPreprocessor version macro: `MULLE_SCION_HTML_PREPROCESSOR_VERSION`
