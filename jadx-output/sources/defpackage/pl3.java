package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* loaded from: classes.dex */
public final class pl3 implements Handler.Callback, Choreographer.FrameCallback {
    public static final pl3 j = new pl3();
    public volatile long e;
    public final Handler f;
    public final HandlerThread g;
    public Choreographer h;
    public int i;

    public pl3() {
        HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
        this.g = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f = handler;
        handler.sendEmptyMessage(0);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        this.e = j2;
        this.h.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.h = Choreographer.getInstance();
            return true;
        }
        if (i == 1) {
            int i2 = this.i + 1;
            this.i = i2;
            if (i2 == 1) {
                this.h.postFrameCallback(this);
            }
            return true;
        }
        if (i != 2) {
            return false;
        }
        int i3 = this.i - 1;
        this.i = i3;
        if (i3 == 0) {
            this.h.removeFrameCallback(this);
            this.e = 0L;
        }
        return true;
    }
}
