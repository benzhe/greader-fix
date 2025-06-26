.class public final Lby2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Ln03;",
        "Lk03;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lzx2;


# direct methods
.method public constructor <init>(Lzx2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lby2;->b:Lzx2;

    invoke-direct {p0, p2}, Lbx2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Le83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ln03;

    .line 2
    invoke-virtual {p1}, Ln03;->x()I

    move-result v0

    invoke-static {v0}, Lp43;->b(I)V

    .line 3
    invoke-virtual {p1}, Ln03;->y()Lo03;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lzx2;->i(Lo03;)V

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
    check-cast p1, Ln03;

    .line 2
    invoke-static {}, Lk03;->E()Lk03$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ln03;->y()Lo03;

    move-result-object v1

    .line 4
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 6
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 7
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Lk03;

    invoke-static {v2, v1}, Lk03;->z(Lk03;Lo03;)V

    .line 8
    invoke-virtual {p1}, Ln03;->x()I

    move-result p1

    invoke-static {p1}, Lo43;->a(I)[B

    move-result-object p1

    .line 9
    array-length v1, p1

    invoke-static {p1, v3, v1}, Lk53;->M([BII)Lk53;

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

    check-cast v1, Lk03;

    invoke-static {v1, p1}, Lk03;->A(Lk03;Lk53;)V

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

    check-cast p1, Lk03;

    invoke-static {p1}, Lk03;->y(Lk03;)V

    .line 18
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lk03;

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

    invoke-static {p1, v0}, Ln03;->B(Lk53;Le63;)Ln03;

    move-result-object p1

    return-object p1
.end method
