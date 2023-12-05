import unittest
from selenium import webdriver
from selenium.webdriver.common.by import By
import time

class LoginTest(unittest.TestCase):
    def setUp(self):
        # Start the Selenium WebDriver
        self.driver = webdriver.Chrome()  # Adjust based on your WebDriver configuration
        self.driver.get('http://127.0.0.1:8000/member_login/')  # Replace with the actual URL of your login page

    def test_login_successful(self):
        # Find the username, password, and login button elements
        email_input = self.driver.find_element(By.NAME, 'Email')  # Use By.NAME for the name attribute
        password_input = self.driver.find_element(By.NAME, 'Password')
        login_button = self.driver.find_element(By.XPATH, "//button[text()='Log in']")

        # Enter valid credentials
        email_input.send_keys("sanilasunny18@gmail.com")
        password_input.send_keys("Sanila@12345")

        # Click the login button
        login_button.click()

        # Wait for a while to see the result (you can adjust this based on your application's response time)
        time.sleep(2)
        self.assertEqual(self.driver.current_url, 'http://127.0.0.1:8000/home/')

    def tearDown(self):
        # Close the browser window
        self.driver.quit()

if __name__ == "__main__":
    unittest.main()
