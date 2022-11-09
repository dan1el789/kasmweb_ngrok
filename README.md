# kasm_web via ngrok "hosted?!" on GitHub Actions

If you want to run a Chromium/.../you can modify the Dockerfile, just fork this repository and edit your repository secrets.

Go to [ngrok](https://dashboard.ngrok.com/get-started/your-authtoken) take your auth Token and store it in the **repository secrets** as ``NGROK``
To make sure that you can log in to your kasm instance set another secret: ``KASM_PASSWORD`` to what you want to be your password

Now in the tab actions you can trigger the workflow whenever you want via the dispatch event. 

Then gou to your [ngrok dashboard](https://dashboard.ngrok.com/cloud-edge/endpoints) and get on your instance. 
