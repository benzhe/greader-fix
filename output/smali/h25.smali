.class public final Lh25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo25;


# instance fields
.field public final synthetic a:Lj25;


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 0

    iput-object p1, p0, Lh25;->a:Lj25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lh25;->a:Lj25;

    .line 2
    iget-object p1, p1, Lj25;->j:Lrx4;

    .line 3
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "AppId not known when logging error event"

    .line 5
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lh25;->a:Lj25;

    .line 6
    invoke-virtual {v0}, Lj25;->m()Lox4;

    move-result-object v0

    new-instance v1, Lg25;

    invoke-direct {v1, p0, p1, p2}, Lg25;-><init>(Lh25;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method
