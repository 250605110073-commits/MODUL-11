
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/tasbih_controller.dart';

class TasbihHome extends StatelessWidget {
  const TasbihHome({super.key});

  @override
  Widget build(BuildContext context) {
    final TasbihController controller = Get.put(TasbihController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasbih Digital'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.fingerprint,
                size: 100,
                color: Colors.teal,
              ),
              const SizedBox(height: 20),
              Obx(
                () => Text(
                  '${controller.counter.value}',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text('Target: 33'),
              const SizedBox(height: 20),
              Obx(
                () => LinearProgressIndicator(
                  value: controller.progress.value,
                  minHeight: 12,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: controller.incrementCounter,
                child: const Text('Tambah Tasbih'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.resetCounter,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
