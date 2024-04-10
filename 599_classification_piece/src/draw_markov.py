import graphviz

markov = graphviz.Digraph('confusion-markov-chain', comment='Markov chain based on the Model 1 confusion matrix.')

markov.node("fire", color="orange", style="filled", fontname = "avenir")
markov.node("water", color="aqua", style="filled", fontname = "avenir")
markov.node("wind", color="gray", style="filled", fontname = "avenir")
markov.node("frogs", color="green", style="filled", fontname = "avenir")
markov.node("birds", color="purple", style="filled", fontname = "avenir")

markov.edge('fire', 'fire', label=" 40%", fontname = "avenir")
markov.edge('water', 'water', label=" 87%", fontname = "avenir")
markov.edge('wind', 'wind', label=" 58%", fontname = "avenir")
markov.edge('frogs', 'frogs', label=" 87%", fontname = "avenir")
markov.edge('birds', 'birds', label=" 68%", fontname = "avenir")

markov.edge('fire', 'water', label=" 2%", fontname = "avenir")
markov.edge('fire', 'wind', label=" 25%", fontname = "avenir")
markov.edge('fire', 'birds', label=" 33%", fontname = "avenir")

markov.edge('water', 'fire', label=" 1%", fontname = "avenir")
markov.edge('water', 'wind', label=" 5%", fontname = "avenir")
markov.edge('water', 'birds', label=" 7%", fontname = "avenir")

markov.edge('wind', 'fire', label=" 42%", fontname = "avenir")

markov.edge('frogs', 'fire', label=" 3%", fontname = "avenir")
markov.edge('frogs', 'wind', label=" 10%", fontname = "avenir")

markov.edge('birds', 'fire', label=" 2%", fontname = "avenir")
markov.edge('birds', 'water', label=" 7%", fontname = "avenir")
markov.edge('birds', 'frogs', label=" 23%", fontname = "avenir")

save_folder = "./trained_models/model1markov"

markov.render(directory=save_folder, view=True)