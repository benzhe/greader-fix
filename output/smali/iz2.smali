.class public final Liz2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lvw2;",
        "Ls13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lax2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ls13;

    .line 2
    invoke-virtual {p1}, Ls13;->D()Lo13;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lo13;->x()Lv13;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lv13;->x()Lw13;

    move-result-object v2

    invoke-static {v2}, Lc50;->u1(Lw13;)Lv33;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ls13;->E()Lk53;

    move-result-object v3

    invoke-virtual {v3}, Lk53;->d()[B

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Ls13;->F()Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->d()[B

    move-result-object p1

    .line 7
    invoke-static {v2}, Lc50;->T1(Lv33;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 8
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 9
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 10
    new-instance p1, Ljava/security/spec/ECPoint;

    invoke-direct {p1, v4, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 11
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {p1, v3}, Lc50;->q2(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 12
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, p1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 13
    sget-object p1, Lb43;->i:Lb43;

    const-string v2, "EC"

    invoke-virtual {p1, v2}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/KeyFactory;

    .line 14
    invoke-virtual {p1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 15
    new-instance v7, Lmz2;

    .line 16
    invoke-virtual {v0}, Lo13;->y()Lk13;

    move-result-object p1

    invoke-virtual {p1}, Lk13;->x()Li23;

    move-result-object p1

    invoke-direct {v7, p1}, Lmz2;-><init>(Li23;)V

    .line 17
    new-instance p1, Ls33;

    .line 18
    invoke-virtual {v1}, Lv13;->z()Lk53;

    move-result-object v2

    invoke-virtual {v2}, Lk53;->d()[B

    move-result-object v4

    .line 19
    invoke-virtual {v1}, Lv13;->y()Lx13;

    move-result-object v1

    invoke-static {v1}, Lc50;->J1(Lx13;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v0}, Lo13;->z()Lj13;

    move-result-object v0

    invoke-static {v0}, Lc50;->v1(Lj13;)Lz33;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ls33;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lz33;Lq33;)V

    return-object p1
.end method
