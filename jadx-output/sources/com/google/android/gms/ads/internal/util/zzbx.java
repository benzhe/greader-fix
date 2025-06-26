package com.google.android.gms.ads.internal.util;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbx {
    public static List<MediaCodecInfo> b;
    public static Map<String, List<Map<String, Object>>> a = new HashMap();
    public static final Object c = new Object();

    public static Integer[] a(Range<Integer> range) {
        return new Integer[]{(Integer) range.getLower(), (Integer) range.getUpper()};
    }

    public static List<Map<String, Object>> zzer(String str) {
        ArrayList arrayList;
        Object obj = c;
        synchronized (obj) {
            if (a.containsKey(str)) {
                return a.get(str);
            }
            try {
                synchronized (obj) {
                    if (b == null) {
                        b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                    }
                    arrayList = new ArrayList();
                    for (MediaCodecInfo mediaCodecInfo : b) {
                        if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                            HashMap map = new HashMap();
                            map.put("codecName", mediaCodecInfo.getName());
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            ArrayList arrayList2 = new ArrayList();
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                            }
                            map.put("profileLevels", arrayList2);
                            int i = Build.VERSION.SDK_INT;
                            MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                            map.put("bitRatesBps", a(videoCapabilities.getBitrateRange()));
                            map.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                            map.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                            map.put("frameRates", a(videoCapabilities.getSupportedFrameRates()));
                            map.put("widths", a(videoCapabilities.getSupportedWidths()));
                            map.put("heights", a(videoCapabilities.getSupportedHeights()));
                            if (i >= 23) {
                                map.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                            }
                            arrayList.add(map);
                        }
                    }
                    a.put(str, arrayList);
                }
                return arrayList;
            } catch (LinkageError | RuntimeException e) {
                HashMap map2 = new HashMap();
                map2.put("error", e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(map2);
                a.put(str, arrayList3);
                return arrayList3;
            }
        }
    }
}
