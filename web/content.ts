export const content = {
  // Hero section
  hero: {
    logoAlt: "SoulTalk",
    textParts: {
      before: "Check your connection ",
      gradient: "with yourself",
      after: ". SoulTalk helps you explore your inner world through AI-guided reflection, building self-awareness and emotional wellness one conversation at a time."
    }
  },

  // About section
  about: {
    title: "Everything you need to grow from within",
    subtitle: "SoulTalk combines thoughtful design with powerful AI to create a deeply personal experience",
    cards: [
      {
        title: "Guided Reflection",
        description: "Thoughtful prompts that help you explore your feelings, values, and experiences with empathy and care."
      },
      {
        title: "AI-Powered Insights",
        description: "Receive personalized observations and patterns about your emotional journey, powered by advanced AI."
      },
      {
        title: "Track Your Growth",
        description: "Watch your self-awareness deepen over time with meaningful progress tracking and milestones."
      },
      {
        title: "Safe & Private",
        description: "Your reflections are completely private. We protect your data with industry-leading security."
      }
    ]
  },

  // Journey section
  journey: {
    title: "Your Journey Within",
    subtitle: "Building self-awareness doesn't have to be complicated. Here's how SoulTalk works.",
    steps: [
      {
        label: "01",
        title: "Share Your Thoughts",
        description: "Open up to our AI companion about what's on your mind. No judgment, just understanding."
      },
      {
        label: "02",
        title: "Receive Insights",
        description: "Get personalized reflections and questions that help you see patterns and perspectives."
      },
      {
        label: "03",
        title: "Track Your Journey",
        description: "Watch your emotional awareness grow as you build a consistent practice of self-discovery."
      }
    ]
  },

  // Services section
  services: {
    title: "Soul Services",
    subtitle: "Everything you need to build a deeper connection with yourself",
    items: [
      {
        title: "Affirmation Mirror",
        description: "A feature that generates personalized affirmations based on your journal entries and emotional patterns, delivered either in a mirror-like interface or through the SoulPal character."
      },
      {
        title: "SoulPal",
        description: "Your personalized AI companion that guides you through the app, reacts to your progress, celebrates milestones with animations, and provides encouragement throughout your journey."
      },
      {
        title: "SoulSights",
        description: "The core insight engine that delivers deep, personalized analysis of your journal entries, identifying emotional patterns, recurring themes, and root causes of behaviors."
      },
      {
        title: "Practice & Coping Library",
        description: "A collection of short, actionable exercises (breathwork, somatic resets, cognitive reframes, mantras) that you can access on-demand or receive as recommendations based on your emotional state."
      }
    ]
  },

  // Journal section
  journal: {
    title: "Reflect & Discover",
    subtitle: "Reflect on your day through voice or text. Let AI help you discover patterns and insights in your emotional journey.",
    tabs: {
      text: "Text",
      voice: "Voice"
    },
    textPlaceholder: "How are you feeling today? What's on your mind...",
    voiceInstruction: "Tap to start recording",
    note: "AI will analyze your reflections",
    saveButton: "Save Entry"
  },

  // Footer section
  footer: {
    joinConfirmation: {
      title: "Ready to Begin Your\nJourney Within?",
      subtitle: "Join thousands discovering deeper self-awareness and emotional wellness. Your companion is waiting to listen.",
      primaryButton: "Get Started Free",
      secondaryButton: "Download App",
      note: "No credit card required • Start chatting in 30 seconds"
    },
    logoAlt: "SoulTalk Logo",
    copyrightText: "Affiliated with SoulTalk © {year}. All rights reserved.",
    links: [
      { text: "Privacy Policy", href: "#privacy" },
      { text: "Terms of Service", href: "#terms" },
      { text: "Contact", href: "#contact" }
    ]
  },

  // Navigation
  nav: {
    menuLabel: "Open menu",
    closeLabel: "Close menu",
    items: [
      { name: "HOME", id: "hero" },
      { name: "ABOUT", id: "about" },
      { name: "JOURNEY", id: "journey" },
      { name: "SERVICES", id: "services" },
      { name: "JOURNAL", id: "journal" }
    ]
  }
}

export type ContentType = typeof content
