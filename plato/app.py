"""flask app runner"""

import os
import sys
import logging
from flask import Flask


app = Flask(__name__, static_url_path="/static")
log = logging.getLogger("app")
log.setLevel(logging.DEBUG)
log.addHandler(logging.StreamHandler(sys.stdout))


@app.route("/")
def hello_world():
    """default flask handler"""
    log.info("hello_world invoked")
    return app.send_static_file("index.html")


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8888))
    app.run(debug=True, host="0.0.0.0", port=port)
