.class public final synthetic Lvp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lrp2;


# direct methods
.method public constructor <init>(Lrp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp2;->e:Lrp2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvp2;->e:Lrp2;

    .line 1
    :goto_0
    iget-object v1, v0, Lrp2;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lrp2;->a:Lpp2;

    iget-object v2, v0, Lrp2;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqp2;

    invoke-interface {v1, v2}, Lpp2;->b(Lqp2;)V

    goto :goto_0

    :cond_0
    return-void
.end method
