namespace Exercicio_aula_13_linked_list
{
    public class Element
    {
        public Element(string value)
        {
            this.value = value;
        }
        public Element(string value, Element nextElement)
        {
            this.value = value;
            this.nextElement = nextElement;
        }

        public string value { get; set; }
        public Element nextElement { get; set; }
    }
}