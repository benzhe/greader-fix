.class public Ljv6$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljv6;


# direct methods
.method public constructor <init>(Ljv6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljv6$a;->a:Ljv6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.noinnion.android.greader.reader.action.NEW_ITEM"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ljv6$a;->a:Ljv6;

    const-wide/16 v0, 0x0

    const-string v2, "itemId"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iput-wide v0, p1, Ljv6;->h:J

    .line 5
    iget-object p1, p0, Ljv6$a;->a:Ljv6;

    .line 6
    iget-object p1, p1, Ljv6;->f:Ljv6$d;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
