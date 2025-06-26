.class public final Lp92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lnd2<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lor0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lor0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp92;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lp92;->b:Lor0;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lnd2<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->C1:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lp92;->b:Lor0;

    .line 7
    invoke-virtual {v0}, Lor0;->g()Law2;

    move-result-object v0

    sget-object v1, Ls92;->a:Lvs2;

    iget-object v2, p0, Lp92;->a:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, v2}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
