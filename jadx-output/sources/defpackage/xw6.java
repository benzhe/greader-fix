package defpackage;

import android.view.View;
import com.noinnion.android.reader.ui.dialog.YoutubePlayerActivity;

/* loaded from: classes2.dex */
public final class xw6 implements View.OnClickListener {
    public final /* synthetic */ YoutubePlayerActivity e;

    public xw6(YoutubePlayerActivity youtubePlayerActivity) {
        this.e = youtubePlayerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.e.finish();
    }
}
