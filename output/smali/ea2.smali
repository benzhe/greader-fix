.class public final synthetic Lea2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lba2;


# direct methods
.method public constructor <init>(Lba2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea2;->e:Lba2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lea2;->e:Lba2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lba2;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    const-string v3, "status"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    .line 5
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "scale"

    .line 6
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    const/4 v0, 0x5

    if-ne v3, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lca2;

    invoke-direct {v0, v4, v5, v1}, Lca2;-><init>(DZ)V

    return-object v0
.end method
