package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

/* loaded from: classes.dex */
public final class vv0 implements kb0<iu0> {
    @Override // defpackage.kb0
    public final void a(iu0 iu0Var, Map map) throws NumberFormatException {
        iu0 iu0Var2 = iu0Var;
        rx0 rx0VarF = iu0Var2.f();
        if (rx0VarF == null) {
            try {
                rx0 rx0Var = new rx0(iu0Var2, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                iu0Var2.k(rx0Var);
                rx0VarF = rx0Var;
            } catch (NullPointerException | NumberFormatException e) {
                is0.zzc("Unable to parse videoMeta message.", e);
                or0 or0VarZzkz = zzr.zzkz();
                xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float f = Float.parseFloat((String) map.get("duration"));
        boolean zEquals = "1".equals(map.get("muted"));
        float f2 = Float.parseFloat((String) map.get("currentTime"));
        int i = Integer.parseInt((String) map.get("playbackState"));
        int i2 = (i < 0 || 3 < i) ? 0 : i;
        String str = (String) map.get("aspectRatio");
        float f3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (is0.isLoggable(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(f2);
            sb.append(" , duration : ");
            sb.append(f);
            sb.append(" , isMuted : ");
            sb.append(zEquals);
            sb.append(" , playbackState : ");
            sb.append(i2);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            is0.zzdz(sb.toString());
        }
        rx0VarF.X6(f2, f, i2, zEquals, f3);
    }
}
