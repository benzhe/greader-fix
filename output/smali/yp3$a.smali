.class public final Lyp3$a;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lyp3;",
        "Lyp3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lyp3;->K()Lyp3;

    move-result-object v0

    invoke-direct {p0, v0}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method

.method public constructor <init>(Lrq3;)V
    .locals 0

    .line 2
    invoke-static {}, Lyp3;->K()Lyp3;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method


# virtual methods
.method public final p(Llp3$b;)Lyp3$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lyp3;

    invoke-virtual {p1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Llp3;

    invoke-static {v0, p1}, Lyp3;->y(Lyp3;Llp3;)V

    return-object p0
.end method

.method public final q(Lrp3;)Lyp3$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lyp3;

    invoke-static {v0, p1}, Lyp3;->A(Lyp3;Lrp3;)V

    return-object p0
.end method

.method public final r(Lwp3$a;)Lyp3$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lyp3;

    invoke-virtual {p1}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lwp3;

    invoke-static {v0, p1}, Lyp3;->B(Lyp3;Lwp3;)V

    return-object p0
.end method

.method public final s()Llp3;
    .locals 1

    .line 1
    iget-object v0, p0, Ls63$b;->f:Ls63;

    check-cast v0, Lyp3;

    invoke-virtual {v0}, Lyp3;->I()Llp3;

    move-result-object v0

    return-object v0
.end method
