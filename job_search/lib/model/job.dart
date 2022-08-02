class Job {
  final String company;
  final String logoUrl;
  bool isMark;
  final String title;
  final String location;
  final String time;
  final List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'Airbnb Inc',
        'assets/images/airbnb_logo.png',
        false,
        'VP Business Intelegence',
        '50 Herminia Stravenue,\n Canada',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'Have technical,practical and scientific knowledge and ability',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        false,
        'Principal Product Design',
        '417 Marion Plaza,Texas \n United States',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'Have technical,practical and scientific knowledge and ability',
          'Interested in the way people choose and use products',
        ],
      ),
      Job(
        'Linkedin corp',
        'assets/images/linkedin_logo.png',
        false,
        'Talent Acqusition lead',
        '566 Eleanore Square \n France',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'Have technical,practical and scientific knowledge and ability',
          'Interested in the way people choose and use products',
        ],
      ),
    ];
  }
}
