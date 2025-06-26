package defpackage;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class pb {
    public static final c[] A;
    public static final c B;
    public static final c[] C;
    public static final c[] D;
    public static final c[] E;
    public static final c[] F;
    public static final c[][] G;
    public static final c[] H;
    public static final HashMap<Integer, c>[] I;
    public static final HashMap<String, c>[] J;
    public static final HashSet<String> K;
    public static final HashMap<Integer, Integer> L;
    public static final Charset M;
    public static final byte[] N;
    public static SimpleDateFormat s;
    public static final c[] w;
    public static final c[] x;
    public static final c[] y;
    public static final c[] z;
    public final String a;
    public int b;
    public final HashMap<String, b>[] c;
    public Set<Integer> d;
    public ByteOrder e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public static final List<Integer> l = Arrays.asList(1, 6, 3, 8);
    public static final List<Integer> m = Arrays.asList(2, 7, 4, 5);
    public static final int[] n = {8, 8, 8};
    public static final int[] o = {8};
    public static final byte[] p = {-1, -40, -1};
    public static final byte[] q = {79, 76, 89, 77, 80, 0};
    public static final byte[] r = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final String[] t = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    public static final int[] u = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    public static final byte[] v = {65, 83, 67, 73, 73, 0, 0, 0};

    public static class b {
        public final int a;
        public final int b;
        public final byte[] c;

        public b(int i, int i2, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = bArr;
        }

        public static b a(String str) {
            byte[] bytes = jo.f(str, (char) 0).getBytes(pb.M);
            return new b(2, bytes.length, bytes);
        }

        public static b b(long j, ByteOrder byteOrder) {
            long[] jArr = {j};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[pb.u[4] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                byteBufferWrap.putInt((int) jArr[i]);
            }
            return new b(4, 1, byteBufferWrap.array());
        }

        public static b c(d dVar, ByteOrder byteOrder) {
            d[] dVarArr = {dVar};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[pb.u[5] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i = 0; i < 1; i++) {
                d dVar2 = dVarArr[i];
                byteBufferWrap.putInt((int) dVar2.a);
                byteBufferWrap.putInt((int) dVar2.b);
            }
            return new b(5, 1, byteBufferWrap.array());
        }

        public static b d(int i, ByteOrder byteOrder) {
            int[] iArr = {i};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[pb.u[3] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i2 = 0; i2 < 1; i2++) {
                byteBufferWrap.putShort((short) iArr[i2]);
            }
            return new b(3, 1, byteBufferWrap.array());
        }

        public double e(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objH instanceof String) {
                return Double.parseDouble((String) objH);
            }
            if (objH instanceof long[]) {
                if (((long[]) objH).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objH instanceof int[]) {
                if (((int[]) objH).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objH instanceof double[]) {
                double[] dArr = (double[]) objH;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objH instanceof d[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            d[] dVarArr = (d[]) objH;
            if (dVarArr.length != 1) {
                throw new NumberFormatException("There are more than one component");
            }
            d dVar = dVarArr[0];
            return dVar.a / dVar.b;
        }

        public int f(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objH instanceof String) {
                return Integer.parseInt((String) objH);
            }
            if (objH instanceof long[]) {
                long[] jArr = (long[]) objH;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objH instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objH;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String g(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                return null;
            }
            if (objH instanceof String) {
                return (String) objH;
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            if (objH instanceof long[]) {
                long[] jArr = (long[]) objH;
                while (i < jArr.length) {
                    sb.append(jArr[i]);
                    i++;
                    if (i != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objH instanceof int[]) {
                int[] iArr = (int[]) objH;
                while (i < iArr.length) {
                    sb.append(iArr[i]);
                    i++;
                    if (i != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objH instanceof double[]) {
                double[] dArr = (double[]) objH;
                while (i < dArr.length) {
                    sb.append(dArr[i]);
                    i++;
                    if (i != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(objH instanceof d[])) {
                return null;
            }
            d[] dVarArr = (d[]) objH;
            while (i < dVarArr.length) {
                sb.append(dVarArr[i].a);
                sb.append('/');
                sb.append(dVarArr[i].b);
                i++;
                if (i != dVarArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x019f: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:152:0x019f */
        /* JADX WARN: Removed duplicated region for block: B:174:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object h(java.nio.ByteOrder r11) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: pb.b.h(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            StringBuilder sbZ = jo.z("(");
            sbZ.append(pb.t[this.a]);
            sbZ.append(", data length:");
            return jo.q(sbZ, this.c.length, ")");
        }
    }

    public static class d {
        public final long a;
        public final long b;

        public d(long j, long j2) {
            if (j2 == 0) {
                this.a = 0L;
                this.b = 1L;
            } else {
                this.a = j;
                this.b = j2;
            }
        }

        public String toString() {
            return this.a + "/" + this.b;
        }
    }

    static {
        c[] cVarArr = {new c("NewSubfileType", 254, 4), new c("SubfileType", Base64.BASELENGTH, 4), new c("ImageWidth", RecyclerView.a0.FLAG_TMP_DETACHED, 3, 4), new c("ImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", 301, 3), new c("Software", 305, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("SensorTopBorder", 4, 4), new c("SensorLeftBorder", 5, 4), new c("SensorBottomBorder", 6, 4), new c("SensorRightBorder", 7, 4), new c("ISO", 23, 3), new c("JpgFromRaw", 46, 7)};
        w = cVarArr;
        c[] cVarArr2 = {new c("ExposureTime", 33434, 5), new c("FNumber", 33437, 5), new c("ExposureProgram", 34850, 3), new c("SpectralSensitivity", 34852, 2), new c("PhotographicSensitivity", 34855, 3), new c("OECF", 34856, 7), new c("ExifVersion", 36864, 2), new c("DateTimeOriginal", 36867, 2), new c("DateTimeDigitized", 36868, 2), new c("ComponentsConfiguration", 37121, 7), new c("CompressedBitsPerPixel", 37122, 5), new c("ShutterSpeedValue", 37377, 10), new c("ApertureValue", 37378, 5), new c("BrightnessValue", 37379, 10), new c("ExposureBiasValue", 37380, 10), new c("MaxApertureValue", 37381, 5), new c("SubjectDistance", 37382, 5), new c("MeteringMode", 37383, 3), new c("LightSource", 37384, 3), new c("Flash", 37385, 3), new c("FocalLength", 37386, 5), new c("SubjectArea", 37396, 3), new c("MakerNote", 37500, 7), new c("UserComment", 37510, 7), new c("SubSecTime", 37520, 2), new c("SubSecTimeOriginal", 37521, 2), new c("SubSecTimeDigitized", 37522, 2), new c("FlashpixVersion", 40960, 7), new c("ColorSpace", 40961, 3), new c("PixelXDimension", 40962, 3, 4), new c("PixelYDimension", 40963, 3, 4), new c("RelatedSoundFile", 40964, 2), new c("InteroperabilityIFDPointer", 40965, 4), new c("FlashEnergy", 41483, 5), new c("SpatialFrequencyResponse", 41484, 7), new c("FocalPlaneXResolution", 41486, 5), new c("FocalPlaneYResolution", 41487, 5), new c("FocalPlaneResolutionUnit", 41488, 3), new c("SubjectLocation", 41492, 3), new c("ExposureIndex", 41493, 5), new c("SensingMethod", 41495, 3), new c("FileSource", 41728, 7), new c("SceneType", 41729, 7), new c("CFAPattern", 41730, 7), new c("CustomRendered", 41985, 3), new c("ExposureMode", 41986, 3), new c("WhiteBalance", 41987, 3), new c("DigitalZoomRatio", 41988, 5), new c("FocalLengthIn35mmFilm", 41989, 3), new c("SceneCaptureType", 41990, 3), new c("GainControl", 41991, 3), new c("Contrast", 41992, 3), new c("Saturation", 41993, 3), new c("Sharpness", 41994, 3), new c("DeviceSettingDescription", 41995, 7), new c("SubjectDistanceRange", 41996, 3), new c("ImageUniqueID", 42016, 2), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
        x = cVarArr2;
        c[] cVarArr3 = {new c("GPSVersionID", 0, 1), new c("GPSLatitudeRef", 1, 2), new c("GPSLatitude", 2, 5), new c("GPSLongitudeRef", 3, 2), new c("GPSLongitude", 4, 5), new c("GPSAltitudeRef", 5, 1), new c("GPSAltitude", 6, 5), new c("GPSTimeStamp", 7, 5), new c("GPSSatellites", 8, 2), new c("GPSStatus", 9, 2), new c("GPSMeasureMode", 10, 2), new c("GPSDOP", 11, 5), new c("GPSSpeedRef", 12, 2), new c("GPSSpeed", 13, 5), new c("GPSTrackRef", 14, 2), new c("GPSTrack", 15, 5), new c("GPSImgDirectionRef", 16, 2), new c("GPSImgDirection", 17, 5), new c("GPSMapDatum", 18, 2), new c("GPSDestLatitudeRef", 19, 2), new c("GPSDestLatitude", 20, 5), new c("GPSDestLongitudeRef", 21, 2), new c("GPSDestLongitude", 22, 5), new c("GPSDestBearingRef", 23, 2), new c("GPSDestBearing", 24, 5), new c("GPSDestDistanceRef", 25, 2), new c("GPSDestDistance", 26, 5), new c("GPSProcessingMethod", 27, 7), new c("GPSAreaInformation", 28, 7), new c("GPSDateStamp", 29, 2), new c("GPSDifferential", 30, 3)};
        y = cVarArr3;
        c[] cVarArr4 = {new c("InteroperabilityIndex", 1, 2)};
        z = cVarArr4;
        c[] cVarArr5 = {new c("NewSubfileType", 254, 4), new c("SubfileType", Base64.BASELENGTH, 4), new c("ThumbnailImageWidth", RecyclerView.a0.FLAG_TMP_DETACHED, 3, 4), new c("ThumbnailImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", 301, 3), new c("Software", 305, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
        A = cVarArr5;
        B = new c("StripOffsets", 273, 3);
        c[] cVarArr6 = {new c("ThumbnailImage", RecyclerView.a0.FLAG_TMP_DETACHED, 7), new c("CameraSettingsIFDPointer", 8224, 4), new c("ImageProcessingIFDPointer", 8256, 4)};
        C = cVarArr6;
        c[] cVarArr7 = {new c("PreviewImageStart", 257, 4), new c("PreviewImageLength", 258, 4)};
        D = cVarArr7;
        c[] cVarArr8 = {new c("AspectFrame", 4371, 3)};
        E = cVarArr8;
        c[] cVarArr9 = {new c("ColorSpace", 55, 3)};
        F = cVarArr9;
        c[][] cVarArr10 = {cVarArr, cVarArr2, cVarArr3, cVarArr4, cVarArr5, cVarArr, cVarArr6, cVarArr7, cVarArr8, cVarArr9};
        G = cVarArr10;
        H = new c[]{new c("SubIFDPointer", 330, 4), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("InteroperabilityIFDPointer", 40965, 4), new c("CameraSettingsIFDPointer", 8224, 1), new c("ImageProcessingIFDPointer", 8256, 1)};
        I = new HashMap[cVarArr10.length];
        J = new HashMap[cVarArr10.length];
        K = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        L = new HashMap<>();
        Charset charsetForName = Charset.forName("US-ASCII");
        M = charsetForName;
        N = "Exif\u0000\u0000".getBytes(charsetForName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        s = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            c[][] cVarArr11 = G;
            if (i >= cVarArr11.length) {
                HashMap<Integer, Integer> map = L;
                c[] cVarArr12 = H;
                map.put(Integer.valueOf(cVarArr12[0].a), 5);
                map.put(Integer.valueOf(cVarArr12[1].a), 1);
                map.put(Integer.valueOf(cVarArr12[2].a), 2);
                map.put(Integer.valueOf(cVarArr12[3].a), 3);
                map.put(Integer.valueOf(cVarArr12[4].a), 7);
                map.put(Integer.valueOf(cVarArr12[5].a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            I[i] = new HashMap<>();
            J[i] = new HashMap<>();
            for (c cVar : cVarArr11[i]) {
                I[i].put(Integer.valueOf(cVar.a), cVar);
                J[i].put(cVar.b, cVar);
            }
            i++;
        }
    }

    public pb(String str) throws Throwable {
        c[][] cVarArr = G;
        this.c = new HashMap[cVarArr.length];
        this.d = new HashSet(cVarArr.length);
        this.e = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            throw new IllegalArgumentException("filename cannot be null");
        }
        FileInputStream fileInputStream = null;
        this.a = str;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                m(fileInputStream2);
                try {
                    fileInputStream2.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static long[] b(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    public final void a() {
        String strC = c("DateTimeOriginal");
        if (strC != null && c("DateTime") == null) {
            this.c[0].put("DateTime", b.a(strC));
        }
        if (c("ImageWidth") == null) {
            this.c[0].put("ImageWidth", b.b(0L, this.e));
        }
        if (c("ImageLength") == null) {
            this.c[0].put("ImageLength", b.b(0L, this.e));
        }
        if (c("Orientation") == null) {
            this.c[0].put("Orientation", b.b(0L, this.e));
        }
        if (c("LightSource") == null) {
            this.c[1].put("LightSource", b.b(0L, this.e));
        }
    }

    public String c(String str) {
        b bVarD = d(str);
        if (bVarD != null) {
            if (!K.contains(str)) {
                return bVarD.g(this.e);
            }
            if (str.equals("GPSTimeStamp")) {
                int i = bVarD.a;
                if (i != 5 && i != 10) {
                    StringBuilder sbZ = jo.z("GPS Timestamp format is not rational. format=");
                    sbZ.append(bVarD.a);
                    Log.w("ExifInterface", sbZ.toString());
                    return null;
                }
                d[] dVarArr = (d[]) bVarD.h(this.e);
                if (dVarArr != null && dVarArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (dVarArr[0].a / dVarArr[0].b)), Integer.valueOf((int) (dVarArr[1].a / dVarArr[1].b)), Integer.valueOf((int) (dVarArr[2].a / dVarArr[2].b)));
                }
                StringBuilder sbZ2 = jo.z("Invalid GPS Timestamp array. array=");
                sbZ2.append(Arrays.toString(dVarArr));
                Log.w("ExifInterface", sbZ2.toString());
                return null;
            }
            try {
                return Double.toString(bVarD.e(this.e));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final b d(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i = 0; i < G.length; i++) {
            b bVar = this.c[i].get(str);
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x011a, code lost:
    
        r9.f = r8.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011e, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(pb.a r9, int r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb.e(pb$a, int, int):void");
    }

    public final int f(BufferedInputStream bufferedInputStream) throws IOException {
        boolean z2;
        boolean z3;
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i = 0;
        while (true) {
            byte[] bArr2 = p;
            if (i >= bArr2.length) {
                z2 = true;
                break;
            }
            if (bArr[i] != bArr2[i]) {
                z2 = false;
                break;
            }
            i++;
        }
        if (z2) {
            return 4;
        }
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        int i2 = 0;
        while (true) {
            if (i2 >= bytes.length) {
                z3 = true;
                break;
            }
            if (bArr[i2] != bytes[i2]) {
                z3 = false;
                break;
            }
            i2++;
        }
        if (z3) {
            return 9;
        }
        a aVar = new a(bArr);
        ByteOrder byteOrderO = o(aVar);
        this.e = byteOrderO;
        aVar.f = byteOrderO;
        short s2 = aVar.readShort();
        aVar.close();
        if (s2 == 20306 || s2 == 21330) {
            return 7;
        }
        a aVar2 = new a(bArr);
        ByteOrder byteOrderO2 = o(aVar2);
        this.e = byteOrderO2;
        aVar2.f = byteOrderO2;
        short s3 = aVar2.readShort();
        aVar2.close();
        return s3 == 85 ? 10 : 0;
    }

    public final void g(a aVar) throws Throwable {
        i(aVar);
        b bVar = this.c[1].get("MakerNote");
        if (bVar != null) {
            a aVar2 = new a(bVar.c);
            aVar2.f = this.e;
            byte[] bArr = q;
            byte[] bArr2 = new byte[bArr.length];
            aVar2.readFully(bArr2);
            aVar2.b(0L);
            byte[] bArr3 = r;
            byte[] bArr4 = new byte[bArr3.length];
            aVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                aVar2.b(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                aVar2.b(12L);
            }
            p(aVar2, 6);
            b bVar2 = this.c[7].get("PreviewImageStart");
            b bVar3 = this.c[7].get("PreviewImageLength");
            if (bVar2 != null && bVar3 != null) {
                this.c[5].put("JPEGInterchangeFormat", bVar2);
                this.c[5].put("JPEGInterchangeFormatLength", bVar3);
            }
            b bVar4 = this.c[8].get("AspectFrame");
            if (bVar4 != null) {
                int[] iArr = (int[]) bVar4.h(this.e);
                if (iArr == null || iArr.length != 4) {
                    StringBuilder sbZ = jo.z("Invalid aspect frame values. frame=");
                    sbZ.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", sbZ.toString());
                } else {
                    if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                        return;
                    }
                    int i = (iArr[2] - iArr[0]) + 1;
                    int i2 = (iArr[3] - iArr[1]) + 1;
                    if (i < i2) {
                        int i3 = i + i2;
                        i2 = i3 - i2;
                        i = i3 - i2;
                    }
                    b bVarD = b.d(i, this.e);
                    b bVarD2 = b.d(i2, this.e);
                    this.c[0].put("ImageWidth", bVarD);
                    this.c[0].put("ImageLength", bVarD2);
                }
            }
        }
    }

    public final void h(a aVar) throws IOException {
        aVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        aVar.read(bArr);
        aVar.skipBytes(4);
        aVar.read(bArr2);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        e(aVar, i, 5);
        aVar.b(i2);
        aVar.f = ByteOrder.BIG_ENDIAN;
        int i3 = aVar.readInt();
        for (int i4 = 0; i4 < i3; i4++) {
            int unsignedShort = aVar.readUnsignedShort();
            int unsignedShort2 = aVar.readUnsignedShort();
            if (unsignedShort == B.a) {
                short s2 = aVar.readShort();
                short s3 = aVar.readShort();
                b bVarD = b.d(s2, this.e);
                b bVarD2 = b.d(s3, this.e);
                this.c[0].put("ImageLength", bVarD);
                this.c[0].put("ImageWidth", bVarD2);
                return;
            }
            aVar.skipBytes(unsignedShort2);
        }
    }

    public final void i(a aVar) throws Throwable {
        b bVar;
        n(aVar, aVar.available());
        p(aVar, 0);
        s(aVar, 0);
        s(aVar, 5);
        s(aVar, 4);
        r(0, 5);
        r(0, 4);
        r(5, 4);
        b bVar2 = this.c[1].get("PixelXDimension");
        b bVar3 = this.c[1].get("PixelYDimension");
        if (bVar2 != null && bVar3 != null) {
            this.c[0].put("ImageWidth", bVar2);
            this.c[0].put("ImageLength", bVar3);
        }
        if (this.c[4].isEmpty() && l(this.c[5])) {
            HashMap<String, b>[] mapArr = this.c;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap<>();
        }
        if (!l(this.c[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        if (this.b != 8 || (bVar = this.c[1].get("MakerNote")) == null) {
            return;
        }
        a aVar2 = new a(bVar.c);
        aVar2.f = this.e;
        aVar2.b(6L);
        p(aVar2, 9);
        b bVar4 = this.c[9].get("ColorSpace");
        if (bVar4 != null) {
            this.c[1].put("ColorSpace", bVar4);
        }
    }

    public final void j(a aVar) throws Throwable {
        i(aVar);
        if (this.c[0].get("JpgFromRaw") != null) {
            e(aVar, this.k, 5);
        }
        b bVar = this.c[0].get("ISO");
        b bVar2 = this.c[1].get("PhotographicSensitivity");
        if (bVar == null || bVar2 != null) {
            return;
        }
        this.c[1].put("PhotographicSensitivity", bVar);
    }

    public final void k(a aVar, HashMap map) throws Throwable {
        int i;
        b bVar = (b) map.get("JPEGInterchangeFormat");
        b bVar2 = (b) map.get("JPEGInterchangeFormatLength");
        if (bVar == null || bVar2 == null) {
            return;
        }
        int iF = bVar.f(this.e);
        int iMin = Math.min(bVar2.f(this.e), aVar.available() - iF);
        int i2 = this.b;
        if (i2 != 4 && i2 != 9 && i2 != 10) {
            if (i2 == 7) {
                i = this.h;
            }
            if (iF > 0 || iMin <= 0 || this.a != null) {
                return;
            }
            aVar.b(iF);
            aVar.readFully(new byte[iMin]);
            return;
        }
        i = this.g;
        iF += i;
        if (iF > 0) {
        }
    }

    public final boolean l(HashMap map) throws IOException {
        b bVar = (b) map.get("ImageLength");
        b bVar2 = (b) map.get("ImageWidth");
        if (bVar == null || bVar2 == null) {
            return false;
        }
        return bVar.f(this.e) <= 512 && bVar2.f(this.e) <= 512;
    }

    public final void m(InputStream inputStream) throws IOException {
        for (int i = 0; i < G.length; i++) {
            try {
                this.c[i] = new HashMap<>();
            } catch (IOException unused) {
            } catch (Throwable th) {
                a();
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        this.b = f(bufferedInputStream);
        a aVar = new a(bufferedInputStream);
        switch (this.b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                i(aVar);
                break;
            case 4:
                e(aVar, 0, 0);
                break;
            case 7:
                g(aVar);
                break;
            case 9:
                h(aVar);
                break;
            case 10:
                j(aVar);
                break;
        }
        q(aVar);
        a();
    }

    public final void n(a aVar, int i) throws IOException {
        ByteOrder byteOrderO = o(aVar);
        this.e = byteOrderO;
        aVar.f = byteOrderO;
        int unsignedShort = aVar.readUnsignedShort();
        int i2 = this.b;
        if (i2 != 7 && i2 != 10 && unsignedShort != 42) {
            StringBuilder sbZ = jo.z("Invalid start code: ");
            sbZ.append(Integer.toHexString(unsignedShort));
            throw new IOException(sbZ.toString());
        }
        int i3 = aVar.readInt();
        if (i3 < 8 || i3 >= i) {
            throw new IOException(jo.g("Invalid first Ifd offset: ", i3));
        }
        int i4 = i3 - 8;
        if (i4 > 0 && aVar.skipBytes(i4) != i4) {
            throw new IOException(jo.g("Couldn't jump to first Ifd: ", i4));
        }
    }

    public final ByteOrder o(a aVar) throws IOException {
        short s2 = aVar.readShort();
        if (s2 == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s2 == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        StringBuilder sbZ = jo.z("Invalid byte order: ");
        sbZ.append(Integer.toHexString(s2));
        throw new IOException(sbZ.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(pb.a r24, int r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb.p(pb$a, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(pb.a r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb.q(pb$a):void");
    }

    public final void r(int i, int i2) throws Throwable {
        if (this.c[i].isEmpty() || this.c[i2].isEmpty()) {
            return;
        }
        b bVar = this.c[i].get("ImageLength");
        b bVar2 = this.c[i].get("ImageWidth");
        b bVar3 = this.c[i2].get("ImageLength");
        b bVar4 = this.c[i2].get("ImageWidth");
        if (bVar == null || bVar2 == null || bVar3 == null || bVar4 == null) {
            return;
        }
        int iF = bVar.f(this.e);
        int iF2 = bVar2.f(this.e);
        int iF3 = bVar3.f(this.e);
        int iF4 = bVar4.f(this.e);
        if (iF >= iF3 || iF2 >= iF4) {
            return;
        }
        HashMap<String, b>[] mapArr = this.c;
        HashMap<String, b> map = mapArr[i];
        mapArr[i] = mapArr[i2];
        mapArr[i2] = map;
    }

    public final void s(a aVar, int i) throws Throwable {
        b bVar;
        b bVarD;
        b bVarD2;
        b bVar2 = this.c[i].get("DefaultCropSize");
        b bVar3 = this.c[i].get("SensorTopBorder");
        b bVar4 = this.c[i].get("SensorLeftBorder");
        b bVar5 = this.c[i].get("SensorBottomBorder");
        b bVar6 = this.c[i].get("SensorRightBorder");
        if (bVar2 != null) {
            if (bVar2.a == 5) {
                d[] dVarArr = (d[]) bVar2.h(this.e);
                if (dVarArr == null || dVarArr.length != 2) {
                    StringBuilder sbZ = jo.z("Invalid crop size values. cropSize=");
                    sbZ.append(Arrays.toString(dVarArr));
                    Log.w("ExifInterface", sbZ.toString());
                    return;
                }
                bVarD = b.c(dVarArr[0], this.e);
                bVarD2 = b.c(dVarArr[1], this.e);
            } else {
                int[] iArr = (int[]) bVar2.h(this.e);
                if (iArr == null || iArr.length != 2) {
                    StringBuilder sbZ2 = jo.z("Invalid crop size values. cropSize=");
                    sbZ2.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", sbZ2.toString());
                    return;
                }
                bVarD = b.d(iArr[0], this.e);
                bVarD2 = b.d(iArr[1], this.e);
            }
            this.c[i].put("ImageWidth", bVarD);
            this.c[i].put("ImageLength", bVarD2);
            return;
        }
        if (bVar3 == null || bVar4 == null || bVar5 == null || bVar6 == null) {
            b bVar7 = this.c[i].get("ImageLength");
            b bVar8 = this.c[i].get("ImageWidth");
            if ((bVar7 == null || bVar8 == null) && (bVar = this.c[i].get("JPEGInterchangeFormat")) != null) {
                e(aVar, bVar.f(this.e), i);
                return;
            }
            return;
        }
        int iF = bVar3.f(this.e);
        int iF2 = bVar5.f(this.e);
        int iF3 = bVar6.f(this.e);
        int iF4 = bVar4.f(this.e);
        if (iF2 <= iF || iF3 <= iF4) {
            return;
        }
        b bVarD3 = b.d(iF2 - iF, this.e);
        b bVarD4 = b.d(iF3 - iF4, this.e);
        this.c[i].put("ImageLength", bVarD3);
        this.c[i].put("ImageWidth", bVarD4);
    }

    public static class a extends InputStream implements DataInput {
        public static final ByteOrder i = ByteOrder.LITTLE_ENDIAN;
        public static final ByteOrder j = ByteOrder.BIG_ENDIAN;
        public DataInputStream e;
        public ByteOrder f;
        public final int g;
        public int h;

        public a(InputStream inputStream) throws IOException {
            this.f = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.e = dataInputStream;
            int iAvailable = dataInputStream.available();
            this.g = iAvailable;
            this.h = 0;
            this.e.mark(iAvailable);
        }

        public long a() throws IOException {
            return readInt() & 4294967295L;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.e.available();
        }

        public void b(long j2) throws IOException {
            int i2 = this.h;
            if (i2 > j2) {
                this.h = 0;
                this.e.reset();
                this.e.mark(this.g);
            } else {
                j2 -= i2;
            }
            int i3 = (int) j2;
            if (skipBytes(i3) != i3) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.h++;
            return this.e.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.h++;
            return this.e.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i2 = this.h + 1;
            this.h = i2;
            if (i2 > this.g) {
                throw new EOFException();
            }
            int i3 = this.e.read();
            if (i3 >= 0) {
                return (byte) i3;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.h += 2;
            return this.e.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = this.h + i3;
            this.h = i4;
            if (i4 > this.g) {
                throw new EOFException();
            }
            if (this.e.read(bArr, i2, i3) != i3) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i2 = this.h + 4;
            this.h = i2;
            if (i2 > this.g) {
                throw new EOFException();
            }
            int i3 = this.e.read();
            int i4 = this.e.read();
            int i5 = this.e.read();
            int i6 = this.e.read();
            if ((i3 | i4 | i5 | i6) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f;
            if (byteOrder == i) {
                return (i6 << 24) + (i5 << 16) + (i4 << 8) + i3;
            }
            if (byteOrder == j) {
                return (i3 << 24) + (i4 << 16) + (i5 << 8) + i6;
            }
            StringBuilder sbZ = jo.z("Invalid byte order: ");
            sbZ.append(this.f);
            throw new IOException(sbZ.toString());
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i2 = this.h + 8;
            this.h = i2;
            if (i2 > this.g) {
                throw new EOFException();
            }
            int i3 = this.e.read();
            int i4 = this.e.read();
            int i5 = this.e.read();
            int i6 = this.e.read();
            int i7 = this.e.read();
            int i8 = this.e.read();
            int i9 = this.e.read();
            int i10 = this.e.read();
            if ((i3 | i4 | i5 | i6 | i7 | i8 | i9 | i10) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f;
            if (byteOrder == i) {
                return (i10 << 56) + (i9 << 48) + (i8 << 40) + (i7 << 32) + (i6 << 24) + (i5 << 16) + (i4 << 8) + i3;
            }
            if (byteOrder == j) {
                return (i3 << 56) + (i4 << 48) + (i5 << 40) + (i6 << 32) + (i7 << 24) + (i8 << 16) + (i9 << 8) + i10;
            }
            StringBuilder sbZ = jo.z("Invalid byte order: ");
            sbZ.append(this.f);
            throw new IOException(sbZ.toString());
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i2 = this.h + 2;
            this.h = i2;
            if (i2 > this.g) {
                throw new EOFException();
            }
            int i3 = this.e.read();
            int i4 = this.e.read();
            if ((i3 | i4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f;
            if (byteOrder == i) {
                return (short) ((i4 << 8) + i3);
            }
            if (byteOrder == j) {
                return (short) ((i3 << 8) + i4);
            }
            StringBuilder sbZ = jo.z("Invalid byte order: ");
            sbZ.append(this.f);
            throw new IOException(sbZ.toString());
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.h += 2;
            return this.e.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.h++;
            return this.e.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i2 = this.h + 2;
            this.h = i2;
            if (i2 > this.g) {
                throw new EOFException();
            }
            int i3 = this.e.read();
            int i4 = this.e.read();
            if ((i3 | i4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f;
            if (byteOrder == i) {
                return (i4 << 8) + i3;
            }
            if (byteOrder == j) {
                return (i3 << 8) + i4;
            }
            StringBuilder sbZ = jo.z("Invalid byte order: ");
            sbZ.append(this.f);
            throw new IOException(sbZ.toString());
        }

        @Override // java.io.DataInput
        public int skipBytes(int i2) throws IOException {
            int iMin = Math.min(i2, this.g - this.h);
            int iSkipBytes = 0;
            while (iSkipBytes < iMin) {
                iSkipBytes += this.e.skipBytes(iMin - iSkipBytes);
            }
            this.h += iSkipBytes;
            return iSkipBytes;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = this.e.read(bArr, i2, i3);
            this.h += i4;
            return i4;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.h + bArr.length;
            this.h = length;
            if (length <= this.g) {
                if (this.e.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public a(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    public static class c {
        public final int a;
        public final String b;
        public final int c;
        public final int d;

        public c(String str, int i, int i2) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = -1;
        }

        public c(String str, int i, int i2, int i3) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = i3;
        }
    }
}
