.class public final Lmy2;
.super Lzw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw2<",
        "Le13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Le13;

    const/4 v1, 0x1

    new-array v1, v1, [Lax2;

    new-instance v2, Lpy2;

    const-class v3, Lsw2;

    invoke-direct {v2, v3}, Lpy2;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lzw2;-><init>(Ljava/lang/Class;[Lax2;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    return-object v0
.end method

.method public final c()Lg23$a;
    .locals 1

    .line 1
    sget-object v0, Lg23$a;->g:Lg23$a;

    return-object v0
.end method

.method public final e()Lbx2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbx2<",
            "Li13;",
            "Le13;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Loy2;

    const-class v1, Li13;

    invoke-direct {v0, p0, v1}, Loy2;-><init>(Lmy2;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic f(Le83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Le13;

    .line 2
    invoke-virtual {p1}, Le13;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->a(I)V

    .line 3
    invoke-virtual {p1}, Le13;->A()Lk53;

    move-result-object p1

    invoke-virtual {p1}, Lk53;->size()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

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

    invoke-static {p1, v0}, Le13;->E(Lk53;Le63;)Le13;

    move-result-object p1

    return-object p1
.end method
