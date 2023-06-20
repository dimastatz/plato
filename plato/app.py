"""flask app runner"""

import os
from flask import Flask


app = Flask(__name__)


@app.route("/")
def hello_world():
    """default flask handler"""
    return """
    <div align="center">
        <h1 align="center"> Plato </h1> 
        <h3>Unlock the Power of Problem-Solving!</br></h3>
        <h4 align="center">
            Empower young minds with our cutting-edge generative AI service, offering step-by-step solutions to math and logic puzzles. From basic arithmetic to complex problem-solving, Plato provides kids with personalized guidance, sparking curiosity and fostering a love for learning. Watch them excel, one solution at a time! 
        </h4>
        <img src="https://img.shields.io/badge/Progress-1%25-red"> <img src="https://img.shields.io/badge/Feedback-Welcome-green">
        </br>
        </br>
        <kbd>
        <img src="../docs/images/plato_1.png"> 
        </kbd>
    </div>
    """


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8888))
    app.run(debug=True, host="0.0.0.0", port=port)
