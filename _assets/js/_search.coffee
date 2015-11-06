$ ->
  baseUrl = "/open-source-club-website" # github repo name
  u = window.location.host.indexOf("github.io") # u = site url
  if ! u > -1
    baseUrl = ''

  SimpleJekyllSearch
    searchInput: document.getElementById('search-posts')
    resultsContainer: document.getElementById('search-results')
    json: baseUrl + '/search.json'
    searchResultTemplate: '<a href="{url}"><li>{title}</li></a>'
    noResultsText: '<li>No results found</li>'
    limit: 10
    fuzzy: false
  return
