import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review {
  final double rating;
  final String review;

  Review(this.rating, this.review);
}

class RatingPage extends StatefulWidget {
  final List<Review> reviews;
  final Function(List<Review>) onReviewSubmitted;

  const RatingPage({super.key, required this.reviews, required this.onReviewSubmitted});

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double _userRating = 3.0;
  final TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rate this Station"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "How would you rate this charging station?",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            RatingBar.builder(
              initialRating: _userRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _userRating = rating;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _reviewController,
              decoration: const InputDecoration(
                labelText: 'Write a review (optional)',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Review newReview = Review(_userRating, _reviewController.text);
                setState(() {
                  widget.reviews.add(newReview);
                });
                widget.onReviewSubmitted(widget.reviews);
                _reviewController.clear();
                Navigator.pushNamed(context, 'reviewsList');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.greenAccent,
                ),
              ),
              child: const Text(
                'Submit Rating',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
