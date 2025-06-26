package defpackage;

import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.os.Build;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcb;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class kt0 implements Runnable {
    public final /* synthetic */ MediaPlayer e;
    public final /* synthetic */ zzbbq f;

    public kt0(zzbbq zzbbqVar, MediaPlayer mediaPlayer) {
        this.f = zzbbqVar;
        this.e = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        zzbbq zzbbqVar = this.f;
        MediaPlayer mediaPlayer = this.e;
        Map<Integer, String> map = zzbbq.v;
        Objects.requireNonNull(zzbbqVar);
        if (((Boolean) os3.j.f.a(y40.l1)).booleanValue() && zzbbqVar.g != null && mediaPlayer != null && (trackInfo = mediaPlayer.getTrackInfo()) != null) {
            HashMap map2 = new HashMap();
            for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                if (trackInfo2 != null) {
                    int trackType = trackInfo2.getTrackType();
                    if (trackType == 1) {
                        MediaFormat format2 = trackInfo2.getFormat();
                        if (format2 != null) {
                            if (format2.containsKey("frame-rate")) {
                                try {
                                    map2.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                                } catch (ClassCastException unused) {
                                    map2.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                                }
                            }
                            if (format2.containsKey("bitrate")) {
                                Integer numValueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                zzbbqVar.u = numValueOf;
                                map2.put("bitRate", String.valueOf(numValueOf));
                            }
                            if (format2.containsKey("width") && format2.containsKey("height")) {
                                int integer = format2.getInteger("width");
                                int integer2 = format2.getInteger("height");
                                StringBuilder sb = new StringBuilder(23);
                                sb.append(integer);
                                sb.append("x");
                                sb.append(integer2);
                                map2.put("resolution", sb.toString());
                            }
                            if (format2.containsKey("mime")) {
                                map2.put("videoMime", format2.getString("mime"));
                            }
                            if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                map2.put("videoCodec", format2.getString("codecs-string"));
                            }
                        }
                    } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                        if (format.containsKey("mime")) {
                            map2.put("audioMime", format.getString("mime"));
                        }
                        if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                            map2.put("audioCodec", format.getString("codecs-string"));
                        }
                    }
                }
            }
            if (!map2.isEmpty()) {
                zzbbqVar.g.x("onMetadataEvent", map2);
            }
        }
        rt0 rt0Var = this.f.t;
        if (rt0Var != null) {
            ((zzbcb) rt0Var).i();
        }
    }
}
