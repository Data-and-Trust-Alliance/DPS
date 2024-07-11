# DPS

Data & Trust Alliance [Data Provenance Standards](https://github.com/Data-and-Trust-Alliance/DPS/blob/main/specification.md)

HTML rendering out.html

## References

- The [Data & Trust Alliance](https://dataandtrustalliance.org/)
- Kristina Podnar [Presentation](https://dataandtrustalliance.org/our-initiatives/data-provenance-standards#review)
- [Data Provenance Survey](https://bit.ly/DataProvSurvey)

## License

These standards are released under Creative Commons CC-BY-SA-4.0 and all code and supporting artifacts will fall under Apache 2.0.

## Potential projects

1. Examples: The 8 scenarios deeper described with a populated DPS schema
2. Schema
3. Application enabling editing of a metadata object

## TODO

Punch List of work to do:

- Need at least one of the technical formats drafted, and place holder for the other two. 
  - Thus we have three GIThub repos for JSON, XML, and YAML. 

## Convert to html

pandoc --standalone --metadata title="The Data Provenance Standard" -r gfm --css=style.css -w html -o dps.html specification.md

## Convert to text

pandoc -r gfm -w plain -o dps.txt specification.md

## Convert to PDF

This does not work at this point as pandoc does not have the ability to convert the SVG graphics to PDF without a helper tool. We could use a different graphic format, but svg is the most accessible and scalable form.
