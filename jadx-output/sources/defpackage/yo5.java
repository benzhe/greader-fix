package defpackage;

/* loaded from: classes.dex */
public abstract class yo5 {
    public static final e a = new e();

    public static class a extends yo5 {
        @Override // defpackage.yo5
        public String a() {
            return "FieldValue.arrayRemove";
        }
    }

    public static class b extends yo5 {
        @Override // defpackage.yo5
        public String a() {
            return "FieldValue.arrayUnion";
        }
    }

    public static class c extends yo5 {
    }

    public static class d extends yo5 {
        public final Number b;

        public d(Number number) {
            this.b = number;
        }

        @Override // defpackage.yo5
        public String a() {
            return "FieldValue.increment";
        }
    }

    public static class e extends yo5 {
        @Override // defpackage.yo5
        public String a() {
            return "FieldValue.serverTimestamp";
        }
    }

    public abstract String a();
}
