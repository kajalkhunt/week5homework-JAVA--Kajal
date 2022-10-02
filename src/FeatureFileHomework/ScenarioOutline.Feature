Feature:  Bookcategory

Background:       I should be able to see hompage
Given  I enter URL"https;//demo.nopcommerce.com/" in browser
And    I am on home page

Scenario Outline: I should be able to see topn menu tabs on homepage with categories
When    I am on hompaage
Then    I should be able to see top menu tabs with "<categories>"
Examples:
| categories        |
| computer          |
| electronic        |
| apparel           |
| digital downloads |
| books             |
| jewellery         |
| gift card         |

Scenario Outline: I should be able to see book page with filters
When   I select book category from top menu tabs on home page
Then   I should be navigated to book category
And    I should be able to see "<filter>"
Examples:
| filters   |
| sort by   |
| display   |
| the Grid |
| list Tab  |

  Scenario Outline: I should be able to see list of teams of each filters
Given   I am on book page
When    I click on "<filter>"
Then    I should be avle to see "<list>" in dropdown meny
Examples:
| filter      | list                                             |
| sort by     | Name:AtoZ,Name:ZtoA,Price:LowtoHigh,Created on   |
| display     | 3 , 6 , 9                                        |

Scenario Outline: I should be able to choose any filter option with specific result
Given   I am on book page
When    I click on "<filter>"
And     I click on any "<option>"
Then    I should be able to shoose any filter option from the list
And     I should be able to see "<result>"
Examples:
| Filter     |  Option           |  result                                                            |
| sort by    |  Name:A to Z      |  sorted product with the product name in alphabetical order A to Z |
| sort by    |  Name:Z to A      |  sorted product with the product name in alphabetical order Z toAZ |
| sort by    |  price:low to high|  sorted product with the price in descending order                 |
| sort by    |  price:hightolow  |  sorted product with the price in ascending order                  |
| sort by    |  created on       |  sorted added product should be show forst                         |
| display    |  3                | recently added product should be show first                        |
| display    |  6                | recently added product should be show first                        |
| display    |  9                | recently added product should be show first                        |

Scenario Outline:  I should be able to see product display format according display format type as per given picture in srs document
Given    I am on book page
When     I click on "<display format icon>"
Then     I should be able to see display format according diaplay format type as per given in srs document
Examples:
| display format icon |
| grid                |
| list                |




