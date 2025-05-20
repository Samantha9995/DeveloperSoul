import 'package:developer_soul_quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion('When you encounter a tricky bug, your first reaction is...?', {
    'Immediately ask AI! Stack Overflow is my savior!': 3,
    'Stare silently at the screen, trying to make it disappear with willpower.':
        2,
    'Rewrite the entire module! Who\'s afraid?': 1,
    'Make a coffee. Bugs always solve themselves, right?': 0,
  }),
  QuizQuestion('Your coding style is...?', {
    'Detailed comments, like writing a novel. Future me will thank me.': 3,
    'Clean and elegant. Less is more. If you can\'t understand it, you\'re just a noob.':
        2,
    'If it runs, it\'s good. Chaotic but orderly. Only I understand the art.':
        1,
    'Copy and paste, unchanged for years. Stability is key!': 0,
  }),
  QuizQuestion(
    'When you\'re working late at night, your source of inspiration is...?',
    {
      'A playlist! Upbeat rhythms keep me awake.': 3,
      'Snacks piled high on my desk. Potato chips are my motivation.': 2,
      'The sound of my colleagues\' keyboards, forming a perfect symphony.': 1,
      'Fantasizing about my vacation after this is done. That\'s what keeps me going.':
          0,
    },
  ),
  QuizQuestion(
    'How do you view meetings?',
    {
      'Necessary communication, but can we please end it quickly? I want to go back to coding!':
          3,
      'A complete waste of time. I\'m already debugging in my head.': 2,
      'It\'s okay, at least I can steal other people\'s ideas.': 1,
      'Meetings? Just let me fix all the problems directly!': 0,
    },
  ),
  QuizQuestion(
    'What\'s your attitude toward new technologies?',
    {
      'Dive in immediately! I want to learn all the new frameworks!': 3,
      'Wait and see. I\'ll wait until it\'s stable. The old tech is fine.': 2,
      'Learn a little, just enough to get by. Focus on solving real problems.':
          1,
      'New tech? Not unless the boss forces me to!': 0,
    },
  ),
  QuizQuestion(
    'What\'s the state of your keyboard?',
    {
      'Spotless. Cleaned regularly. A perfectionist\'s standard.': 3,
      'Covered in coffee stains and crumbs. The glorious marks of battle.': 2,
      'A few keycaps are missing, but it doesn\'t affect my lightning-fast coding.':
          1,
      'Keyboard? I can code on my phone screen!': 0,
    },
  ),
];
