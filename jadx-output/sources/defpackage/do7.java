package defpackage;

/* loaded from: classes2.dex */
public final class do7 extends jm7 implements tl7<CharSequence, Integer, rj7<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ char[] e;
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public do7(char[] cArr, boolean z) {
        super(2);
        this.e = cArr;
        this.f = z;
    }

    @Override // defpackage.tl7
    public rj7<? extends Integer, ? extends Integer> b(CharSequence charSequence, Integer num) {
        CharSequence charSequence2 = charSequence;
        int iIntValue = num.intValue();
        im7.e(charSequence2, "$receiver");
        int iM = co7.m(charSequence2, this.e, iIntValue, this.f);
        if (iM < 0) {
            return null;
        }
        return new rj7<>(Integer.valueOf(iM), 1);
    }
}
