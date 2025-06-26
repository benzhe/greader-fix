.class public final Lrz2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Lb03;",
        "La03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbx2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Le83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb03;

    .line 2
    invoke-virtual {p1}, Lb03;->y()Lf03;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lpz2;->h(Lf03;)V

    .line 4
    invoke-virtual {p1}, Lb03;->x()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Le83;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb03;

    .line 2
    invoke-static {}, La03;->E()La03$a;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Ls63$b;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 5
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, La03;

    invoke-static {v1}, La03;->y(La03;)V

    .line 7
    invoke-virtual {p1}, Lb03;->x()I

    move-result v1

    invoke-static {v1}, Lo43;->a(I)[B

    move-result-object v1

    .line 8
    array-length v3, v1

    invoke-static {v1, v2, v3}, Lk53;->M([BII)Lk53;

    move-result-object v1

    .line 9
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 11
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 12
    :cond_1
    iget-object v3, v0, Ls63$b;->f:Ls63;

    check-cast v3, La03;

    invoke-static {v3, v1}, La03;->A(La03;Lk53;)V

    .line 13
    invoke-virtual {p1}, Lb03;->y()Lf03;

    move-result-object p1

    .line 14
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 16
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 17
    :cond_2
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, La03;

    invoke-static {v1, p1}, La03;->z(La03;Lf03;)V

    .line 18
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, La03;

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

    invoke-static {p1, v0}, Lb03;->A(Lk53;Le63;)Lb03;

    move-result-object p1

    return-object p1
.end method
