.class public final Lyx2;
.super Lzw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw2<",
        "Lg03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg03;

    const/4 v1, 0x1

    new-array v1, v1, [Lax2;

    new-instance v2, Lxx2;

    const-class v3, Lsw2;

    invoke-direct {v2, v3}, Lxx2;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lzw2;-><init>(Ljava/lang/Class;[Lax2;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
            "Lj03;",
            "Lg03;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lay2;

    const-class v1, Lj03;

    invoke-direct {v0, p0, v1}, Lay2;-><init>(Lyx2;Ljava/lang/Class;)V

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
    check-cast p1, Lg03;

    .line 2
    invoke-virtual {p1}, Lg03;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->a(I)V

    .line 3
    new-instance v0, Lzx2;

    invoke-direct {v0}, Lzx2;-><init>()V

    invoke-virtual {p1}, Lg03;->B()Lk03;

    move-result-object v0

    invoke-static {v0}, Lzx2;->h(Lk03;)V

    .line 4
    new-instance v0, Lqz2;

    invoke-direct {v0}, Lqz2;-><init>()V

    invoke-virtual {p1}, Lg03;->D()Ly13;

    move-result-object p1

    invoke-static {p1}, Lqz2;->h(Ly13;)V

    return-void
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

    invoke-static {p1, v0}, Lg03;->G(Lk53;Le63;)Lg03;

    move-result-object p1

    return-object p1
.end method
