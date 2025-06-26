package defpackage;

import android.graphics.Bitmap;
import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public class y78 extends z78 {
    public y78(r78 r78Var) {
        super(r78Var);
    }

    @Override // defpackage.z78
    public void a() {
        long jRenderFrame;
        int currentFrameIndex;
        int currentLoop;
        int loopCount;
        r78 r78Var = this.e;
        GifInfoHandle gifInfoHandle = r78Var.k;
        Bitmap bitmap = r78Var.j;
        synchronized (gifInfoHandle) {
            jRenderFrame = GifInfoHandle.renderFrame(gifInfoHandle.a, bitmap);
        }
        if (jRenderFrame >= 0) {
            this.e.g = SystemClock.uptimeMillis() + jRenderFrame;
            if (this.e.isVisible() && this.e.f) {
                r78 r78Var2 = this.e;
                if (!r78Var2.p) {
                    r78Var2.e.remove(this);
                    r78 r78Var3 = this.e;
                    r78Var3.t = r78Var3.e.schedule(this, jRenderFrame, TimeUnit.MILLISECONDS);
                }
            }
            if (!this.e.l.isEmpty()) {
                GifInfoHandle gifInfoHandle2 = this.e.k;
                synchronized (gifInfoHandle2) {
                    currentFrameIndex = GifInfoHandle.getCurrentFrameIndex(gifInfoHandle2.a);
                }
                if (currentFrameIndex == this.e.k.b() - 1) {
                    r78 r78Var4 = this.e;
                    w78 w78Var = r78Var4.q;
                    GifInfoHandle gifInfoHandle3 = r78Var4.k;
                    synchronized (gifInfoHandle3) {
                        currentLoop = GifInfoHandle.getCurrentLoop(gifInfoHandle3.a);
                    }
                    if (currentLoop != 0) {
                        GifInfoHandle gifInfoHandle4 = r78Var4.k;
                        synchronized (gifInfoHandle4) {
                            loopCount = GifInfoHandle.getLoopCount(gifInfoHandle4.a);
                        }
                        if (currentLoop >= loopCount) {
                            currentLoop--;
                        }
                    }
                    w78Var.sendEmptyMessageAtTime(currentLoop, this.e.g);
                }
            }
        } else {
            r78 r78Var5 = this.e;
            r78Var5.g = Long.MIN_VALUE;
            r78Var5.f = false;
        }
        if (!this.e.isVisible() || this.e.q.hasMessages(-1)) {
            return;
        }
        this.e.q.sendEmptyMessageAtTime(-1, 0L);
    }
}
