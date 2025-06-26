package okhttp3;

import defpackage.el7;
import defpackage.jm7;
import java.security.cert.Certificate;
import java.util.List;

/* loaded from: classes2.dex */
public final class Handshake$Companion$get$1 extends jm7 implements el7<List<? extends Certificate>> {
    public final /* synthetic */ List $peerCertificatesCopy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Handshake$Companion$get$1(List list) {
        super(0);
        this.$peerCertificatesCopy = list;
    }

    @Override // defpackage.el7
    public final List<? extends Certificate> invoke() {
        return this.$peerCertificatesCopy;
    }
}
