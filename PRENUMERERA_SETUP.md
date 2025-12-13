# Prenumerera (Newsletter Subscription) - Setup Guide

## Overview
The newsletter subscription page (`/prenumerera/`) has been implemented with:
- Information about what subscribing means
- Email submission form
- Collapsible GDPR and privacy policy section
- Form handling using Formspree

## Formspree Integration Status

✅ **The Formspree integration is now active!**

The subscription form is configured with the Formspree endpoint:
- Form endpoint: `https://formspree.io/f/xovgrkov`
- Method: POST
- Email field: `name="email"`
- Name field: `name="name"`

The form is ready to accept newsletter subscriptions.

## Formspree Dashboard

To manage your newsletter subscriptions, visit your Formspree dashboard at [formspree.io](https://formspree.io/) where you can:
- View all form submissions
- Export email addresses as CSV
- Set up email notifications when someone subscribes
- Configure auto-response emails to subscribers
- Set up integrations with other services (e.g., Mailchimp)

## Managing Subscriptions

To effectively manage your newsletter subscriptions:
- Log in to your Formspree dashboard regularly
- Export submissions as CSV
- Import email addresses into your preferred email marketing platform

## Alternative Solutions

If you prefer not to use Formspree, here are other static site form solutions:

### 1. Netlify Forms (if hosted on Netlify)
- Add `netlify` attribute to the form tag
- No external service needed

### 2. Google Forms
- Create a Google Form
- Embed it or use a third-party service to submit data

### 3. Basin
- Similar to Formspree
- Also GDPR compliant

### 4. Email Service Providers
For a more complete newsletter solution:
- **Mailchimp** - Popular newsletter service with embedded forms
- **Sendinblue** - Email marketing platform
- **ConvertKit** - Creator-focused email marketing
- **Buttondown** - Simple newsletter service

## Features Implemented

### 1. Subscription Information
The page explains what subscribers will receive:
- Latest news about investigative journalism
- Exclusive tips and techniques
- Information about courses and workshops
- Updates about new tools and features
- Insights from experienced journalists

### 2. Email Form
- Email field (required)
- Name field (optional)
- Submit button with loading state
- Success/error message display

### 3. GDPR Compliance
The collapsible GDPR section includes:
- Data collection information
- How data is used
- Legal basis for processing
- Data retention policy
- Third-party sharing disclosure
- User rights under GDPR
- Unsubscribe information
- Security measures
- Contact information

### 4. User Experience
- Consistent styling with the rest of the site
- Responsive design for mobile devices
- Smooth animations
- Clear call-to-action
- Form validation
- Loading states
- Success/error feedback

## Testing

To test the subscription form:
1. Deploy the changes to your GitHub Pages site
2. Navigate to `/prenumerera/`
3. Fill in the form with a test email
4. Submit the form
5. Check your Formspree dashboard for the submission
6. Verify that you receive a confirmation email (if configured)

## Maintenance

Regular tasks:
- Export email addresses from Formspree periodically
- Import them into your email marketing platform
- Monitor subscription rate
- Update privacy policy as needed
- Respond to data access requests

## Security Notes

- The form uses HTTPS by default (GitHub Pages)
- Formspree is GDPR compliant
- No sensitive data is collected beyond email addresses
- Email addresses are stored securely by Formspree
- Users can unsubscribe at any time

## Questions?

If you have any questions about the implementation or need help setting up Formspree, please refer to:
- [Formspree Documentation](https://help.formspree.io/)
- [GDPR Compliance Guide](https://gdpr.eu/)
