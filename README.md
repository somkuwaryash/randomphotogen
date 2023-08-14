# RandomPhoto App

An iOS application built in Swift and UIKit to fetch and display random photos from Unsplash.

## Features

- **Random Image Display**: Upon loading, the app fetches a random image of size 300x300 from Unsplash and displays it centered in the app.
  
- **Randomize Button**: Contains a button titled "Random Photo" that fetches another random image from Unsplash upon being clicked. 

- **Dynamic Background**: Each time the button is pressed to fetch a new photo, the app's background color also changes randomly from a predefined list of colors.

- **Auto Layout**: Leverages `viewDidLayoutSubviews()` to handle dynamic placement and sizing of UI components, making it adaptable for various device sizes and orientations.

## Dependencies

- **UIKit**: Utilized for the user interface components and layout.

## To Do

- Implement asynchronous methods for image fetching to optimize UI responsiveness.
  
- Enhance error handling for image fetching scenarios.

- Incorporate more dynamic behavior, potentially animations, or other additional functionalities.

> **Note**: Always respect API usage guidelines when making requests to platforms like Unsplash. Consider integrating their official SDK or handling rate limits if planning to scale or distribute the application.
