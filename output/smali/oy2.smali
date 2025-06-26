.class public final Loy2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Li13;",
        "Le13;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmy2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbx2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Le83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Li13;

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
    check-cast p1, Li13;

    .line 2
    invoke-static {}, Le13;->B()Le13$a;

    move-result-object p1

    .line 3
    iget-boolean v0, p1, Ls63$b;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 5
    iput-boolean v1, p1, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object v0, p1, Ls63$b;->f:Ls63;

    check-cast v0, Le13;

    invoke-static {v0}, Le13;->y(Le13;)V

    const/16 v0, 0x20

    .line 7
    invoke-static {v0}, Lo43;->a(I)[B

    move-result-object v0

    .line 8
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lk53;->M([BII)Lk53;

    move-result-object v0

    .line 9
    iget-boolean v2, p1, Ls63$b;->g:Z

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 11
    iput-boolean v1, p1, Ls63$b;->g:Z

    .line 12
    :cond_1
    iget-object v1, p1, Ls63$b;->f:Ls63;

    check-cast v1, Le13;

    invoke-static {v1, v0}, Le13;->z(Le13;Lk53;)V

    .line 13
    invoke-virtual {p1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Le13;

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
    invoke-static {p1, v0}, Li13;->y(Lk53;Le63;)Li13;

    move-result-object p1

    return-object p1
.end method
