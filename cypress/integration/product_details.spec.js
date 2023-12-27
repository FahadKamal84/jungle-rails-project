describe('test product details', () => {
  
  beforeEach("visit home page", () => {
    cy.visit("localhost:3000")
  })

  it("can click on product and navigate to product details page", () => {
    cy.get('article a').first().click()
    cy.url().should('include', '/products')
  })

})