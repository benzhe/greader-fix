package defpackage;

import android.os.RemoteException;
import android.widget.SeekBar;
import com.noinnion.android.greader.ui.media.MusicActivity;

/* loaded from: classes2.dex */
public class wr6 implements SeekBar.OnSeekBarChangeListener {
    public final /* synthetic */ MusicActivity e;

    public wr6(MusicActivity musicActivity) {
        this.e = musicActivity;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        ur6 ur6Var;
        if (!z || (ur6Var = this.e.F) == null) {
            return;
        }
        try {
            ur6Var.C0(seekBar.getProgress());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
