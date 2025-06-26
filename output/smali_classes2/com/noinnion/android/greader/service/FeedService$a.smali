.class public Lcom/noinnion/android/greader/service/FeedService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/FeedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/service/FeedService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/FeedService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$a;->a:Lcom/noinnion/android/greader/service/FeedService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.noinnion.android.greader.reader.action.START_START_DOWNLOADING"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "item_ids"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "save_page"

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$a;->a:Lcom/noinnion/android/greader/service/FeedService;

    invoke-virtual {v0, p1, p2}, Lcom/noinnion/android/greader/service/FeedService;->f(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
