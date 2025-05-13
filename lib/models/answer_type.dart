class AnswerType {
  const AnswerType(this.score);

  final double score;

  final String fullStackDreamer = 'Full-Stack Dreamer';
  final String bugHunter = 'Bug Hunter';
  final String frontendFanatic = 'Caffeine Warrior';
  final String backendBuilder = 'Zen Coder';

  String get answer {
    if (score >= 15 && score <= 18) {
      return fullStackDreamer;
    } else if (score >= 10 && score <= 14) {
      return bugHunter;
    } else if (score >= 5 && score <= 9) {
      return frontendFanatic;
    } else {
      return backendBuilder;
    }
  }

  String get answerDescption {
    if (answer == fullStackDreamer) {
      return 'You are the "all-around warrior" of programmers, eager to learn new technologies and pursue perfect code and system architecture. \n\nYou may be the one on the team who knows a little bit about everything and wants to try everything. Be careful not to burn out, and relax occasionally! \n\nSuggestion: Try open-source projects to showcase your all-around talent!';
    } else if (answer == bugHunter) {
      return 'You are the Sherlock Holmes of debugging. Bugs have nowhere to hide in front of you. You are calm, patient, and good at finding the truth in chaos, but occasionally you\'ll be driven crazy by a small comma. \n\nSuggestion: Share your debugging stories on X or Medium. Maybe you can become a legend!';
    } else if (answer == frontendFanatic) {
      return 'Your programming life is supported by coffee and willpower. You are casual but efficient. You are not particular about details, as long as the program runs. \n\nYou have a casual attitude toward life, but occasionally you forget what comments are for. \n\nSuggestion: Try automation tools to reduce your "hard work" time!';
    } else {
      return 'You are a master of "non-action governance" in the programming world, believing that programs and life are the same, going with the flow. \n\nYou may not like to pursue new technologies, but stability and efficiency are never lacking. \n\nSuggestion: Occasionally challenge new frameworks. Maybe you\'ll discover new fun!';
    }
  }

}