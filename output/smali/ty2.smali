.class public final Lty2;
.super Lbx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbx2<",
        "Lt23;",
        "Lq23;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lry2;Ljava/lang/Class;)V
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
    check-cast p1, Lt23;

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
    check-cast p1, Lt23;

    .line 2
    invoke-static {}, Lq23;->B()Lq23$a;

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

    check-cast v1, Lq23;

    invoke-static {v1, p1}, Lq23;->z(Lq23;Lt23;)V

    .line 7
    iget-boolean p1, v0, Ls63$b;->g:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 9
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 10
    :cond_1
    iget-object p1, v0, Ls63$b;->f:Ls63;

    check-cast p1, Lq23;

    invoke-static {p1}, Lq23;->y(Lq23;)V

    .line 11
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lq23;

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

    invoke-static {p1, v0}, Lt23;->A(Lk53;Le63;)Lt23;

    move-result-object p1

    return-object p1
.end method
