describe "Tup grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-tup")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.tup")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe "source.tup"
