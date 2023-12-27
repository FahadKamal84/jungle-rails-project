describe('test add to cart', () => {
  
  beforeEach("visit home page", () => {
    cy.visit("localhost:3000")
  })

  it("can add product to cart", () => {
    
    cy.get('.products article').first().find('button').click({force: true});

    cy.get('.navbar').should('contain', 'My Cart (1)');
  });

})