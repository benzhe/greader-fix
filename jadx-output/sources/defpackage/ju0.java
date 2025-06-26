package defpackage;

import android.content.Context;
import android.media.AudioManager;

/* loaded from: classes.dex */
public final class ju0 implements AudioManager.OnAudioFocusChangeListener {
    public final AudioManager a;
    public final lu0 b;
    public boolean c;
    public boolean d;
    public boolean e;
    public float f = 1.0f;

    public ju0(Context context, lu0 lu0Var) {
        this.a = (AudioManager) context.getSystemService("audio");
        this.b = lu0Var;
    }

    public final void a() {
        this.d = false;
        b();
    }

    public final void b() {
        boolean z;
        boolean z2;
        boolean z3 = this.d && !this.e && this.f > 0.0f;
        if (z3 && !(z2 = this.c)) {
            AudioManager audioManager = this.a;
            if (audioManager != null && !z2) {
                this.c = audioManager.requestAudioFocus(this, 3, 2) == 1;
            }
            this.b.a();
            return;
        }
        if (z3 || !(z = this.c)) {
            return;
        }
        AudioManager audioManager2 = this.a;
        if (audioManager2 != null && z) {
            this.c = audioManager2.abandonAudioFocus(this) == 0;
        }
        this.b.a();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.c = i > 0;
        this.b.a();
    }
}
