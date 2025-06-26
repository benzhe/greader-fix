.class public Lex5$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Ljava/util/concurrent/ScheduledFuture;

.field public final synthetic c:Lex5;


# direct methods
.method public constructor <init>(Lex5;Lex5$d;JLjava/lang/Runnable;Lex5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lex5$b;->c:Lex5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lex5$b;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lex5$b;->c:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 2
    iget-object v0, p0, Lex5$b;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    invoke-virtual {p0}, Lex5$b;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lex5$b;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Caller should have verified scheduledFuture is non-null."

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lex5$b;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    iget-object v0, p0, Lex5$b;->c:Lex5;

    .line 4
    iget-object v0, v0, Lex5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Delayed task not found."

    .line 5
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
