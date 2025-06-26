.class public final synthetic Lhv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liv5;


# direct methods
.method public constructor <init>(Liv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv5;->e:Liv5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lhv5;->e:Liv5;

    .line 1
    iget-object v1, v0, Liv5;->g:Ltw5;

    sget-object v2, Ltw5;->i:Ltw5;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "State should still be backoff but was %s"

    invoke-static {v2, v1, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v1, Ltw5;->e:Ltw5;

    iput-object v1, v0, Liv5;->g:Ltw5;

    .line 3
    invoke-virtual {v0}, Liv5;->g()V

    .line 4
    invoke-virtual {v0}, Liv5;->d()Z

    move-result v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Stream should have started"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
