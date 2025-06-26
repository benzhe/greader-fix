.class public final Lgz2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Ln13;",
        "Lr13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ldz2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbx2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Le83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ln13;

    .line 2
    invoke-virtual {p1}, Ln13;->x()Lo13;

    move-result-object p1

    invoke-static {p1}, Lc50;->f2(Lo13;)V

    return-void
.end method

.method public final b(Le83;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ln13;

    .line 2
    invoke-virtual {p1}, Ln13;->x()Lo13;

    move-result-object v0

    invoke-virtual {v0}, Lo13;->x()Lv13;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lv13;->x()Lw13;

    move-result-object v0

    invoke-static {v0}, Lc50;->u1(Lw13;)Lv33;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lc50;->T1(Lv33;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 5
    sget-object v1, Lb43;->h:Lb43;

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 6
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 9
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 10
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 11
    invoke-static {}, Ls13;->G()Ls13$a;

    move-result-object v2

    .line 12
    iget-boolean v3, v2, Ls63$b;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 14
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 15
    :cond_0
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Ls13;

    invoke-static {v3}, Ls13;->y(Ls13;)V

    .line 16
    invoke-virtual {p1}, Ln13;->x()Lo13;

    move-result-object p1

    .line 17
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 19
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 20
    :cond_1
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Ls13;

    invoke-static {v3, p1}, Ls13;->z(Ls13;Lo13;)V

    .line 21
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lk53;->O([B)Lk53;

    move-result-object p1

    .line 22
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 24
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 25
    :cond_2
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Ls13;

    invoke-static {v3, p1}, Ls13;->A(Ls13;Lk53;)V

    .line 26
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lk53;->O([B)Lk53;

    move-result-object p1

    .line 27
    iget-boolean v1, v2, Ls63$b;->g:Z

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 29
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 30
    :cond_3
    iget-object v1, v2, Ls63$b;->f:Ls63;

    check-cast v1, Ls13;

    invoke-static {v1, p1}, Ls13;->B(Ls13;Lk53;)V

    .line 31
    invoke-virtual {v2}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Ls13;

    .line 32
    invoke-static {}, Lr13;->E()Lr13$a;

    move-result-object v1

    .line 33
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 35
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 36
    :cond_4
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lr13;

    invoke-static {v2}, Lr13;->y(Lr13;)V

    .line 37
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 39
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 40
    :cond_5
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lr13;

    invoke-static {v2, p1}, Lr13;->z(Lr13;Ls13;)V

    .line 41
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lk53;->O([B)Lk53;

    move-result-object p1

    .line 42
    iget-boolean v0, v1, Ls63$b;->g:Z

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 44
    iput-boolean v4, v1, Ls63$b;->g:Z

    .line 45
    :cond_6
    iget-object v0, v1, Ls63$b;->f:Ls63;

    check-cast v0, Lr13;

    invoke-static {v0, p1}, Lr13;->A(Lr13;Lk53;)V

    .line 46
    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lr13;

    return-object p1
.end method

.method public final synthetic c(Lk53;)Le83;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    invoke-static {}, Le63;->a()Le63;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Ln13;->z(Lk53;Le63;)Ln13;

    move-result-object p1

    return-object p1
.end method
