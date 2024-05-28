/// https://leetcode.com/problems/find-all-possible-recipes-from-given-supplies/
struct FindAllPossibleRecipesFromGivenSupplies {
  func findAllRecipes(_ recipes: [String], _ ingredients: [[String]], _ supplies: [String]) -> [String] {
    var requirements: [String: Set<String>] = [:]
    for (recipe, ingredients) in zip(recipes, ingredients) {
      requirements[recipe] = Set(ingredients)
    }

    var result: [String] = []
    var available = Set(supplies)
    var visited: Set<String> = []
    func topologicalSort(_ ingredientOrRecipe: String) {
      visited.insert(ingredientOrRecipe)

      for requirement in requirements[ingredientOrRecipe, default: []] {
        if !visited.contains(requirement) {
          topologicalSort(requirement)
        }
      }

      if let requirements = requirements[ingredientOrRecipe] {
        if requirements.isSubset(of: available) {
          available.insert(ingredientOrRecipe)
          result.append(ingredientOrRecipe)
        }
      }
    }

    for recipe in recipes {
      if !visited.contains(recipe) {
        topologicalSort(recipe)
      }
    }

    return result
  }
}
