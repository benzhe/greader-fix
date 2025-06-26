.class public Lcom/noinnion/android/greader/dashclock/UnreadExtension$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/dashclock/UnreadExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/dashclock/UnreadExtension;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/dashclock/UnreadExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/dashclock/UnreadExtension$a;->a:Lcom/noinnion/android/greader/dashclock/UnreadExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/dashclock/UnreadExtension$a;->a:Lcom/noinnion/android/greader/dashclock/UnreadExtension;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/dashclock/UnreadExtension;->b(I)V

    :cond_0
    return-void
.end method
