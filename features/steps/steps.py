@given(u'Given a user visits the site')
def impl(context):
    context.browser.visit('/')

@when(u'I enter an "invalid email"')
def step_impl(context):
    email_field = context.browser.find_by_id('email')
    password_field.send_keys('invalid')
    submit_button = context.browser.find_by_id('els-continue')
    submit_button.click()

@then(u'I should see the message {error_message}')
def imple(context, error_message):
    message = context.browser.find_by_id('emailerror')
    assert message.text == auth_message