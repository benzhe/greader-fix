.class public final Ln15;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lm15;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Ln15;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln15;->c()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string v1, "onUnbind called with null intent"

    .line 3
    invoke-virtual {p1, v1}, Low4;->a(Ljava/lang/String;)V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ln15;->c()Lqw4;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "onUnbind called for intent. action"

    .line 7
    invoke-virtual {v1, v2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ln15;->c()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string v0, "onRebind called with null intent"

    .line 3
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ln15;->c()Lqw4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "onRebind called. action"

    .line 7
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Lqw4;
    .locals 2

    iget-object v0, p0, Ln15;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    return-object v0
.end method
