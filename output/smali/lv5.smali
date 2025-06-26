.class public final synthetic Llv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liv5$c;


# direct methods
.method public constructor <init>(Liv5$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv5;->e:Liv5$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Llv5;->e:Liv5$c;

    .line 1
    iget-object v1, v0, Liv5$c;->b:Liv5;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Liv5$c;->b:Liv5;

    .line 3
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    sget-object v3, Lqx5$a;->e:Lqx5$a;

    const-string v4, "(%x) Stream is open"

    invoke-static {v3, v1, v4, v2}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Liv5$c;->b:Liv5;

    .line 6
    sget-object v1, Ltw5;->g:Ltw5;

    iput-object v1, v0, Liv5;->g:Ltw5;

    .line 7
    iget-object v0, v0, Liv5;->k:Luw5;

    invoke-interface {v0}, Luw5;->b()V

    return-void
.end method
