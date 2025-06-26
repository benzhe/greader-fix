.class public final Lhy2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Ls03;",
        "Lr03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lfy2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbx2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Le83;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ls03;

    .line 2
    invoke-virtual {p1}, Ls03;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->b(I)V

    .line 3
    invoke-virtual {p1}, Ls03;->y()Lv03;

    move-result-object v0

    invoke-virtual {v0}, Lv03;->x()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ls03;->y()Lv03;

    move-result-object p1

    invoke-virtual {p1}, Lv03;->x()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Le83;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ls03;

    .line 2
    invoke-static {}, Lr03;->E()Lr03$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ls03;->x()I

    move-result v1

    invoke-static {v1}, Lo43;->a(I)[B

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lk53;->M([BII)Lk53;

    move-result-object v1

    .line 5
    iget-boolean v2, v0, Ls63$b;->g:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 7
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 8
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Lr03;

    invoke-static {v2, v1}, Lr03;->A(Lr03;Lk53;)V

    .line 9
    invoke-virtual {p1}, Ls03;->y()Lv03;

    move-result-object p1

    .line 10
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 12
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 13
    :cond_1
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lr03;

    invoke-static {v1, p1}, Lr03;->z(Lr03;Lv03;)V

    .line 14
    iget-boolean p1, v0, Ls63$b;->g:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 16
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 17
    :cond_2
    iget-object p1, v0, Ls63$b;->f:Ls63;

    check-cast p1, Lr03;

    invoke-static {p1}, Lr03;->y(Lr03;)V

    .line 18
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lr03;

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

    invoke-static {p1, v0}, Ls03;->A(Lk53;Le63;)Ls03;

    move-result-object p1

    return-object p1
.end method
