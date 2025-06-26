.class public final Lyn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lxn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn;->a:Landroid/content/Context;

    new-instance p1, Lxn;

    .line 1
    invoke-direct {p1, p0, p2}, Lxn;-><init>(Lyn;Ljn;)V

    iput-object p1, p0, Lyn;->b:Lxn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyn;->b:Lxn;

    iget-object v1, p0, Lyn;->a:Landroid/content/Context;

    .line 1
    iget-boolean v2, v0, Lxn;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lxn;->c:Lyn;

    .line 2
    iget-object v2, v2, Lyn;->b:Lxn;

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lxn;->b:Z

    goto :goto_0

    :cond_0
    const-string v0, "BillingBroadcastManager"

    const-string v1, "Receiver is not registered."

    .line 4
    invoke-static {v0, v1}, Lpr4;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
