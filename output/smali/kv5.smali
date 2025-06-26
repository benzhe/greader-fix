.class public final synthetic Lkv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liv5$c;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Liv5$c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv5;->e:Liv5$c;

    iput-object p2, p0, Lkv5;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lkv5;->e:Liv5$c;

    iget-object v1, p0, Lkv5;->f:Ljava/lang/Object;

    .line 1
    iget-object v2, v0, Liv5$c;->b:Liv5;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Liv5$c;->b:Liv5;

    .line 3
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 4
    sget-object v4, Lqx5$a;->e:Lqx5$a;

    const-string v5, "(%x) Stream received: %s"

    invoke-static {v4, v2, v5, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Liv5$c;->b:Liv5;

    invoke-virtual {v0, v1}, Liv5;->f(Ljava/lang/Object;)V

    return-void
.end method
