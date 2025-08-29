import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/language_service.dart';

class LanguageSelector extends StatelessWidget {
  final bool showLabel;
  final bool isCompact;
  
  const LanguageSelector({
    Key? key,
    this.showLabel = true,
    this.isCompact = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        if (isCompact) {
          return _buildCompactSelector(context, languageService);
        } else {
          return _buildFullSelector(context, languageService);
        }
      },
    );
  }
  
  Widget _buildCompactSelector(BuildContext context, LanguageService languageService) {
    return PopupMenuButton<Locale>(
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              languageService.currentLanguageFlag,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(width: 6),
            Text(
              languageService.currentLocale.languageCode.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
      onSelected: (Locale locale) {
        languageService.changeLanguage(locale);
      },
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
      itemBuilder: (BuildContext context) {
        return LanguageService.supportedLocales.map((Locale locale) {
          final isSelected = languageService.currentLocale == locale;
          return PopupMenuItem<Locale>(
            value: locale,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    languageService.getLanguageFlag(locale.languageCode),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    languageService.getLanguageName(locale.languageCode),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  if (isSelected) ...[
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        }).toList();
      },
    );
  }
  
  Widget _buildFullSelector(BuildContext context, LanguageService languageService) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showLabel) ...[
            const Text(
              'Dil Seçin / Select Language',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
          ],
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Locale>(
                value: languageService.currentLocale,
                isExpanded: true,
                dropdownColor: Colors.grey[900],
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (Locale? newLocale) {
                  if (newLocale != null) {
                    languageService.changeLanguage(newLocale);
                  }
                },
                items: LanguageService.supportedLocales.map((Locale locale) {
                  return DropdownMenuItem<Locale>(
                    value: locale,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            languageService.getLanguageFlag(locale.languageCode),
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            languageService.getLanguageName(locale.languageCode),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          if (languageService.currentLocale == locale)
                            const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 20,
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
