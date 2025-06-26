package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class wg3 {
    public final /* synthetic */ ug3 a;

    public wg3(ug3 ug3Var, tg3 tg3Var) {
        this.a = ug3Var;
    }

    public final void a(int i, double d) throws ne3 {
        ug3 ug3Var = this.a;
        Objects.requireNonNull(ug3Var);
        if (i == 181) {
            ug3Var.t.I = (int) d;
        }
        if (i == 17545) {
            ug3Var.r = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                ug3Var.t.w = (float) d;
                break;
            case 21970:
                ug3Var.t.x = (float) d;
                break;
            case 21971:
                ug3Var.t.y = (float) d;
                break;
            case 21972:
                ug3Var.t.z = (float) d;
                break;
            case 21973:
                ug3Var.t.A = (float) d;
                break;
            case 21974:
                ug3Var.t.B = (float) d;
                break;
            case 21975:
                ug3Var.t.C = (float) d;
                break;
            case 21976:
                ug3Var.t.D = (float) d;
                break;
            case 21977:
                ug3Var.t.E = (float) d;
                break;
            case 21978:
                ug3Var.t.F = (float) d;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01f3, code lost:
    
        throw new defpackage.ne3("EBML lacing sample size out of range.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(int r18, int r19, defpackage.gg3 r20) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wg3.b(int, int, gg3):void");
    }

    public final void c(int i, long j) throws ne3 {
        ug3 ug3Var = this.a;
        Objects.requireNonNull(ug3Var);
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw new ne3(sb.toString());
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw new ne3(sb2.toString());
        }
        switch (i) {
            case 131:
                ug3Var.t.c = (int) j;
                return;
            case 136:
                ug3Var.t.L = j == 1;
                return;
            case 155:
                ug3Var.G = ug3Var.j(j);
                return;
            case 159:
                ug3Var.t.G = (int) j;
                return;
            case 176:
                ug3Var.t.j = (int) j;
                return;
            case 179:
                ug3Var.B.a(ug3Var.j(j));
                return;
            case 186:
                ug3Var.t.k = (int) j;
                return;
            case 215:
                ug3Var.t.b = (int) j;
                return;
            case 231:
                ug3Var.A = ug3Var.j(j);
                return;
            case 241:
                if (ug3Var.D) {
                    return;
                }
                ug3Var.C.a(j);
                ug3Var.D = true;
                return;
            case 251:
                ug3Var.X = true;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j);
                sb3.append(" not supported");
                throw new ne3(sb3.toString());
            case 17029:
                if (j < 1 || j > 2) {
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw new ne3(sb4.toString());
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j);
                sb5.append(" not supported");
                throw new ne3(sb5.toString());
            case 18401:
                if (j == 5) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new ne3(sb6.toString());
            case 18408:
                if (j == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j);
                sb7.append(" not supported");
                throw new ne3(sb7.toString());
            case 21420:
                ug3Var.w = j + ug3Var.p;
                return;
            case 21432:
                int i2 = (int) j;
                if (i2 == 0) {
                    ug3Var.t.p = 0;
                    return;
                }
                if (i2 == 1) {
                    ug3Var.t.p = 2;
                    return;
                } else if (i2 == 3) {
                    ug3Var.t.p = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    ug3Var.t.p = 3;
                    return;
                }
            case 21680:
                ug3Var.t.l = (int) j;
                return;
            case 21682:
                ug3Var.t.n = (int) j;
                return;
            case 21690:
                ug3Var.t.m = (int) j;
                return;
            case 21930:
                ug3Var.t.M = j == 1;
                return;
            case 22186:
                ug3Var.t.J = j;
                return;
            case 22203:
                ug3Var.t.K = j;
                return;
            case 25188:
                ug3Var.t.H = (int) j;
                return;
            case 2352003:
                ug3Var.t.d = (int) j;
                return;
            case 2807729:
                ug3Var.q = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i3 = (int) j;
                        if (i3 == 1) {
                            ug3Var.t.t = 2;
                            return;
                        } else {
                            if (i3 != 2) {
                                return;
                            }
                            ug3Var.t.t = 1;
                            return;
                        }
                    case 21946:
                        int i4 = (int) j;
                        if (i4 != 1) {
                            if (i4 == 16) {
                                ug3Var.t.s = 6;
                                return;
                            } else if (i4 == 18) {
                                ug3Var.t.s = 7;
                                return;
                            } else if (i4 != 6 && i4 != 7) {
                                return;
                            }
                        }
                        ug3Var.t.s = 3;
                        return;
                    case 21947:
                        vg3 vg3Var = ug3Var.t;
                        vg3Var.q = true;
                        int i5 = (int) j;
                        if (i5 == 1) {
                            vg3Var.r = 1;
                            return;
                        }
                        if (i5 == 9) {
                            vg3Var.r = 6;
                            return;
                        } else {
                            if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                vg3Var.r = 2;
                                return;
                            }
                            return;
                        }
                    case 21948:
                        ug3Var.t.u = (int) j;
                        return;
                    case 21949:
                        ug3Var.t.v = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public final void d(int i, long j, long j2) throws ne3 {
        ug3 ug3Var = this.a;
        Objects.requireNonNull(ug3Var);
        if (i == 160) {
            ug3Var.X = false;
            return;
        }
        if (i == 174) {
            ug3Var.t = new vg3(null);
            return;
        }
        if (i == 187) {
            ug3Var.D = false;
            return;
        }
        if (i == 19899) {
            ug3Var.v = -1;
            ug3Var.w = -1L;
            return;
        }
        if (i == 20533) {
            ug3Var.t.e = true;
            return;
        }
        if (i == 21968) {
            ug3Var.t.q = true;
            return;
        }
        if (i == 408125543) {
            long j3 = ug3Var.p;
            if (j3 != -1 && j3 != j) {
                throw new ne3("Multiple Segment elements not supported");
            }
            ug3Var.p = j;
            ug3Var.o = j2;
            return;
        }
        if (i == 475249515) {
            ug3Var.B = new vk3();
            ug3Var.C = new vk3();
            return;
        }
        if (i == 524531317 && !ug3Var.u) {
            if (ug3Var.d && ug3Var.y != -1) {
                ug3Var.x = true;
                return;
            }
            mi3 mi3Var = (mi3) ug3Var.Y;
            mi3Var.u = new og3(ug3Var.s);
            mi3Var.r.post(mi3Var.p);
            ug3Var.u = true;
        }
    }
}
