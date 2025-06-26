package defpackage;

import android.content.Context;
import android.media.AudioManager;
import android.widget.Toast;
import com.noinnion.android.greader.ui.media.MusicService;

/* loaded from: classes2.dex */
public class tr6 implements AudioManager.OnAudioFocusChangeListener {
    public AudioManager a;
    public xr6 b;

    public tr6(Context context, xr6 xr6Var) {
        this.a = (AudioManager) context.getSystemService("audio");
        this.b = xr6Var;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) throws IllegalStateException {
        xr6 xr6Var = this.b;
        if (xr6Var == null) {
            return;
        }
        if (i == -3) {
            ((MusicService) xr6Var).d(true);
            return;
        }
        if (i == -2 || i == -1) {
            ((MusicService) xr6Var).d(false);
            return;
        }
        if (i != 1) {
            return;
        }
        MusicService musicService = (MusicService) xr6Var;
        Toast.makeText(musicService.getApplicationContext(), "gained audio focus.", 0).show();
        musicService.j = MusicService.c.Focused;
        if (musicService.g == MusicService.d.Playing) {
            musicService.a();
        }
    }
}
