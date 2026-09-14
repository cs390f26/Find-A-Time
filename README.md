# Find-a-Time

A scheduling poll app for finding a meeting time that works for a group.

## Overview

One user creates a poll with a set of candidate time slots for a meeting.
Other users mark which of those time slots work for them. The system
aggregates responses and shows a count of how many people are available
per time slot, helping the organizer pick the best time to meet.

## Planned Screens

- Create a new poll (add candidate time slots)
- View a poll and submit your availability
- View results (counts per time slot)

## Data Model (rough)

- **Time Slots** — belongs to a poll, has a date/time
- **Responses** — links a participant to a time slot with their availability

## Tech Stack

- Flask
- SQL database
- pytest for testing

## Repos

- `find-a-time-specs` (this repo) — use cases, mockups, schema, sample data
- `find-a-time-monolith` — application implementation
