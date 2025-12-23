import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StocksScreen extends StatelessWidget {
  const StocksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852), // Figma's original design size
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.white, // Page-Primary
        body: ClipRRect(
          borderRadius: BorderRadius.circular(56.r),
          child: Column(
            children: [
              SizedBox(height: 54.h),

              // Header Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.08), // Surface-Secondary
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                      child: SizedBox(
                        width: 20.w,
                        height: 20.h,
                        child: Icon(Icons.arrow_back, color: Colors.black, size: 20.w), // Back arrow icon
                      ),
                    ),
                    SizedBox(width: 8.w), // spacing in Figma was 8 in row
                    Expanded(
                      child: Text(
                        'Stock Investments',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black, // Text-Primary
                          fontSize: 18.sp,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500, // Figma has w590, approximating with w500
                          height: 1.33.h,
                          letterSpacing: -0.18.w,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w), // spacing in Figma was 8 in row
                    // Right-hand side button, placeholder
                    SizedBox(
                      width: 36.w,
                      height: 36.h,
                      child: Container(
                          // This seems to be an empty container in Figma for spacing or a future icon
                          ),
                    ),
                  ],
                ),
              ),

              // Search Bar Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.06), // Surface-Tertiary
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.56), // Text-Secondary
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.43.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Opacity(
                      opacity: 0.40,
                      child: SizedBox(
                        width: 20.w,
                        height: 20.h,
                        child: Center(child: Icon(Icons.search, color: Colors.black, size: 20.w)), // Search icon
                      ),
                    ),
                  ),
                ),
              ),

              // Filter Chips Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildFilterChip(
                        text: 'Kazakhstan',
                        textColor: Colors.black, // Text-Primary
                        borderColor: Colors.black.withOpacity(0.06), // Surface-Tertiary
                        leadingIcon: Image.network("https://placehold.co/16x16"), // Image placeholder
                        trailingIcon: Icon(Icons.keyboard_arrow_down, size: 14.w), // Icon replacement
                      ),
                      SizedBox(width: 8.w),
                      _buildFilterChip(
                        text: 'Compliance',
                        textColor: Colors.black.withOpacity(0.56), // Text-Secondary
                        borderColor: Colors.black.withOpacity(0.06), // Surface-Tertiary
                        trailingIcon: Icon(Icons.keyboard_arrow_down, size: 14.w), // Icon replacement
                      ),
                      SizedBox(width: 8.w),
                      _buildFilterChip(
                        text: 'Filter',
                        textColor: Colors.black.withOpacity(0.56), // Text-Secondary
                        borderColor: Colors.black.withOpacity(0.06), // Surface-Tertiary
                        trailingIcon: Icon(Icons.keyboard_arrow_down, size: 14.w), // Icon replacement
                      ),
                      SizedBox(width: 8.w),
                      _buildFilterChip(
                        text: 'Sort by',
                        textColor: Colors.black.withOpacity(0.56), // Text-Secondary
                        borderColor: Colors.black.withOpacity(0.06), // Surface-Tertiary
                        trailingIcon: Icon(Icons.keyboard_arrow_down, size: 14.w), // Icon replacement
                      ),
                    ],
                  ),
                ),
              ),

              // "342 stocks found" Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '342 stocks found',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.56), // Text-Secondary
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.43.h,
                    ),
                  ),
                ),
              ),

              // Stock List
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.r),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      StockListItem(
                        symbol: 'NVDA',
                        companyName: 'NVIDIA Corp',
                        price: '140.15 USD',
                        change: '-1.29%',
                        changeColor: Color(0xFFFF005B), // Nonadaptable-Red-100%
                        logoUrl: "https://placehold.co/30x30",
                        logoWidth: 30,
                        logoHeight: 30,
                        logoPadding:
                            EdgeInsets.fromLTRB(3, 4, 0, 0), // From Figma to maintain aspect, adjusted for ScreenUtil
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'APPL',
                        companyName: 'Apple・5 days ago',
                        price: '224.23 USD',
                        change: '0.00%',
                        changeColor: Colors.black54, // Text-Secondary (alpha 0.56)
                        logoUrl: "https://placehold.co/22x22",
                        logoWidth: 22,
                        logoHeight: 22,
                        logoPadding: EdgeInsets.fromLTRB(9, 8, 0, 0),
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'MSFT',
                        companyName: 'Microsoft Corp',
                        price: '415.76 USD',
                        change: '+0.18%',
                        changeColor: Color(0xFF0CAE00), // Nonadaptable-Green-100%
                        logoUrl: "https://placehold.co/22x22",
                        logoWidth: 22,
                        logoHeight: 22,
                        logoPadding: EdgeInsets.fromLTRB(9, 9, 0, 0),
                        verificationIcon: Icon(Icons.cancel_rounded, color: Color(0xFFFF005B), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'GOOGL',
                        companyName: 'Alphabet Inc',
                        price: '175.30 USD',
                        change: '1.63%',
                        changeColor: Color(0xFF0CAE00), // Nonadaptable-Green-100%
                        logoUrl: "https://placehold.co/42x40",
                        logoWidth: 42,
                        logoHeight: 40,
                        logoPadding: EdgeInsets.zero,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'AMZN',
                        companyName: 'Amazon',
                        price: '201.70 USD',
                        change: '0.45%',
                        changeColor: Color(0xFFFF005B), // Nonadaptable-Red-100%
                        logoUrl: "https://placehold.co/42x40",
                        logoWidth: 42,
                        logoHeight: 40,
                        logoPadding: EdgeInsets.zero,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'META',
                        companyName: 'Meta Platforms Inc',
                        price: '554.40 USD',
                        change: '0.06%',
                        changeColor: Color(0xFF0CAE00), // Nonadaptable-Green-100%
                        logoUrl: "https://placehold.co/40x40", // Figma had image on Container level
                        logoWidth: 40,
                        logoHeight: 40,
                        useContainerImage: true,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'BRK.A',
                        companyName: 'Berkshire Hathaway',
                        price: '708.00 USD',
                        change: '0.28%',
                        changeColor: Color(0xFF0CAE00), // Nonadaptable-Green-100%
                        logoUrl: "https://placehold.co/40x40",
                        logoWidth: 40,
                        logoHeight: 40,
                        verificationIcon: Icon(Icons.cancel_rounded, color: Color(0xFFFF005B), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'LLY',
                        companyName: 'Eli Lilly and Co',
                        price: '727.20 USD',
                        change: '-2.55%',
                        changeColor: Color(0xFFFF005B),
                        logoUrl: "https://placehold.co/40x40",
                        logoWidth: 40,
                        logoHeight: 40,
                        logoShape: BoxShape.circle,
                        companyNameOpacity: 0.56,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'AVGO',
                        companyName: 'Broadcom Inc',
                        price: '165.67 USD',
                        change: '+0.50%',
                        changeColor: Color(0xFF0CAE00),
                        logoUrl: "https://placehold.co/40x40",
                        logoWidth: 40,
                        logoHeight: 40,
                        logoShape: BoxShape.circle,
                        companyNameOpacity: 0.56,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                      StockListItem(
                        symbol: 'TSLA Inc', // Figma has TSLA Inc as symbol, but then Tesla Inc as company name
                        companyName: 'Tesla Inc',
                        price: '338.74USD',
                        change: '+5.62%',
                        changeColor: Color(0xFF0CAE00),
                        logoUrl: "https://placehold.co/40x40",
                        logoWidth: 40,
                        logoHeight: 40,
                        extraLogoContent: _buildTeslaBadge(),
                        companyNameOpacity: 0.56,
                        verificationIcon: Icon(Icons.check_circle_rounded, color: Color(0xFF0CAE00), size: 20.w),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 34.h), // Placeholder for bottom system UI, per instructions
            ],
          ),
        ),
      ),
    );
  }

  // Extracted widget for filter chips
  Widget _buildFilterChip({
    required String text,
    required Color textColor,
    required Color borderColor,
    Widget? leadingIcon,
    Widget? trailingIcon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (leadingIcon != null) ...[
            SizedBox(
              width: 16.w,
              height: 16.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.r), // Figma uses 30
                child: leadingIcon,
              ),
            ),
            SizedBox(width: 4.w),
          ],
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14.sp,
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.w400,
              height: 1.43.h,
            ),
          ),
          if (trailingIcon != null) ...[
            SizedBox(width: 4.w),
            SizedBox(
              width: 14.w,
              height: 14.h,
              child: trailingIcon,
            ),
          ],
        ],
      ),
    );
  }

  // Special badge for Tesla item
  Widget _buildTeslaBadge() {
    return Positioned(
      left: 24.w,
      top: 23.h,
      child: Container(
        width: 20.r,
        height: 20.r,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF0CAE00),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2.w,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        child: SizedBox(
          width: 16.w,
          height: 16.h,
          child: Icon(Icons.check_circle_rounded, color: Colors.white, size: 16.w), // Icon replacement
        ),
      ),
    );
  }
}

