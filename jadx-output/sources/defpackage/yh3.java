package defpackage;

import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class yh3 {
    public static final SparseIntArray d;
    public static final SparseIntArray e;
    public static final Map<String, Integer> f;
    public static final vh3 a = new vh3("OMX.google.raw.decoder", null, null, false, false);
    public static final Pattern b = Pattern.compile("^\\D?(\\d+)$");
    public static final HashMap<a, List<vh3>> c = new HashMap<>();
    public static int g = -1;

    public static final class a {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == a.class) {
                a aVar = (a) obj;
                if (TextUtils.equals(this.a, aVar.a) && this.b == aVar.b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.a;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.b ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        d = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        e = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, RecyclerView.a0.FLAG_TMP_DETACHED);
        sparseIntArray2.put(31, 512);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, RecyclerView.a0.FLAG_MOVED);
        sparseIntArray2.put(41, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
        sparseIntArray2.put(42, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
        sparseIntArray2.put(50, Http2.INITIAL_MAX_FRAME_SIZE);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap map = new HashMap();
        f = map;
        map.put("L30", 1);
        map.put("L60", 4);
        map.put("L63", 16);
        map.put("L90", 64);
        map.put("L93", Integer.valueOf(RecyclerView.a0.FLAG_TMP_DETACHED));
        map.put("L120", 1024);
        map.put("L123", Integer.valueOf(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT));
        map.put("L150", Integer.valueOf(Http2.INITIAL_MAX_FRAME_SIZE));
        map.put("L153", 65536);
        map.put("L156", 262144);
        map.put("L180", 1048576);
        map.put("L183", 4194304);
        map.put("L186", Integer.valueOf(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE));
        map.put("H30", 2);
        map.put("H60", 8);
        map.put("H63", 32);
        map.put("H90", 128);
        map.put("H93", 512);
        map.put("H120", Integer.valueOf(RecyclerView.a0.FLAG_MOVED));
        map.put("H123", Integer.valueOf(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST));
        map.put("H150", 32768);
        map.put("H153", 131072);
        map.put("H156", 524288);
        map.put("H180", 2097152);
        map.put("H183", 8388608);
        map.put("H186", 33554432);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x024b A[Catch: Exception -> 0x02c7, TRY_ENTER, TryCatch #2 {Exception -> 0x02c7, blocks: (B:3:0x0004, B:5:0x0016, B:9:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x0040, B:18:0x0048, B:20:0x0050, B:22:0x0058, B:24:0x0060, B:29:0x006e, B:33:0x007a, B:35:0x0082, B:40:0x0092, B:42:0x009a, B:44:0x00a4, B:46:0x00ac, B:48:0x00b4, B:50:0x00bc, B:52:0x00c4, B:54:0x00cc, B:56:0x00d4, B:58:0x00dc, B:60:0x00e4, B:62:0x00ec, B:64:0x00f4, B:68:0x0100, B:70:0x0108, B:72:0x0112, B:74:0x011a, B:76:0x0122, B:81:0x0131, B:83:0x0139, B:85:0x0143, B:87:0x014d, B:89:0x0155, B:91:0x015b, B:93:0x0163, B:97:0x016e, B:99:0x0176, B:105:0x0184, B:107:0x018c, B:150:0x0243, B:153:0x024b, B:155:0x0251, B:156:0x0275, B:157:0x02a7), top: B:170:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0275 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<defpackage.vh3> a(yh3.a r22, defpackage.ci3 r23) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yh3.a(yh3$a, ci3):java.util.List");
    }

    public static vh3 b(String str, boolean z) throws di3 {
        List<vh3> listUnmodifiableList;
        synchronized (yh3.class) {
            a aVar = new a(str, z);
            HashMap<a, List<vh3>> map = c;
            listUnmodifiableList = map.get(aVar);
            if (listUnmodifiableList == null) {
                int i = el3.a;
                List<vh3> listA = a(aVar, i >= 21 ? new ei3(z) : new fi3(null));
                if (z && ((ArrayList) listA).isEmpty() && 21 <= i && i <= 23) {
                    listA = a(aVar, new fi3(null));
                    ArrayList arrayList = (ArrayList) listA;
                    if (!arrayList.isEmpty()) {
                        String str2 = ((vh3) arrayList.get(0)).a;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                        sb.append("MediaCodecList API didn't list secure decoder for: ");
                        sb.append(str);
                        sb.append(". Assuming: ");
                        sb.append(str2);
                        Log.w("MediaCodecUtil", sb.toString());
                    }
                }
                listUnmodifiableList = Collections.unmodifiableList(listA);
                map.put(aVar, listUnmodifiableList);
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            return null;
        }
        return listUnmodifiableList.get(0);
    }

    public static int c() throws di3 {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        if (g == -1) {
            int iMax = 0;
            vh3 vh3VarB = b("video/avc", false);
            if (vh3VarB != null) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = vh3VarB.f;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                int length = codecProfileLevelArr.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i = codecProfileLevelArr[iMax].level;
                    int i2 = 9437184;
                    if (i != 1 && i != 2) {
                        switch (i) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                break;
                            case 64:
                                i2 = 202752;
                                break;
                            case 128:
                            case RecyclerView.a0.FLAG_TMP_DETACHED /* 256 */:
                                i2 = 414720;
                                break;
                            case 512:
                                i2 = 921600;
                                break;
                            case 1024:
                                i2 = 1310720;
                                break;
                            case RecyclerView.a0.FLAG_MOVED /* 2048 */:
                            case RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT /* 4096 */:
                                i2 = 2097152;
                                break;
                            case RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST /* 8192 */:
                                i2 = 2228224;
                                break;
                            case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
                                i2 = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                break;
                            default:
                                i2 = -1;
                                break;
                        }
                    } else {
                        i2 = 25344;
                    }
                    iMax2 = Math.max(i2, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, el3.a >= 21 ? 345600 : 172800);
            }
            g = iMax;
        }
        return g;
    }
}
