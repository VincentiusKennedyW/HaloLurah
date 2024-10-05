import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';

void showDetailDialog(BuildContext context, Map<String, dynamic> complaint) {
  final messages = complaint['messages'] as String?;
  final imageUrl = complaint['imageUrl'] as String?;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Detail Laporan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.person, color: Colors.blue),
                      title: const Text('Pelapor'),
                      subtitle: Text(complaint['name'] ?? 'N/A'),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.phone, color: Colors.green),
                      title: const Text('Nomor Telepon'),
                      subtitle: Text(complaint['phone'] ?? 'N/A'),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.location_on, color: Colors.red),
                      title: const Text('RT'),
                      subtitle: Text(complaint['rt'] ?? 'N/A'),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.home, color: Colors.orange),
                      title: const Text('Lokasi Laporan'),
                      subtitle: Text(complaint['address'] ?? 'N/A'),
                    ),
                    const Divider(height: 16),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.description, color: Colors.purple),
                      title: Text('Deskripsi'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        complaint['description'] ?? 'N/A',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const Divider(height: 16),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.message, color: Colors.teal),
                      title: Text('Pesan'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        messages == null || messages.isEmpty
                            ? 'Tidak ada pesan'
                            : messages,
                        style: TextStyle(
                          color: messages == null || messages.isEmpty
                              ? Colors.grey
                              : Colors.black,
                        ),
                      ),
                    ),
                    const Divider(height: 16),
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.image, color: Colors.indigo),
                      title: Text('Gambar'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: imageUrl != null
                          ? GestureDetector(
                              onTap: () {
                                showImageDialog(context, imageUrl);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Text('Error loading image');
                                  },
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return const Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          : const Text('Tidak ada gambar untuk laporan ini',
                              style: TextStyle(color: Colors.grey)),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon: const Icon(Icons.close),
                        label: const Text('Tutup'),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

void showImageDialog(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: PhotoView(
            imageProvider: NetworkImage(imageUrl),
          ),
        ),
      );
    },
  );
}
