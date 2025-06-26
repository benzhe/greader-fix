package defpackage;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.noinnion.android.reader.ui.dialog.YoutubePlayerActivity;

/* loaded from: classes2.dex */
public final class lx6 {
    public static final lx6 a = new lx6();

    public static final void a(Activity activity, String str, boolean z) {
        im7.e(str, "videoId");
        if (activity == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            im7.e(activity, "activity");
            im7.e(str, "videoId");
            Bundle bundleB = h7.a(activity, R.anim.fade_in, R.anim.fade_out).b();
            Intent intent = new Intent(activity, (Class<?>) YoutubePlayerActivity.class);
            intent.putExtra("youtubeVideoId", str);
            activity.startActivity(intent, bundleB);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=" + str)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
