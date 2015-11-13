package grasshopper.client.parser.model

case class AddressPart(name: String, value: String)

case class ParsedAddress(input: String, parts: List[AddressPart])

object ParsedAddress {
  def unparsable(input: String) = ParsedAddress(input, List.empty)
  def empty: ParsedAddress = ParsedAddress("", List.empty)
}