// Extracted widget for a single stock list item
class StockListItem extends StatelessWidget {
  final String symbol;
  final String companyName;
  final String price;
  final String change;
  final Color changeColor;
  final String logoUrl;
  final double logoWidth;
  final double logoHeight;
  final EdgeInsets? logoPadding;
  final bool useContainerImage;
  final BoxShape logoShape;
  final Widget? extraLogoContent;
  final double companyNameOpacity;
  final Widget? verificationIcon;

  const StockListItem({
    Key? key,
    required this.symbol,
    required this.companyName,
    required this.price,
    required this.change,
    required this.changeColor,
    required this.logoUrl,
    required this.logoWidth,
    required this.logoHeight,
    this.logoPadding,
    this.useContainerImage = false,
    this.logoShape = BoxShape.rectangle,
    this.extraLogoContent,
    this.companyNameOpacity = 1.0,
    this.verificationIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40.r,
            height: 40.r,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.w,
                  color: Colors.black.withOpacity(0.12),
                ),
                borderRadius: BorderRadius.circular(48.r),
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: logoPadding ?? EdgeInsets.zero,
                    child: useContainerImage
                        ? Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(logoUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : (logoShape == BoxShape.circle
                            ? ClipOval(
                                child: Image.network(
                                  logoUrl,
                                  width: logoWidth.w,
                                  height: logoHeight.h,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Image.network(
                                logoUrl,
                                width: logoWidth.w,
                                height: logoHeight.h,
                                fit: BoxFit.cover,
                              )),
                  ),
                ),
                if (extraLogoContent != null) extraLogoContent!,
              ],
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      symbol,
                      style: TextStyle(
                        color: Colors.black, // Text-Primary
                        fontSize: 16.sp,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w500, // Figma has w510, approximating with w500
                        height: 1.50.h,
                        letterSpacing: -0.16.w,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: verificationIcon ?? const SizedBox.shrink(), // Icon replacement
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Opacity(
                  opacity: companyNameOpacity,
                  child: Text(
                    companyName,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.56), // Text-Secondary or Text-Primary with opacity
                      fontSize: 14.sp,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.43.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black, // Text-Primary
                  fontSize: 16.sp,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w400,
                  height: 1.50.h,
                  letterSpacing: -0.16.w,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                change,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: changeColor,
                  fontSize: 14.sp,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w400,
                  height: 1.43.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
