.class public final Lsz2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Lb23;",
        "Ly13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lqz2;Ljava/lang/Class;)V
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
    check-cast p1, Lb23;

    .line 2
    invoke-virtual {p1}, Lb23;->x()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb23;->y()Lc23;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lqz2;->i(Lc23;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

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
    check-cast p1, Lb23;

    .line 2
    invoke-static {}, Ly13;->E()Ly13$a;

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

    check-cast v1, Ly13;

    invoke-static {v1}, Ly13;->y(Ly13;)V

    .line 7
    invoke-virtual {p1}, Lb23;->y()Lc23;

    move-result-object v1

    .line 8
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 10
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 11
    :cond_1
    iget-object v3, v0, Ls63$b;->f:Ls63;

    check-cast v3, Ly13;

    invoke-static {v3, v1}, Ly13;->z(Ly13;Lc23;)V

    .line 12
    invoke-virtual {p1}, Lb23;->x()I

    move-result p1

    invoke-static {p1}, Lo43;->a(I)[B

    move-result-object p1

    .line 13
    array-length v1, p1

    invoke-static {p1, v2, v1}, Lk53;->M([BII)Lk53;

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

    check-cast v1, Ly13;

    invoke-static {v1, p1}, Ly13;->A(Ly13;Lk53;)V

    .line 18
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Ly13;

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

    invoke-static {p1, v0}, Lb23;->B(Lk53;Le63;)Lb23;

    move-result-object p1

    return-object p1
.end method
