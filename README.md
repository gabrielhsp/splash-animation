# Splash Screen Animation
This is an example of how to create a Splash Screen Animation when the user open your app.

To make this effect, we create a navigation controller and link with a segue to a view controller.

This view controller will receive an animation using `Lottie` library.

After this, we open the `Launchscreen.storyboard` and add an UIImageView inside our app, selecting a image to render when the user open our app.

Then, inside our `SplashViewController` we call the animation when the **launchscreen** is hidden.


