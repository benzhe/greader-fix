.class public final Lgp4$a;
.super Lpk4$d;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgp4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$d<",
        "Lgp4;",
        "Lgp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lgp4;->x()Lgp4;

    move-result-object v0

    invoke-direct {p0, v0}, Lpk4$d;-><init>(Lpk4$c;)V

    return-void
.end method

.method public constructor <init>(Lbp4;)V
    .locals 0

    .line 1
    invoke-static {}, Lgp4;->x()Lgp4;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$d;-><init>(Lpk4$c;)V

    return-void
.end method


# virtual methods
.method public final k(Lxp4$a;)Lgp4$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lpk4$d;->f()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lpk4$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    check-cast v0, Lgp4;

    invoke-virtual {p1}, Lpk4$b;->j()Lam4;

    move-result-object p1

    check-cast p1, Lpk4;

    check-cast p1, Lxp4;

    invoke-static {v0, p1}, Lgp4;->u(Lgp4;Lxp4;)V

    return-object p0
.end method

.method public final l(Llq4$a;)Lgp4$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lpk4$d;->f()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lpk4$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    check-cast v0, Lgp4;

    invoke-virtual {p1}, Lpk4$b;->j()Lam4;

    move-result-object p1

    check-cast p1, Lpk4;

    check-cast p1, Llq4;

    invoke-static {v0, p1}, Lgp4;->v(Lgp4;Llq4;)V

    return-object p0
.end method
