crowd_funding = {
  tier_1: {
    tier_name: "Basic Supporter",
    amount_paid: {
        min_amount: 1,
        max_amount: 4.99
    },
    rewards: [
      "Thank you note",
      "Updates"
    ]

  },
  tier_2: {
    tier_name: "Advanced Supporter",
    amount_paid: {
        min_amount: 5,
        max_amount: 9.99
    },
    rewards: [
      "Thank you note",
      "Updates",
      "Soundtrack"
    ]
  },
  tier_3: {
    tier_name: "Gold Supporter",
    amount_paid: {
        min_amount: 10,
        max_amount: 24.99
    },
    rewards: [
      "Thank you note",
      "Updates",
      "Soundtrack",
      "Artwork"
    ]
  },
  tier_4: {
    tier_name: "Platinum Supporter",
    amount_paid: {
        min_amount: 25,
        max_amount: 99.99
    },
    rewards: [
      "Thank you note",
      "Updates",
      "Soundtrack",
      "Artwork",
      "Skype Call with Dev Team"
    ]
  },
  tier_5: {
    tier_name: "Diamond Supporter",
    amount_paid: {
        min_amount: 100,
        max_amount: nil
    },
    rewards: [
      "Thank you note",
      "Updates",
      "Soundtrack",
      "Artwork",
      "Skype Call with Dev Team",
      "Tour of Office"
    ]
  }
}

p crowd_funding[:tier_5][:rewards][-1]
p crowd_funding[:tier_1][:amount_paid]
p crowd_funding[:tier_3][:tier_name]
crowd_funding[:tier_5][:rewards].push("Easter egg with your name")
p crowd_funding[:tier_5][:rewards]