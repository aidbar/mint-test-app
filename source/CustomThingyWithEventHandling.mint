component CustomThingyWithEventHandling {

  style thingycss {
    font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New', monospace;
    font-style: italic;
    font-weight: 100;
    color: #E06C75;
    text-decoration: none;
    margin: 10px;
  }

  fun render : Html {
    <button::thingycss
      onClick={(event : Html.Event) : String {
        Debug.log("Hello! It's me! I printed! :)")
      }}>

      "Click Me! I print to the console!"

    </button>
  }
}