import 'package:flutter/material.dart';
import '../services/fact_service.dart';

class FactView extends StatefulWidget {
  const FactView({super.key});

  @override
  State<FactView> createState() => _FactViewState();
}

class _FactViewState extends State<FactView> {
  final _factService = FactService();
  String _fact = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadFact();
  }

  Future<void> _loadFact() async {
    setState(() => _isLoading = true);
    final fact = await _factService.fetchFact();
    setState(() {
      _fact = fact;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Интересные факты'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadFact,
            tooltip: 'Обновить факт',
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _loadFact,
        child: ListView(
          padding: const EdgeInsets.all(16),
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            if (_isLoading)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: CircularProgressIndicator(),
                ),
              )
            else
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(Icons.lightbulb, size: 48, color: Colors.amber),
                      const SizedBox(height: 16),
                      Text(
                        _fact,
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}