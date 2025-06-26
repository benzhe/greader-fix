.class public final Lay2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Lj03;",
        "Lg03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lyx2;Ljava/lang/Class;)V
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
    check-cast p1, Lj03;

    .line 2
    new-instance v0, Lzx2;

    invoke-direct {v0}, Lzx2;-><init>()V

    invoke-virtual {v0}, Lzx2;->e()Lbx2;

    move-result-object v0

    invoke-virtual {p1}, Lj03;->x()Ln03;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbx2;->a(Le83;)V

    .line 3
    new-instance v0, Lqz2;

    invoke-direct {v0}, Lqz2;-><init>()V

    invoke-virtual {v0}, Lqz2;->e()Lbx2;

    move-result-object v0

    invoke-virtual {p1}, Lj03;->y()Lb23;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbx2;->a(Le83;)V

    .line 4
    invoke-virtual {p1}, Lj03;->x()Ln03;

    move-result-object p1

    invoke-virtual {p1}, Ln03;->x()I

    move-result p1

    invoke-static {p1}, Lp43;->b(I)V

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
    check-cast p1, Lj03;

    .line 2
    new-instance v0, Lzx2;

    invoke-direct {v0}, Lzx2;-><init>()V

    .line 3
    invoke-virtual {v0}, Lzx2;->e()Lbx2;

    move-result-object v0

    invoke-virtual {p1}, Lj03;->x()Ln03;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbx2;->b(Le83;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk03;

    .line 4
    new-instance v1, Lqz2;

    invoke-direct {v1}, Lqz2;-><init>()V

    invoke-virtual {v1}, Lqz2;->e()Lbx2;

    move-result-object v1

    invoke-virtual {p1}, Lj03;->y()Lb23;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbx2;->b(Le83;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly13;

    .line 5
    invoke-static {}, Lg03;->E()Lg03$a;

    move-result-object v1

    .line 6
    iget-boolean v2, v1, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 8
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 9
    :cond_0
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lg03;

    invoke-static {v2, v0}, Lg03;->z(Lg03;Lk03;)V

    .line 10
    iget-boolean v0, v1, Ls63$b;->g:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 12
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 13
    :cond_1
    iget-object v0, v1, Ls63$b;->f:Ls63;

    check-cast v0, Lg03;

    invoke-static {v0, p1}, Lg03;->A(Lg03;Ly13;)V

    .line 14
    iget-boolean p1, v1, Ls63$b;->g:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 16
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 17
    :cond_2
    iget-object p1, v1, Ls63$b;->f:Ls63;

    check-cast p1, Lg03;

    invoke-static {p1, v3}, Lg03;->y(Lg03;I)V

    .line 18
    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lg03;

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
    invoke-static {p1, v0}, Lj03;->A(Lk53;Le63;)Lj03;

    move-result-object p1

    return-object p1
.end method
