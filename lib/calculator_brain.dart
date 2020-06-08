import 'dart:math';
import 'package:bmi_calculator/screens/input_page.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.sex});

  final int height;
  final int weight;
  final int age;
  final Gender sex;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // Określa ile ma być miejsc po przecinku
  }

  String getResult() {
    if (age < 19) {
      return 'Jesteś za młody';
    }

    if (age >= 19 && age <= 24) {
      if (_bmi >= 19.5 && _bmi <= 23.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 23.5) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }

    if (age >= 25 && age <= 34) {
      if (_bmi >= 20.5 && _bmi <= 24.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 24.5) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }

    if (age >= 35 && age <= 44) {
      if (_bmi >= 21.5 && _bmi <= 25.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 25.5) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }

    if (age >= 45 && age <= 54) {
      if (_bmi >= 22.5 && _bmi <= 26.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 26.5) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }

    if (age >= 55 && age <= 64) {
      if (_bmi >= 23.5 && _bmi <= 27.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 27) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }

    if (age > 64) {
      if (_bmi >= 24.5 && _bmi <= 28.5) {
        return 'Jesteś w normie';
      } else if (_bmi > 28.5) {
        return 'Nadwaga';
      } else
        return 'Niedowaga';
    }
  }

  String getInterpretation() {
    if (age < 19) {
      return 'Poczekaj aż dorośniesz bo w twoim wieku te wyliczenia są gówno warte';
    }

    if (sex == Gender.male) {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 19.5 && _bmi <= 23.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 23.5) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age >= 19 && age <= 24) {
        if (_bmi >= 19.5 && _bmi <= 23.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 23.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }
    if (sex == Gender.male) {
      if (age >= 25 && age <= 34) {
        if (_bmi >= 20.5 && _bmi <= 24.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 24.5) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age >= 25 && age <= 34) {
        if (_bmi >= 20.5 && _bmi <= 24.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 24.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }

    if (sex == Gender.male) {
      if (age >= 35 && age <= 44) {
        if (_bmi >= 21.5 && _bmi <= 25.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 25.5) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age >= 35 && age <= 44) {
        if (_bmi >= 21.5 && _bmi <= 25.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 25.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }
    if (sex == Gender.male) {
      if (age >= 45 && age <= 54) {
        if (_bmi >= 22.5 && _bmi <= 26.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 26.5) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age >= 45 && age <= 54) {
        if (_bmi >= 22.5 && _bmi <= 26.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 26.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }

    if (sex == Gender.male) {
      if (age >= 55 && age <= 64) {
        if (_bmi >= 23.5 && _bmi <= 27.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 27) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age >= 55 && age <= 64) {
        if (_bmi >= 23.5 && _bmi <= 27.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 27.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }

    if (sex == Gender.male) {
      if (age > 64) {
        if (_bmi >= 24.5 && _bmi <= 28.5) {
          return 'Jesteś zajebisty! Możesz żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 28.5) {
          return 'Żresz za dużo, masz nadwagę i nic z tym nie robisz. I pamiętaj, pod dużym kamieniem mała ryba.';
        } else
          return 'Zacznij żreć bo niedługo znikniesz.';
      }
    } else {
      if (age > 64) {
        if (_bmi >= 24.5 && _bmi <= 28.5) {
          return 'Jesteś zajebista! Możesz kobito żreć słodkie i mieć wyrąbane na wszystko';
        } else if (_bmi > 28.5) {
          return 'Żresz za dużo, masz nadwagę i gruby tyłek, nikt się na Ciebie nie popatrzy nawet. Żenada';
        } else
          return 'Zacznij żreć kobito bo niedługo znikniesz, chłop musi mieć za co złapać';
      }
    }
  }
}
