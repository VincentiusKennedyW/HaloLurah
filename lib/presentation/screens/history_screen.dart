import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pengaduan_warga/widgets/build_shimmer.dart';

import 'package:pengaduan_warga/data/complaint_service.dart';
import 'package:pengaduan_warga/presentation/bloc/history/history_bloc.dart';
import 'package:pengaduan_warga/widgets/app_about_dialog.dart';
import 'package:pengaduan_warga/widgets/complaint_detail_bottomsheet.dart';

class HistoryScreen extends StatelessWidget {
  final ComplaintService complaintService;

  const HistoryScreen({required this.complaintService, super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HistoryBloc>().add(LoadHistory());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Riwayat Laporan Anda',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.info_outlined,
            ),
            onPressed: () {
              showAppAboutDialog(context);
            },
          ),
        ],
        forceMaterialTransparency: true,
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryLoading) {
            return buildShimmerLoadingEffect();
          }
          if (state is HistoryError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          if (state is HistoryLoaded) {
            return StreamBuilder<List<Map<String, dynamic>>>(
              stream: state.complaintsStream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return buildShimmerLoadingEffect();
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                final complaints = snapshot.data ?? [];
                if (complaints.isEmpty) {
                  return const Center(
                      child: Text('Belum ada laporan yang dibuat'));
                }
                return ListView.builder(
                  itemCount: complaints.length,
                  itemBuilder: (context, index) {
                    final complaint = complaints[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Expanded(
                                    child: Text(
                                      complaint['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.blue,
                                    ),
                                    child: const Text('Detail'),
                                    onPressed: () {
                                      showDetailDialog(context, complaint);
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'Laporan pada tanggal:',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Text(
                                DateFormat('dd MMMM yyyy HH:mm').format(
                                  (complaint['timestamp'] as Timestamp)
                                      .toDate(),
                                ),
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              const SizedBox(height: 4.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4.0,
                                  horizontal: 8.0,
                                ),
                                decoration: BoxDecoration(
                                  color: _getStatusColor(complaint['status']),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Text(
                                  'Status: ${complaint['status']}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
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
          return const Center(child: Text('Error Tidak Diketahui'));
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Menunggu Konfirmasi':
        return Colors.orange;
      case 'Diterima':
        return Colors.green;
      case 'Ditolak':
        return Colors.red;
      case 'Selesai':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
