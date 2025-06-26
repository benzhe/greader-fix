.class public final Lzx2;
.super Lzw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw2<",
        "Lk03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lk03;

    const/4 v1, 0x1

    new-array v1, v1, [Lax2;

    new-instance v2, Lcy2;

    const-class v3, Li43;

    invoke-direct {v2, v3}, Lcy2;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lzw2;-><init>(Ljava/lang/Class;[Lax2;)V

    return-void
.end method

.method public static h(Lk03;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk03;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->a(I)V

    .line 2
    invoke-virtual {p0}, Lk03;->B()Lk53;

    move-result-object v0

    invoke-virtual {v0}, Lk53;->size()I

    move-result v0

    invoke-static {v0}, Lp43;->b(I)V

    .line 3
    invoke-virtual {p0}, Lk03;->D()Lo03;

    move-result-object p0

    invoke-static {p0}, Lzx2;->i(Lo03;)V

    return-void
.end method

.method public static i(Lo03;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo03;->x()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo03;->x()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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
            "Ln03;",
            "Lk03;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lby2;

    const-class v1, Ln03;

    invoke-direct {v0, p0, v1}, Lby2;-><init>(Lzx2;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic f(Le83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lk03;

    invoke-static {p1}, Lzx2;->h(Lk03;)V

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

    invoke-static {p1, v0}, Lk03;->H(Lk53;Le63;)Lk03;

    move-result-object p1

    return-object p1
.end method
