.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1deedf3b

    if-eq v0, v1, :cond_2

    const v1, 0x4f3f3bc0

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "cursorPosition"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v0, :cond_5

    .line 4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p2, p1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    const-string v0, "com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "itemId"

    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p1, "content_format"

    const/4 v4, 0x0

    .line 9
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    cmp-long p2, v2, v0

    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 11
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v3, v0}, Lj4;->i(JLjava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 14
    iget-object v0, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_5

    .line 15
    iget-wide v5, v0, Lap6;->e:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p2

    .line 17
    check-cast p2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p2, :cond_5

    .line 18
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v1

    iget-boolean v1, v1, Lkw6;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 19
    iput-boolean v2, v0, Lap6;->s:Z

    .line 20
    iput-boolean v2, p2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 21
    iput p1, v0, Lap6;->t:I

    .line 22
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 23
    invoke-virtual {p1, p2, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r(Landroid/webkit/WebView;Lap6;)Z

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget p2, p2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 25
    invoke-virtual {p1, p2, v2, v4}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    nop

    :cond_5
    :goto_0
    return-void
.end method
