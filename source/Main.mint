enum Page {
  PageOne
  PageTwo
  PageThree
  NotFound
}

store Application {
  state page : Page = Page::PageOne

  fun setPage(page : Page) : Promise(Never, Void) {
    next { page = page }
  }
}

routes {
  /one {
    Application.setPage(Page::PageOne)
  }

  /two {
    Application.setPage(Page::PageTwo)
  }

  /three {
    Application.setPage(Page::PageThree)
  }

  / {
    Application.setPage(Page::PageOne)
  }

  * {
    Application.setPage(Page::NotFound)
  }
}
component Main {

  connect Application exposing {page}

  style app {
    justify-content: center;
    flex-direction: column;
    align-items: center;
    display: flex;

    background-color: #282C34;
    height: 100vh;
    width: 100vw;

    font-family: Open Sans;
    font-weight: bold;
  }

  fun render : Html {
    <div::app>
      <Logo/>

      <Info mainPath="source/Main.mint"/>

      <Link href="https://www.mint-lang.com/">
        "Learn Mint"
      </Link>

      <CustomButton hrefbtn="https://www.youtube.com/watch?v=euQDAkiwM_I"/>

      <CustomThingyWithEventHandling />

      <BootstrapForm />

      <div>
        <div>
          <a href="/one">"Page One"</a>
          <a href="/two">"Page Two"</a>
          <a href="/three">"Page Three"</a>
          <a href="/srghr">"this one doesn't exist"</a>
        </div>

        <hr/>

        case (page) {
          Page::NotFound => <div>"404"</div>
          Page::PageOne => <div>"This is page one"</div>
          Page::PageTwo => <div>"This is page two"</div>
          Page::PageThree => <div>"This is page three"</div>
        }
      </div>

    </div>
  }
}
