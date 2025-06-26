.class public final synthetic Lmv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liv5$c;

.field public final f:Lx47;


# direct methods
.method public constructor <init>(Liv5$c;Lx47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv5;->e:Liv5$c;

    iput-object p2, p0, Lmv5;->f:Lx47;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lmv5;->e:Liv5$c;

    iget-object v1, p0, Lmv5;->f:Lx47;

    .line 1
    invoke-virtual {v1}, Lx47;->f()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v0, Liv5$c;->b:Liv5;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v0, Liv5$c;->b:Liv5;

    .line 4
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5
    sget-object v5, Lqx5$a;->e:Lqx5$a;

    const-string v6, "(%x) Stream closed."

    invoke-static {v5, v2, v6, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v0, Liv5$c;->b:Liv5;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Liv5$c;->b:Liv5;

    .line 8
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v1, v5, v3

    .line 9
    sget-object v3, Lqx5$a;->f:Lqx5$a;

    const-string v6, "(%x) Stream closed with status: %s."

    invoke-static {v3, v2, v6, v5}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget-object v0, v0, Liv5$c;->b:Liv5;

    .line 11
    invoke-virtual {v0}, Liv5;->d()Z

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Can\'t handle server close on non-started stream!"

    invoke-static {v2, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sget-object v2, Ltw5;->h:Ltw5;

    invoke-virtual {v0, v2, v1}, Liv5;->a(Ltw5;Lx47;)V

    return-void
.end method
