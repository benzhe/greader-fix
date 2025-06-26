.class public final Ldz2;
.super Lmx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmx2<",
        "Lr13;",
        "Ls13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lr13;

    const-class v1, Ls13;

    const/4 v2, 0x1

    new-array v2, v2, [Lax2;

    new-instance v3, Lcz2;

    const-class v4, Lww2;

    invoke-direct {v3, v4}, Lcz2;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lmx2;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lax2;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final c()Lg23$a;
    .locals 1

    .line 1
    sget-object v0, Lg23$a;->h:Lg23$a;

    return-object v0
.end method

.method public final e()Lbx2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbx2<",
            "Ln13;",
            "Lr13;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lgz2;

    const-class v1, Ln13;

    invoke-direct {v0, p0, v1}, Lgz2;-><init>(Ldz2;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final f(Le83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lr13;

    .line 2
    invoke-virtual {p1}, Lr13;->B()Lk53;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lk53;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lr13;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->a(I)V

    .line 5
    invoke-virtual {p1}, Lr13;->D()Ls13;

    move-result-object p1

    invoke-virtual {p1}, Ls13;->D()Lo13;

    move-result-object p1

    invoke-static {p1}, Lc50;->f2(Lo13;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic g(Lk53;)Le83;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    invoke-static {}, Le63;->a()Le63;

    move-result-object v0

    invoke-static {p1, v0}, Lr13;->G(Lk53;Le63;)Lr13;

    move-result-object p1

    return-object p1
.end method
