.class public final Lcz2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lww2;",
        "Lr13;",
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
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lr13;

    .line 2
    invoke-virtual {p1}, Lr13;->D()Ls13;

    move-result-object v0

    invoke-virtual {v0}, Ls13;->D()Lo13;

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
    invoke-virtual {p1}, Lr13;->B()Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->d()[B

    move-result-object p1

    .line 6
    invoke-static {v2}, Lc50;->T1(Lv33;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 9
    sget-object v2, Lb43;->i:Lb43;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 10
    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 11
    new-instance v7, Lmz2;

    .line 12
    invoke-virtual {v0}, Lo13;->y()Lk13;

    move-result-object p1

    invoke-virtual {p1}, Lk13;->x()Li23;

    move-result-object p1

    invoke-direct {v7, p1}, Lmz2;-><init>(Li23;)V

    .line 13
    new-instance p1, Lt33;

    .line 14
    invoke-virtual {v1}, Lv13;->z()Lk53;

    move-result-object v2

    invoke-virtual {v2}, Lk53;->d()[B

    move-result-object v4

    .line 15
    invoke-virtual {v1}, Lv13;->y()Lx13;

    move-result-object v1

    invoke-static {v1}, Lc50;->J1(Lx13;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v0}, Lo13;->z()Lj13;

    move-result-object v0

    invoke-static {v0}, Lc50;->v1(Lj13;)Lz33;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lt33;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lz33;Lq33;)V

    return-object p1
.end method
