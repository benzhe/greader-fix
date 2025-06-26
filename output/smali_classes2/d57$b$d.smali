.class public Ld57$b$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld57$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ld57$b;


# direct methods
.method public constructor <init>(Ld57$b;Ld57$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld57$b$d;->b:Ld57$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ld57$b$d;->a:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "connectivity"

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Ld57$b$d;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ld57$b$d;->a:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 5
    iget-object p1, p0, Ld57$b$d;->b:Ld57$b;

    .line 6
    iget-object p1, p1, Ld57$b;->a:Lf47;

    .line 7
    invoke-virtual {p1}, Lf47;->l()V

    :cond_1
    return-void
.end method
