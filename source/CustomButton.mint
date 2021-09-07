component CustomButton {

  property hrefbtn : String

  style btncss {
    font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New', monospace;
    font-style: italic;
    font-weight: 100;
    color: #E06C75;
  }

  /*fun btnClicked : void {
      location.href="";
  }*/

  fun render : Html {
    <button::btncss>
        <a::btncss href="#{hrefbtn}"
        target="_blank">
            "Click ME!" 
        </a>
    </button>
  }
}