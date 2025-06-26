package defpackage;

import android.os.CountDownTimer;

/* loaded from: classes.dex */
public class i06 {
    public CountDownTimer a;

    public class a extends CountDownTimer {
        public final /* synthetic */ b a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(i06 i06Var, long j, long j2, b bVar) {
            super(j, j2);
            this.a = bVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.a.a();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public interface b {
        void a();
    }

    public void a(b bVar, long j, long j2) {
        this.a = new a(this, j, j2, bVar).start();
    }
}
