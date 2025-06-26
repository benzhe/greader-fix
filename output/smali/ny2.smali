.class public final Lny2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Ld13;",
        "La13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lly2;Ljava/lang/Class;)V
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
    check-cast p1, Ld13;

    .line 2
    invoke-virtual {p1}, Ld13;->x()I

    move-result p1

    invoke-static {p1}, Lp43;->b(I)V

    return-void
.end method

.method public final b(Le83;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Ld13;

    .line 2
    invoke-static {}, La13;->B()La13$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ld13;->x()I

    move-result p1

    invoke-static {p1}, Lo43;->a(I)[B

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lk53;->M([BII)Lk53;

    move-result-object p1

    .line 5
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 7
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 8
    :cond_0
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, La13;

    invoke-static {v1, p1}, La13;->z(La13;Lk53;)V

    .line 9
    iget-boolean p1, v0, Ls63$b;->g:Z

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 11
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 12
    :cond_1
    iget-object p1, v0, Ls63$b;->f:Ls63;

    check-cast p1, La13;

    invoke-static {p1}, La13;->y(La13;)V

    .line 13
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, La13;

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

    invoke-static {p1, v0}, Ld13;->z(Lk53;Le63;)Ld13;

    move-result-object p1

    return-object p1
.end method
