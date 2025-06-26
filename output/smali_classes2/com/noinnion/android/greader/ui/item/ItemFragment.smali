.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment;
.super Lrw6;
.source "SourceFile"

# interfaces
.implements Lsd$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/item/ItemFragment$g;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$e;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$a;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$d;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$f;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$b;,
        Lcom/noinnion/android/greader/ui/item/ItemFragment$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrw6;",
        "Lsd$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field public static final synthetic T:I


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Lkw6;

.field public D:Z

.field public E:Lkx6;

.field public F:Ljava/lang/String;

.field public G:Landroid/view/ViewGroup;

.field public H:Lcom/google/android/gms/ads/AdView;

.field public I:Lcom/google/android/gms/ads/nativead/NativeAd;

.field public J:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

.field public final K:Landroid/content/BroadcastReceiver;

.field public L:Z

.field public M:Z

.field public N:Landroid/view/GestureDetector;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:J

.field public final S:J

.field public f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

.field public g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

.field public h:Lap6$a;

.field public i:Lap6;

.field public j:I

.field public k:J

.field public final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ProgressBar;

.field public w:Landroid/view/View;

.field public final x:Landroid/view/animation/Animation;

.field public final y:Landroid/view/animation/Animation;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lrw6;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    .line 7
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    .line 8
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x:Landroid/view/animation/Animation;

    .line 9
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    .line 11
    sget-object v0, Lkx6;->e:Lkx6;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E:Lkx6;

    .line 12
    new-instance v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$mItemReceiver$1;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->K:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x190

    .line 13
    iput-wide v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->S:J

    return-void
.end method

.method public static final d(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p0, :cond_3

    .line 3
    iget-object v1, v0, Lap6;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6
    iget-object p0, v0, Lap6;->h:Ljava/lang/String;

    :cond_0
    move-object v1, p0

    :cond_1
    const-string p0, "title"

    .line 7
    invoke-static {v1, p0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x2

    const-string v3, "file:"

    invoke-static {v1, v3, p0, v2}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "feed:"

    invoke-static {v1, v3, p0, v2}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    :cond_2
    iget-object v1, v0, Lap6;->h:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method public static final synthetic e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mReadingOptions"

    invoke-static {p0}, Lim7;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final A(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    const-string v2, "mReadingOptions"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_a

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz p1, :cond_9

    iget p1, p1, Lkw6;->q:I

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p()V

    :cond_2
    :goto_0
    return v5

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L:Z

    if-nez p1, :cond_8

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-nez v0, :cond_4

    move-object p1, v4

    :cond_4
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemActivity;->onBackPressed()V

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, p1

    :goto_1
    check-cast v4, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    :cond_7
    return v5

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B()V

    return v5

    .line 13
    :cond_9
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v4

    :cond_a
    const/16 v0, 0x19

    if-ne p1, v0, :cond_15

    .line 14
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz p1, :cond_14

    iget p1, p1, Lkw6;->q:I

    if-eq p1, v5, :cond_e

    if-eq p1, v3, :cond_b

    goto/16 :goto_4

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float v4, v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v0, v2

    if-lt v0, v3, :cond_c

    .line 19
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M:Z

    if-eqz p1, :cond_d

    .line 20
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y()V

    goto :goto_2

    .line 21
    :cond_c
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 22
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p()V

    :cond_d
    :goto_2
    return v5

    .line 23
    :cond_e
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M:Z

    if-nez p1, :cond_13

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-nez v0, :cond_f

    move-object p1, v4

    :cond_f
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemActivity;->onBackPressed()V

    .line 25
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    move-object v4, p1

    :goto_3
    check-cast v4, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    :cond_12
    return v5

    .line 26
    :cond_13
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y()V

    return v5

    .line 27
    :cond_14
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v4

    :cond_15
    const/16 v0, 0x52

    if-ne p1, v0, :cond_16

    .line 28
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l()V

    goto :goto_4

    :cond_16
    const/16 v0, 0x54

    if-ne p1, v0, :cond_17

    return v5

    :cond_17
    :goto_4
    return v1
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v2, v1, Lap6;->s:Z

    if-eqz v2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v2, v1, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln56;->L1(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, Lap6;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lap6;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    invoke-direct {v1, v2}, Lap6;-><init>(Landroid/database/Cursor;)V

    .line 3
    iget-wide v2, v1, Lap6;->g:J

    const/4 v4, 0x1

    .line 4
    sget-object v5, Lon6;->a:Lew6;

    const-class v5, Lon6;

    monitor-enter v5

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    .line 5
    :try_start_0
    sget-object v6, Lon6;->g:Lj4;

    invoke-virtual {v6, v2, v3}, Lj4;->h(J)I

    move-result v6

    if-ltz v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, v2, v3, v4}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    monitor-exit v5

    goto :goto_1

    .line 8
    :cond_1
    :try_start_1
    sget-object v2, Lon6;->g:Lj4;

    iget-wide v3, v0, Lip6;->e:J

    invoke-virtual {v2, v3, v4, v0}, Lj4;->i(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 10
    :cond_2
    :goto_0
    monitor-exit v5

    .line 11
    :goto_1
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    :cond_3
    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    const/4 v2, 0x0

    const-string v3, "mReadingOptions"

    if-eqz v1, :cond_2

    iget v4, v1, Lkw6;->d:I

    if-eqz v1, :cond_1

    .line 3
    iget v5, v1, Lkw6;->e:I

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Lkw6;->f:I

    .line 5
    new-instance v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;

    invoke-direct {v2, p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 6
    :try_start_0
    new-instance v3, Ltw6;

    invoke-direct {v3, v4, v5, v1, v2}, Ltw6;-><init>(IIILtw6$b;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v3, v2, v1}, Lrb;->setStyle(II)V

    .line 8
    check-cast v0, Lxb;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Lqb;

    invoke-direct {v4, v0}, Lqb;-><init>(Lxb;)V

    const-string v0, "fragment_reading"

    .line 11
    invoke-virtual {v4, v1, v3, v0, v2}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v4}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 13
    :cond_0
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_1
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_2
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2
.end method

.method public final F()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "webView.settings"

    invoke-static {v2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    iget-boolean v2, v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    const-string v4, "item_image_fit"

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "javascript:function resetImages(){for(x=0;x<document.images.length;x++){var imageNode=document.images[x];imageNode.removeAttribute(\'width\');imageNode.removeAttribute(\'height\');}}resetImages();function resetBody(){document.body.classList.remove(\'if\')}resetBody();"

    .line 6
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v4, v2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->c()Z

    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz v2, :cond_1

    const-string v2, "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-20;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute(\'width\',\'100%\');imageNode.removeAttribute(\'height\');imageNode.removeAttribute(\'style\');}}} function resizeIFrames() {var i,frames;frames=document.getElementsByTagName(\"iframe\"); for(i=0;i<frames.length; ++i) {frames[i].setAttribute(\'width\', \'280\');frames[i].setAttribute(\'height\', \'210\');}}resizeImages();"

    goto :goto_0

    :cond_1
    const-string v2, "javascript:function resizeImages() {var minSize=200;var maxSize=window.innerWidth-30;for(x=0;x<document.images.length;x++) {var imageNode=document.images[x];iWidth=imageNode.width;if (iWidth > maxSize && iWidth > minSize) {imageNode.setAttribute(\'width\',maxSize);imageNode.removeAttribute(\'height\');imageNode.removeAttribute(\'style\');}}} resizeImages();"

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v4, v3}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12
    :goto_1
    iget-boolean v0, v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    :cond_2
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 4
    iget-boolean v1, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->g:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->setDarkMode(Z)V

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v2, 0x7f080169

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f11014a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    iget-wide v2, v0, Lap6;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f11014b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final I()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    const-string v2, "item_images_loading"

    const/4 v3, 0x1

    const-string v4, "mReadingOptions"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    iput v6, v1, Lkw6;->c:I

    .line 4
    sget-object v1, Liw6;->a:Ljava/lang/reflect/Method;

    .line 5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v1, :cond_0

    iget v1, v1, Lkw6;->c:I

    invoke-static {v0, v1}, Liw6;->b(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 7
    :cond_1
    invoke-static {v4}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v1, :cond_5

    iput v3, v1, Lkw6;->c:I

    .line 9
    sget-object v1, Liw6;->a:Ljava/lang/reflect/Method;

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v1, :cond_4

    iget v1, v1, Lkw6;->c:I

    invoke-static {v0, v1}, Liw6;->b(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "webView1.settings"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 14
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    :cond_3
    return-void

    .line 15
    :cond_4
    invoke-static {v4}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    .line 16
    :cond_5
    invoke-static {v4}, Lim7;->k(Ljava/lang/String;)V

    throw v5

    :cond_6
    return-void
.end method

.method public final J()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    iget-wide v3, v1, Lap6;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v3, 0x7f080183

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lap6;->r:Z

    .line 7
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    iget-wide v4, v1, Lap6;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, v1, v2}, Lep6;->j(Lap6;Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    const v3, 0x7f080180

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lap6;->r:Z

    .line 11
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    iget-wide v4, v1, Lap6;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lep6;->j(Lap6;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v1, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v0, :cond_a

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_a

    .line 3
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v3, :cond_9

    iget v3, v3, Lkw6;->m:I

    const-string v4, "cache://"

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 4
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    if-lt v2, v5, :cond_2

    :goto_0
    move-object v2, v4

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, v1, Lap6;->k:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x4

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    const-string v7, "http://mobilizer.instapaper.com/m?u="

    .line 8
    invoke-static {v0, v7, v5, v4}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-ne v8, v6, :cond_4

    .line 9
    invoke-static {v0, v7, v3, v5, v2}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    const-string v7, "http://googleweblight.com/i?u="

    .line 10
    invoke-static {v0, v7, v5, v4}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-ne v4, v6, :cond_5

    .line 11
    invoke-static {v0, v7, v3, v5, v2}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    move-object v2, v0

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v0, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    if-lt v0, v5, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    iget-object v0, v1, Lap6;->k:Ljava/lang/String;

    goto :goto_1

    .line 14
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 15
    iget-wide v3, v1, Lap6;->e:J

    iget-object v1, v1, Lap6;->h:Ljava/lang/String;

    invoke-static {v0, v3, v4, v2, v1}, Ln56;->V1(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const-string v0, "mReadingOptions"

    .line 16
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    :cond_a
    return-void
.end method

.method public final L()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_4

    .line 3
    iget-wide v2, v1, Lap6;->e:J

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    iget-boolean v3, v2, Lap6;->s:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->F:Ljava/lang/String;

    iget-object v6, v2, Lap6;->f:Ljava/lang/String;

    invoke-static {v5, v6}, Ln56;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-static {v3}, Lhy6;->c(Ljava/io/File;)V

    .line 8
    :cond_1
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    iget-wide v5, v2, Lap6;->e:J

    invoke-virtual {v0, v5, v6, v4}, Lep6;->h(JI)Z

    .line 9
    iput-boolean v4, v1, Lap6;->s:Z

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    iget-wide v1, v2, Lap6;->e:J

    invoke-virtual {v0, v1, v2}, Lj4;->j(J)V

    .line 11
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v1, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v0, :cond_3

    iput-boolean v4, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final M(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "cursorPosition"

    .line 4
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-wide v3, v0, Lap6;->e:J

    const-string p1, "itemId"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    invoke-static {v1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    invoke-virtual {p1, v2}, Lyd;->c(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public f(Lwd;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Landroid/database/Cursor;

    const-string v0, "loader"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "csr"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 4
    new-instance p1, Lap6$a;

    invoke-direct {p1, p2}, Lap6$a;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    .line 5
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    goto/16 :goto_5

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result p2

    if-nez p2, :cond_13

    iget p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    invoke-virtual {p1, p2}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-wide v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->k:J

    const-wide/16 v2, 0x0

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-lez v5, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 11
    iget v6, p1, Lap6$a;->e:I

    invoke-virtual {p1, v6}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-nez v8, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    iget v6, p1, Lap6$a;->e:I

    invoke-virtual {p1, v6}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-nez v8, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 15
    invoke-virtual {p1, v5}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    .line 17
    iput-wide v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->k:J

    .line 18
    :cond_8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    invoke-virtual {v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setRestoredCurItem(I)V

    .line 19
    :cond_9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 21
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setAdapter(Lry6;)V

    .line 22
    :cond_a
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    .line 23
    :cond_b
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v0, :cond_d

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, v0, Lry6;->b:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_c

    .line 26
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 27
    :cond_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, v0, Lry6;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 30
    :cond_d
    :goto_3
    iget v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j(I)V

    .line 31
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isLast()Z

    move-result v0

    xor-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M:Z

    .line 32
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->s:Landroid/view/View;

    const/4 v2, 0x4

    if-eqz v1, :cond_f

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_f
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isFirst()Z

    move-result v0

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L:Z

    .line 34
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_10

    const/4 v2, 0x0

    :cond_10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_11
    iget p2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    if-nez p2, :cond_13

    .line 36
    invoke-virtual {p1, v4}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 37
    invoke-virtual {p0, v4}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j(I)V

    .line 38
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D()V

    .line 39
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    instance-of p2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez p2, :cond_12

    const/4 p1, 0x0

    :cond_12
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h(Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M(I)V

    :cond_13
    :goto_5
    return-void
.end method

.method public g(ILandroid/os/Bundle;)Lwd;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_7

    const-string v4, "force_recreate"

    .line 3
    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "unreadOnly"

    if-eqz v4, :cond_1

    .line 4
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4}, Lew6;->b()V

    .line 5
    sget-object v4, Lon6;->a:Lew6;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lew6;->g:J

    .line 6
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lew6;->f:Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    sget-object v4, Lon6;->a:Lew6;

    iput-boolean v2, v4, Lew6;->f:Z

    .line 9
    :cond_2
    :goto_1
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4, v1, p2}, Lew6;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v4, "readIds"

    .line 10
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-wide v7, v4, v6

    .line 12
    iget-object v9, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-string v4, "keepUnreadIds"

    .line 13
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v4, :cond_4

    .line 14
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-wide v7, v4, v6

    .line 15
    iget-object v9, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const-string v4, "starredIds"

    .line 16
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v4, :cond_5

    .line 17
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-wide v7, v4, v6

    .line 18
    iget-object v9, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const-string v4, "subIds"

    .line 19
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v4, :cond_6

    .line 20
    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_6

    aget-wide v7, v4, v6

    .line 21
    iget-object v9, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    const-string v4, "cursorPosition"

    .line 22
    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    const-wide/16 v4, 0x0

    const-string v6, "itemId"

    .line 23
    invoke-virtual {p2, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->k:J

    .line 24
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v4, p2, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, p2

    :goto_6
    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz v0, :cond_9

    sget-object p2, Lon6;->a:Lew6;

    invoke-virtual {p2, v1}, Lew6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lu;->u(Ljava/lang/CharSequence;)V

    .line 26
    :cond_9
    sget-object p2, Lon6;->a:Lew6;

    if-nez p1, :cond_a

    .line 27
    new-instance p2, Lvd;

    invoke-direct {p2, p1}, Lvd;-><init>(Landroid/content/Context;)V

    goto/16 :goto_b

    .line 28
    :cond_a
    iget-boolean v0, p2, Lew6;->d:Z

    if-eqz v0, :cond_b

    .line 29
    iget-boolean v2, p2, Lew6;->f:Z

    iget-object v3, p2, Lew6;->c:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v7

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lep6;->u(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Lvd;

    move-result-object p2

    goto/16 :goto_b

    .line 30
    :cond_b
    iget-boolean v0, p2, Lew6;->e:Z

    if-eqz v0, :cond_c

    .line 31
    iget-boolean v2, p2, Lew6;->f:Z

    iget-object v3, p2, Lew6;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v7

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lep6;->u(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Lvd;

    move-result-object p2

    goto/16 :goto_b

    .line 32
    :cond_c
    iget-object v0, p2, Lew6;->a:Lip6;

    const-string v1, " AND "

    const-string v4, ""

    if-eqz v0, :cond_e

    .line 33
    iget-wide v5, v0, Lip6;->e:J

    iget-boolean v0, p2, Lew6;->f:Z

    iget-object v7, p2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v9

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v9, v10}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_7

    :cond_d
    move-object v1, v4

    :goto_7
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "item.sub_id = ?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/String;

    .line 36
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 37
    new-instance v9, Lvd;

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v1, v9

    move-object v2, p1

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v9

    goto/16 :goto_b

    .line 38
    :cond_e
    iget-object v0, p2, Lew6;->b:Llp6;

    if-eqz v0, :cond_12

    .line 39
    iget v5, v0, Llp6;->g:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_10

    .line 40
    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    iget-boolean v5, p2, Lew6;->f:Z

    iget-object v6, p2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v8

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v8, v9}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_f

    goto :goto_8

    :cond_f
    move-object v1, v4

    :goto_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "item.sub_id IN (SELECT tag2sub.sub_id FROM tag2sub WHERE tag2sub.tag_uid = ?)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v3

    .line 43
    new-instance v0, Lvd;

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 44
    :cond_10
    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    iget-boolean v5, p2, Lew6;->f:Z

    iget-object v6, p2, Lew6;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v8

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v8, v9}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_11

    goto :goto_9

    :cond_11
    move-object v1, v4

    :goto_9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag2item.item_uid = item.uid AND tag2item.tag_uid = ? AND tag2item.action >= 0"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v3

    .line 47
    new-instance v0, Lvd;

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object p2, v0

    goto :goto_b

    .line 48
    :cond_12
    iget-boolean v2, p2, Lew6;->f:Z

    iget-object v3, p2, Lew6;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, p1}, Lew6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lew6;->d()J

    move-result-wide v7

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lep6;->u(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Lvd;

    move-result-object p2

    :goto_b
    const-string p1, "ReaderManager.getItemLoa\u2026(c, ReaderVar.itemFilter)"

    .line 49
    invoke-static {p2, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final h(Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->isLast()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M:Z

    .line 3
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->isFirst()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L:Z

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->s:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->M:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->L:Z

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_e

    .line 7
    iget-boolean v1, v0, Lap6;->v:Z

    if-nez v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    iget-wide v4, v0, Lap6;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    iget-wide v4, v0, Lap6;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    iget-boolean v1, v0, Lap6;->r:Z

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    iget-wide v4, v0, Lap6;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p:Lj4;

    iget-wide v4, v0, Lap6;->e:J

    invoke-virtual {v1, v4, v5}, Lj4;->h(J)I

    move-result v1

    if-ltz v1, :cond_6

    .line 13
    iput-boolean v2, v0, Lap6;->s:Z

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    iget-wide v5, v0, Lap6;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f080180

    goto :goto_1

    :cond_7
    const v4, 0x7f080183

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_8
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    iget-wide v5, v0, Lap6;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f08016a

    goto :goto_2

    :cond_9
    const v4, 0x7f080169

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :cond_a
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->q:Landroid/view/View;

    if-eqz v1, :cond_c

    const v4, 0x7f090149

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lap6;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz p1, :cond_d

    .line 17
    iput-boolean v2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e:Z

    .line 18
    iget v1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    iget-boolean v0, v0, Lap6;->s:Z

    iget-boolean v2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    const/4 v0, 0x2

    .line 19
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_4

    .line 20
    :cond_d
    iget-boolean p1, v0, Lap6;->s:Z

    invoke-virtual {p0, v3, p1, v3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    .line 21
    :goto_4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l()V

    :cond_e
    return-void
.end method

.method public final i(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_1

    const p1, 0x7f08016b

    goto :goto_1

    :cond_1
    const p1, 0x7f08016c

    .line 4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public final j(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getCount()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    rem-int/lit8 v1, v1, 0x32

    if-nez v1, :cond_0

    const-string p1, "+"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lu;->s(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    check-cast v2, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, v2, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public k(Lwd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "mReadingOptions"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lkw6;->u:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lkw6;->t:Z

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lkw6;->s:Z

    if-eqz v0, :cond_9

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_8
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_0
    return-void

    .line 11
    :cond_a
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_b
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v2
.end method

.method public final m(IZZ)V
    .locals 9

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, v2, p3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i(ZZ)V

    .line 2
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w:Landroid/view/View;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v3, p3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i(ZZ)V

    .line 4
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w:Landroid/view/View;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3, p3}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i(ZZ)V

    .line 6
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w:Landroid/view/View;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of v4, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move-object p3, v5

    :cond_3
    check-cast p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    const v4, 0x7f040026

    const/4 v6, -0x1

    if-eqz p3, :cond_10

    .line 8
    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->x:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->y:Landroid/widget/TextView;

    if-nez v7, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 10
    invoke-static {p3, v4}, Ln56;->T0(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v7, v8}, Lu7;->b(Landroid/content/Context;I)I

    move-result v7

    if-eq p1, v3, :cond_a

    if-eq p1, v0, :cond_7

    .line 11
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_5
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->x:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_6
    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->y:Landroid/widget/TextView;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 14
    :cond_7
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_8
    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->x:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    :cond_9
    iget-object v7, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->y:Landroid/widget/TextView;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 17
    :cond_a
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :cond_b
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->x:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_c
    iget-object v8, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->y:Landroid/widget/TextView;

    if-eqz v8, :cond_d

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_1
    if-nez p2, :cond_f

    if-ne p1, v0, :cond_e

    goto :goto_2

    .line 20
    :cond_e
    iget-object p3, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz p3, :cond_10

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_f
    :goto_2
    iget-object p3, p3, Lcom/noinnion/android/greader/ui/item/ItemActivity;->z:Landroid/widget/TextView;

    if-eqz p3, :cond_10

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_10
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of v7, p3, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-nez v7, :cond_11

    goto :goto_4

    :cond_11
    move-object v5, p3

    :goto_4
    check-cast v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz v5, :cond_17

    .line 23
    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    if-eqz p3, :cond_17

    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Q:Landroid/widget/TextView;

    if-eqz p3, :cond_17

    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->R:Landroid/widget/TextView;

    if-eqz p3, :cond_17

    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U:Landroid/widget/ImageView;

    if-nez p3, :cond_12

    goto :goto_7

    .line 24
    :cond_12
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 25
    invoke-static {v5, v4}, Ln56;->T0(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p3, v4}, Lu7;->b(Landroid/content/Context;I)I

    move-result p3

    if-eq p1, v3, :cond_14

    if-eq p1, v0, :cond_13

    .line 26
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 29
    :cond_13
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 32
    :cond_14
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v3, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    if-nez p2, :cond_16

    if-ne p1, v0, :cond_15

    goto :goto_6

    .line 35
    :cond_15
    iget-object p1, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object p1, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U:Landroid/widget/ImageView;

    const p2, 0x7f080131

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 37
    :cond_16
    :goto_6
    iget-object p1, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object p1, v5, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->U:Landroid/widget/ImageView;

    const p2, 0x7f080137

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    :goto_7
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v2, :cond_5

    .line 3
    iget-object v1, v0, Lap6;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->d()Z

    move-result v3

    const-string v4, "link"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, v0, Lap6;->k:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http://mobilizer.instapaper.com/m?u="

    invoke-static {v1, v2, v6, v5}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    const/4 v7, 0x4

    const-string v8, ""

    if-eqz v3, :cond_1

    .line 8
    invoke-static {v1, v2, v8, v6, v7}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_1
    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http://googleweblight.com/i?u="

    invoke-static {v1, v2, v6, v5}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v1, v2, v8, v6, v7}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_2
    invoke-static {v1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "file:"

    invoke-static {v1, v2, v6, v5}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "feed:"

    invoke-static {v1, v2, v6, v5}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    :cond_3
    iget-object v1, v0, Lap6;->k:Ljava/lang/String;

    .line 13
    :cond_4
    invoke-static {v1}, Ln56;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1
.end method

.method public final o()Landroid/webkit/WebView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v2, :cond_0

    .line 2
    iget-object v1, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lsd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p0}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e()V

    goto/16 :goto_1

    .line 5
    :sswitch_1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->e()V

    goto/16 :goto_1

    .line 8
    :sswitch_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->K()V

    goto/16 :goto_1

    .line 9
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Ln56;->O1(Landroid/app/Activity;Lap6;Z)V

    goto/16 :goto_1

    :cond_0
    return-void

    .line 11
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v0, "fragmentActivity"

    .line 12
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 13
    new-instance v2, Lro$c;

    invoke-direct {v2, p1}, Lro$c;-><init>(Landroid/app/Activity;)V

    const p1, 0x7f110236

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 15
    iput-object p1, v2, Lro$c;->d:Ljava/lang/CharSequence;

    .line 16
    iput-boolean v1, v2, Lro$c;->e:Z

    const-string p1, "service_translate"

    .line 17
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080179

    const v3, 0x7f1101b6

    .line 18
    invoke-virtual {v2, v1, p1, v3}, Lro$c;->b(III)Lro$c;

    :cond_1
    const-string p1, "service_everclip"

    .line 19
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const v3, 0x7f080171

    const v4, 0x7f1102f8

    .line 20
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_2
    const-string p1, "service_facebook"

    .line 21
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    const v3, 0x7f080172

    const v4, 0x7f1102fb

    .line 22
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_3
    const-string p1, "service_twitter"

    .line 23
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    const v3, 0x7f08017a

    const v4, 0x7f110309

    .line 24
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_4
    const-string p1, "service_ril"

    .line 25
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    const v3, 0x7f080177

    const v4, 0x7f110305

    .line 26
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_5
    const-string p1, "service_instapaper"

    .line 27
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x8

    const v3, 0x7f080174

    const v4, 0x7f1102ff

    .line 28
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_6
    const-string p1, "service_google_mobilizer"

    .line 29
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    const v3, 0x7f080175

    const v4, 0x7f1102fc

    .line 30
    invoke-virtual {v2, p1, v3, v4}, Lro$c;->b(III)Lro$c;

    :cond_7
    const-string p1, "service_readability_mobilizer"

    .line 31
    invoke-static {v0, p1, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0xb

    const v0, 0x7f080176

    const v1, 0x7f110303

    .line 32
    invoke-virtual {v2, p1, v0, v1}, Lro$c;->b(III)Lro$c;

    .line 33
    :cond_8
    new-instance p1, Lvq6;

    invoke-direct {p1, p0}, Lvq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 34
    iput-object p1, v2, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    invoke-virtual {v2}, Lro$c;->d()Lro;

    goto/16 :goto_1

    .line 36
    :sswitch_5
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w(Landroid/webkit/WebView;)V

    .line 38
    iget v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    iget-boolean v1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->o:Z

    iget-boolean p1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    goto/16 :goto_1

    :cond_9
    return-void

    .line 39
    :sswitch_6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B()V

    goto/16 :goto_1

    .line 40
    :sswitch_7
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->y()V

    goto/16 :goto_1

    .line 41
    :sswitch_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H()V

    goto/16 :goto_1

    .line 42
    :sswitch_9
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->J()V

    goto/16 :goto_1

    .line 43
    :sswitch_a
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz p1, :cond_b

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p1, Lap6;->e:J

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 p1, 0x0

    .line 45
    invoke-static {v0, v1, v2, p1}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Ln56;->U1(Landroid/app/Activity;Lap6;)V

    goto/16 :goto_1

    :cond_b
    return-void

    .line 47
    :sswitch_b
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_1

    .line 48
    :sswitch_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 49
    instance-of v2, v0, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-nez v2, :cond_c

    const/4 v0, 0x0

    :cond_c
    check-cast v0, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz v0, :cond_11

    check-cast p1, Landroid/widget/ImageView;

    const-string v2, "view"

    .line 50
    invoke-static {p1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v3

    iget-boolean v3, v3, Lhw6;->m:Z

    if-eqz v3, :cond_e

    .line 53
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lu;->w()V

    :cond_d
    const v3, 0x7f0800f7

    .line 54
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 55
    :cond_e
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lu;->f()V

    :cond_f
    const v3, 0x7f0800ee

    .line 56
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :goto_0
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v2

    iget-boolean v2, v2, Lhw6;->m:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p1, Lhw6;->m:Z

    .line 58
    invoke-static {v0}, Ln56;->x2(Landroid/app/Activity;)V

    goto :goto_1

    .line 59
    :cond_10
    instance-of p1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ln56;->x2(Landroid/app/Activity;)V

    goto :goto_1

    .line 60
    :sswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Liw6;->Q(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_11
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090081 -> :sswitch_d
        0x7f09012b -> :sswitch_c
        0x7f09012f -> :sswitch_b
        0x7f090149 -> :sswitch_a
        0x7f09014e -> :sswitch_9
        0x7f090173 -> :sswitch_8
        0x7f09020f -> :sswitch_7
        0x7f09024f -> :sswitch_6
        0x7f090260 -> :sswitch_5
        0x7f0902a3 -> :sswitch_4
        0x7f0902a7 -> :sswitch_3
        0x7f09035c -> :sswitch_2
        0x7f090372 -> :sswitch_1
        0x7f090373 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.DOWNLOADING_UPDATED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_POSITION"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "activity"

    .line 7
    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lkx6;->g:Lkx6;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E:Lkx6;

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lkx6;->f:Lkx6;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E:Lkx6;

    :cond_2
    const v0, 0x7f1100ef

    .line 12
    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E:Lkx6;

    sget-object v3, Lkx6;->e:Lkx6;

    if-ne v2, v3, :cond_0

    const v2, 0x7f0c0062

    goto :goto_0

    :cond_0
    const v2, 0x7f0c006a

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v4, p2

    .line 2
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "this"

    .line 3
    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 5
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeTimers()V

    .line 6
    invoke-static {v2}, Lon6;->h(Landroid/content/Context;)Lkw6;

    move-result-object v4

    const-string v5, "ReaderVar.getReadingOptions(context)"

    invoke-static {v4, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    const-string v5, "mReadingOptions"

    .line 7
    iget v4, v4, Lkw6;->c:I

    invoke-static {v2, v4}, Liw6;->b(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->D:Z

    .line 8
    invoke-static {v2}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->F:Ljava/lang/String;

    const v4, 0x7f09012a

    .line 9
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 10
    iget-object v6, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    const/4 v7, 0x0

    if-eqz v6, :cond_32

    iget-boolean v6, v6, Lkw6;->w:Z

    const/4 v8, 0x1

    if-nez v6, :cond_1

    .line 11
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    :cond_1
    invoke-static {}, Llw6;->k()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v6, :cond_2

    iget-boolean v6, v6, Lkw6;->b:Z

    if-eqz v6, :cond_3

    const v6, -0xe0e0e1

    .line 13
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :cond_3
    :goto_1
    const v4, 0x7f09035e

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v4, :cond_7

    .line 16
    iget-object v6, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v6, :cond_6

    iget v6, v6, Lkw6;->p:I

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v6}, Lcom/noinnion/android/reader/ui/view/WebViewPager;->setPagingDisabled(Z)V

    .line 17
    new-instance v6, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;

    invoke-direct {v6, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$c;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 18
    iget-object v9, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    if-nez v9, :cond_5

    .line 19
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    .line 20
    :cond_5
    iget-object v9, v4, Lcom/noinnion/android/view/viewpager/FixedViewPager;->V:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_6
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :cond_7
    move-object v4, v7

    .line 22
    :goto_3
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    .line 23
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v6, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;

    invoke-direct {v6, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    invoke-direct {v4, v2, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->N:Landroid/view/GestureDetector;

    const v4, 0x7f090165

    .line 24
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    if-eqz v4, :cond_9

    .line 25
    iget-object v9, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v9, :cond_8

    iget-boolean v9, v9, Lkw6;->t:Z

    if-nez v9, :cond_a

    .line 26
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 27
    :cond_8
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :cond_9
    move-object v4, v7

    .line 28
    :cond_a
    :goto_4
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    const v4, 0x7f090371

    .line 29
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 30
    iget-object v9, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v9, :cond_b

    iget-boolean v9, v9, Lkw6;->u:Z

    if-nez v9, :cond_d

    .line 31
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 32
    :cond_b
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :cond_c
    move-object v4, v7

    .line 33
    :cond_d
    :goto_5
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    const v4, 0x7f09003b

    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 35
    iget-object v9, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v9, :cond_e

    iget-boolean v9, v9, Lkw6;->s:Z

    if-nez v9, :cond_10

    .line 36
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 37
    :cond_e
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :cond_f
    move-object v4, v7

    .line 38
    :cond_10
    :goto_6
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    const v4, 0x7f090253

    .line 39
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v:Landroid/widget/ProgressBar;

    const v4, 0x7f09012f

    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 41
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_11
    move-object v4, v7

    .line 42
    :goto_7
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w:Landroid/view/View;

    const v4, 0x7f09020f

    .line 43
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 44
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_12
    move-object v4, v7

    .line 45
    :goto_8
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->s:Landroid/view/View;

    const v4, 0x7f09024f

    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 47
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_13
    move-object v4, v7

    .line 48
    :goto_9
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->r:Landroid/view/View;

    const v4, 0x7f09012b

    .line 49
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_15

    .line 50
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {v2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v9

    iget-boolean v9, v9, Lhw6;->m:Z

    if-eqz v9, :cond_14

    const v9, 0x7f0800ee

    goto :goto_a

    :cond_14
    const v9, 0x7f0800f7

    :goto_a
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    const v4, 0x7f090372

    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v4, 0x7f090373

    .line 53
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v4, 0x7f090260

    .line 54
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    const v4, 0x7f090149

    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    const v4, 0x7f090081

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1a

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_1a
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1b
    const v4, 0x7f0902a7

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1c

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_1c
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1d
    const v4, 0x7f0902a3

    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_1e
    iget-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v4, :cond_31

    iget v4, v4, Lkw6;->m:I

    const v5, 0x7f09035c

    if-lez v4, :cond_1f

    .line 62
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 63
    :cond_1f
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.findViewById<View>(R.id.voice_reading)"

    invoke-static {v4, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    const v4, 0x7f09014e

    .line 64
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_20

    .line 65
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    :cond_20
    move-object v4, v7

    .line 66
    :goto_c
    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t:Landroid/widget/ImageView;

    const v4, 0x7f090173

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_21

    .line 68
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, v4

    .line 69
    :cond_21
    iput-object v7, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->u:Landroid/widget/ImageView;

    .line 70
    invoke-static {v2}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_30

    const v4, 0x7f09004d

    .line 71
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->G:Landroid/view/ViewGroup;

    .line 72
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    sget-object v5, Lql6;->i:Lql6;

    sget-object v6, Lql6;->h:Lql6;

    sget v7, Lcn6;->b:I

    const-string v7, "next_interstitial_time"

    const-wide/16 v9, 0x0

    .line 73
    invoke-static {v2, v7, v9, v10}, Liw6;->A(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v15, v11, v9

    if-nez v15, :cond_22

    .line 74
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v9

    const-string v10, "ad_interstitial_free_trial_in_seconds"

    invoke-virtual {v9, v10}, Ljb6;->b(Ljava/lang/String;)J

    move-result-wide v9

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-long v9, v9, v13

    add-long/2addr v9, v11

    .line 76
    invoke-static {v2, v7, v9, v10}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_d

    .line 77
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v15, v11, v9

    if-gez v15, :cond_23

    .line 78
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v9

    const-string v10, "ad_interstitial_interval_in_seconds"

    invoke-virtual {v9, v10}, Ljb6;->b(Ljava/lang/String;)J

    move-result-wide v9

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-long v9, v9, v13

    add-long/2addr v9, v11

    .line 80
    invoke-static {v2, v7, v9, v10}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v7, 0x1

    goto :goto_e

    :cond_23
    :goto_d
    const/4 v7, 0x0

    :goto_e
    const-string v9, "1"

    const-string v10, "npa"

    const-string v11, "adRequestBuilder.build()"

    const-string v12, "GDPR.getInstance().consentState.consent"

    const-string v13, "GDPR.getInstance().consentState"

    const-string v14, "GDPR.getInstance()"

    const-string v15, "onAdLoaded"

    const-string v3, "context"

    if-eqz v7, :cond_27

    .line 81
    new-instance v7, Loq6;

    invoke-direct {v7, v0, v2}, Loq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Landroid/content/Context;)V

    .line 82
    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v15}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v8, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    move-object/from16 p2, v1

    .line 84
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v1

    invoke-static {v1, v14}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lpl6;->a()Lrl6;

    move-result-object v1

    invoke-static {v1, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v1, v1, Lrl6;->a:Lql6;

    .line 86
    invoke-static {v1, v12}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, v6, :cond_25

    if-ne v1, v5, :cond_24

    goto :goto_f

    :cond_24
    const/4 v1, 0x0

    goto :goto_10

    :cond_25
    :goto_f
    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_26

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v8, v4, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 89
    :cond_26
    invoke-virtual {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-static {v1, v11}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v8, Law6;

    invoke-direct {v8, v7}, Law6;-><init>(Ltl7;)V

    const-string v7, "ca-app-pub-6875289151086704/6336833518"

    invoke-static {v2, v7, v1, v8}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V

    goto :goto_11

    :cond_27
    move-object/from16 p2, v1

    .line 91
    :goto_11
    invoke-static {}, Ljb6;->a()Ljb6;

    move-result-object v1

    const-string v7, "ad_banner_format_native"

    .line 92
    iget-object v1, v1, Ljb6;->g:Lfc6;

    .line 93
    iget-object v8, v1, Lfc6;->c:Lxb6;

    invoke-static {v8, v7}, Lfc6;->d(Lxb6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v11

    if-eqz v8, :cond_29

    .line 94
    sget-object v11, Lfc6;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 95
    iget-object v8, v1, Lfc6;->c:Lxb6;

    invoke-static {v8}, Lfc6;->b(Lxb6;)Lyb6;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lfc6;->a(Ljava/lang/String;Lyb6;)V

    goto :goto_12

    .line 96
    :cond_28
    sget-object v11, Lfc6;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 97
    iget-object v8, v1, Lfc6;->c:Lxb6;

    invoke-static {v8}, Lfc6;->b(Lxb6;)Lyb6;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lfc6;->a(Ljava/lang/String;Lyb6;)V

    goto :goto_13

    .line 98
    :cond_29
    iget-object v1, v1, Lfc6;->d:Lxb6;

    invoke-static {v1, v7}, Lfc6;->d(Lxb6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 99
    sget-object v8, Lfc6;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2a

    :goto_12
    const/4 v1, 0x1

    goto :goto_14

    .line 100
    :cond_2a
    sget-object v8, Lfc6;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_13

    :cond_2b
    const-string v1, "Boolean"

    .line 101
    invoke-static {v7, v1}, Lfc6;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_2c

    .line 102
    new-instance v1, Lpq6;

    invoke-direct {v1, v0}, Lpq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 103
    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v15}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v3, Lcom/google/android/gms/ads/AdLoader$Builder;

    const-string v4, "ca-app-pub-6875289151086704/2840529951"

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    new-instance v2, Lxv6;

    invoke-direct {v2, v1}, Lxv6;-><init>(Lpl7;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    .line 106
    new-instance v2, Lyv6;

    invoke-direct {v2}, Lyv6;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 108
    new-instance v3, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_16

    :cond_2c
    const/4 v7, 0x1

    .line 113
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v8, "bannerAdSize"

    .line 114
    invoke-static {v1, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lqq6;

    invoke-direct {v8, v0}, Lqq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 115
    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "size"

    invoke-static {v1, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v15}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v3, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v3, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    const-string v2, "ca-app-pub-6875289151086704/8488581109"

    .line 118
    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lwv6;

    invoke-direct {v2, v3, v1, v8}, Lwv6;-><init>(Lcom/google/android/gms/ads/AdView;Lcom/google/android/gms/ads/AdSize;Lpl7;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 120
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 121
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v2

    invoke-static {v2, v14}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lpl6;->a()Lrl6;

    move-result-object v2

    invoke-static {v2, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v2, v2, Lrl6;->a:Lql6;

    .line 123
    invoke-static {v2, v12}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v2, v6, :cond_2e

    if-ne v2, v5, :cond_2d

    goto :goto_15

    :cond_2d
    const/4 v7, 0x0

    :cond_2e
    :goto_15
    if-nez v7, :cond_2f

    .line 124
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 126
    :cond_2f
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 128
    iput-object v3, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H:Lcom/google/android/gms/ads/AdView;

    goto :goto_16

    :cond_30
    move-object/from16 p2, v1

    goto :goto_16

    .line 129
    :cond_31
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    .line 130
    :cond_32
    invoke-static {v5}, Lim7;->k(Ljava/lang/String;)V

    throw v7

    :goto_16
    move-object/from16 v1, p2

    .line 131
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->q:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {v0}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v2

    .line 12
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lep6;->B([J[J[JZZ)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    .line 17
    :cond_5
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    .line 18
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v0, :cond_9

    .line 19
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_8

    .line 20
    iget-object v5, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez v6, :cond_6

    move-object v5, v2

    :cond_6
    check-cast v5, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v5, :cond_7

    .line 21
    invoke-virtual {v5}, Landroid/webkit/WebView;->stopLoading()V

    .line 22
    invoke-virtual {v5}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->destroy()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 23
    :cond_8
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 25
    :cond_a
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H:Lcom/google/android/gms/ads/AdView;

    .line 26
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->I:Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    .line 27
    :cond_b
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->I:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 28
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->J:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    if-eqz v0, :cond_c

    const-string v1, "$this$destroy"

    .line 29
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 31
    :cond_c
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->J:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 32
    invoke-super {p0}, Lrw6;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090081

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902a7

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    invoke-static {p1, v0, v2}, Ln56;->O1(Landroid/app/Activity;Lap6;Z)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v3, v5

    :cond_1
    check-cast v3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v3, :cond_2

    :try_start_0
    const-string v4, "android.webkit.WebView"

    .line 5
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onPause"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 8
    :cond_4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v0, :cond_4

    .line 5
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 6
    iget-object v3, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v3, v5

    :cond_2
    check-cast v3, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v3, :cond_3

    :try_start_0
    const-string v4, "android.webkit.WebView"

    .line 7
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onResume"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "outState"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const-string v1, "id"

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    .line 4
    invoke-static {v5, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v0, v4

    move v4, v6

    goto :goto_0

    :cond_0
    const-string v3, "readIds"

    .line 5
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 8
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    .line 9
    invoke-static {v5, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v0, v4

    move v4, v6

    goto :goto_1

    :cond_2
    const-string v3, "keepUnreadIds"

    .line 10
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 13
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    .line 14
    invoke-static {v5, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v0, v4

    move v4, v6

    goto :goto_2

    :cond_4
    const-string v3, "starredIds"

    .line 15
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 18
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v2, 0x1

    .line 19
    invoke-static {v4, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v2

    move v2, v5

    goto :goto_3

    :cond_6
    const-string v1, "subIds"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_8

    .line 22
    iget-wide v0, v0, Lap6;->e:J

    const-string v2, "itemId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    :cond_8
    iget v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    const-string v1, "cursorPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0, p1}, Lew6;->h(Landroid/os/Bundle;)V

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lkw6;->v:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v1, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string v0, "mReadingOptions"

    .line 4
    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final r(Landroid/webkit/WebView;Lap6;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->F:Ljava/lang/String;

    iget-object v4, p2, Lap6;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Ln56;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content.html"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 v3, 0x2

    .line 5
    iput v3, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    .line 6
    iget p2, p2, Lap6;->t:I

    iput p2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->h:I

    const-string p2, "connectivity"

    .line 7
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    .line 10
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p2, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p2, v3, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string v3, "webView.settings"

    if-nez p2, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-static {p2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-static {p2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-static {p2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1100c5

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return v0
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    iget-object v2, v0, Lap6;->k:Ljava/lang/String;

    const-string v3, "currentItem.link"

    invoke-static {v2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->t(Lcom/noinnion/android/reader/ui/widget/ItemWebView;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    iget-boolean v0, v0, Lap6;->s:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    :cond_0
    return-void
.end method

.method public final t(Lcom/noinnion/android/reader/ui/widget/ItemWebView;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p2}, Ln56;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UrlUtils.getGoogleMobilizerUrl(newLink)"

    invoke-static {p2, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "webView.settings"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v(Landroid/webkit/WebView;Lap6;)V

    .line 3
    iget-boolean v0, v0, Lap6;->s:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->m(IZZ)V

    :cond_0
    return-void
.end method

.method public final v(Landroid/webkit/WebView;Lap6;)V
    .locals 8

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 5
    iget-wide v2, p2, Lap6;->g:J

    .line 6
    sget-object v0, Lon6;->a:Lew6;

    const-class v0, Lon6;

    monitor-enter v0

    const/4 v4, 0x1

    .line 7
    :try_start_0
    invoke-static {v1, v2, v3, v4}, Lon6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string v2, "com.noinnion.android.greader.reader.imageloader"

    .line 8
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v5, :cond_2

    iget v6, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->k:I

    iget-boolean v7, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->n:Z

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Ln56;->H(Landroid/content/Context;Ljava/lang/String;Low6;Lpw6;Lkw6;IZ)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, "feed://"

    move-object v2, p1

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 10
    iput p2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->f:I

    return-void

    :cond_2
    const-string p1, "mReadingOptions"

    .line 11
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final w(Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "webView.settings"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->E:Lkx6;

    sget-object v2, Lkx6;->g:Lkx6;

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    sget-object v2, Lkx6;->f:Lkx6;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string v2, "javascript:readConvertLinksToFootnotes=false;readStyle=\'style-newspaper\';readSize=\'size-medium\';readMargin=\'margin-x-narrow\';var readability={iframeLoads:0,convertLinksToFootnotes:false,reversePageScroll:false,frameHack:false,biggestFrame:false,bodyCache:null,flags:0x1|0x2|0x4,FLAG_STRIP_UNLIKELYS:0x1,FLAG_WEIGHT_CLASSES:0x2,FLAG_CLEAN_CONDITIONALLY:0x4,maxPages:30,parsedPages:{},pageETags:{},regexps:{unlikelyCandidates:/combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,okMaybeItsACandidate:/and|article|body|column|main|shadow/i,positive:/article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,negative:/combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|tool|widget/i,extraneous:/print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single/i,divToPElements:/<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,replaceBrs:/(<br[^>]*>[ \\n\\r\\t]*){2,}/gi,replaceFonts:/<(\\/?)font[^>]*>/gi,trim:/^\\s+|\\s+$/g,normalize:/\\s{2,}/g,killBreaks:/(<br\\s*\\/?>(\\s|&nbsp;?)*){1,}/g,videos:/http:\\/\\/(www\\.)?(youtube|vimeo)\\.com/i,skipFootnoteLink:/^\\s*(\\[?[a-z0-9]{1,2}\\]?|^|edit|citation needed)\\s*$/i,nextLink:/(next|weiter|continue|>([^\\|]|$)|\u00bb([^\\|]|$))/i,prevLink:/(prev|earl|old|new|<|\u00ab)/i},init:function(){window.onload=window.onunload=function(){};readability.removeScripts(document);if(document.body&&!readability.bodyCache){readability.bodyCache=document.body.innerHTML;}readability.parsedPages[window.location.href.replace(/\\/$/,\'\')]=true;readability.prepDocument();var overlay=document.createElement(\"div\");var innerDiv=document.createElement(\"div\");var articleTitle=readability.getArticleTitle();var articleContent=readability.grabArticle();var articleFooter=readability.getArticleFooter();if(!articleContent){window.location.href=\'readability://\';articleContent=document.createElement(\"div\");articleContent.id=\"readability-content\";articleContent.innerHTML=[\"<p>Sorry, this page was unable to parse for the content.</p><div class=\'box\'><a href=\'readability://\'>Turn off reading mode</a></div>\"].join(\'\');}overlay.id=\"readOverlay\";innerDiv.id=\"readInner\";document.body.className=readStyle;document.dir=readability.getSuggestedDirection(articleTitle.innerHTML);if(readStyle==\"style-athelas\"||readStyle==\"style-apertura\"){overlay.className=readStyle+\" rdbTypekit\";}else{overlay.className=readStyle;}innerDiv.className=readMargin+\" \"+readSize;if(typeof(readConvertLinksToFootnotes)!==\'undefined\'&&readConvertLinksToFootnotes===true){readability.convertLinksToFootnotes=true;}innerDiv.appendChild(articleTitle);innerDiv.appendChild(articleContent);innerDiv.appendChild(articleFooter);overlay.appendChild(innerDiv);document.body.innerHTML=\"\";document.body.insertBefore(overlay,document.body.firstChild);document.body.removeAttribute(\'style\');if(readability.frameHack){var readOverlay=document.getElementById(\'readOverlay\');readOverlay.style.height=\'100%\';readOverlay.style.overflow=\'auto\';}if((window.location.protocol+\"//\"+window.location.host+\"/\")==window.location.href){innerDiv.insertBefore(articleContent);}readability.postProcessContent(articleContent);window.scrollTo(0,0);},postProcessContent:function(articleContent){if(readability.convertLinksToFootnotes&&!window.location.href.match(/wikipedia\\.org/g)){readability.addFootnotes(articleContent);}readability.fixImageFloats(articleContent);},fixImageFloats:function(articleContent){var imageWidthThreshold=Math.min(articleContent.offsetWidth,800)*0.55,images=articleContent.getElementsByTagName(\'img\');for(var i=0,il=images.length;i<il;i++){var image=images[i];if(image.offsetWidth>imageWidthThreshold){image.className+=\" blockImage\";}}},getSuggestedDirection:function(text){function sanitizeText(){return text.replace(/@\\w+/,\"\");}function countMatches(match){var matches=text.match(new RegExp(match,\"g\"));return matches!=null?matches.length:0;}function isRTL(){var count_heb=countMatches(\"[\\\\u05B0-\\\\u05F4\\\\uFB1D-\\\\uFBF4]\");var count_arb=countMatches(\"[\\\\u060C-\\\\u06FE\\\\uFB50-\\\\uFEFC]\");return(count_heb+count_arb)*100/text.length>20;}text=sanitizeText(text);return isRTL()?\"rtl\":\"ltr\";},getArticleTitle:function(){var curTitle=\"\",origTitle=\"\";try{curTitle=origTitle=document.title;if(typeof curTitle!=\"string\"){curTitle=origTitle=readability.getInnerText(document.getElementsByTagName(\'title\')[0]);}}catch(e){}if(curTitle.match(/ [\\|\\-] /)){curTitle=origTitle.replace(/(.*)[\\|\\-] .*/gi,\'$1\');if(curTitle.split(\' \').length<3){curTitle=origTitle.replace(/[^\\|\\-]*[\\|\\-](.*)/gi,\'$1\');}}else if(curTitle.indexOf(\': \')!==-1){curTitle=origTitle.replace(/.*:(.*)/gi,\'$1\');if(curTitle.split(\' \').length<3){curTitle=origTitle.replace(/[^:]*[:](.*)/gi,\'$1\');}}else if(curTitle.length>150||curTitle.length<15){var hOnes=document.getElementsByTagName(\'h1\');if(hOnes.length==1){curTitle=readability.getInnerText(hOnes[0]);}}curTitle=curTitle.replace(readability.regexps.trim,\"\");if(curTitle.split(\' \').length<=4){curTitle=origTitle;}var articleTitle=document.createElement(\"h1\");articleTitle.innerHTML=curTitle;return articleTitle;},getArticleFooter:function(){var articleFooter=document.createElement(\"div\");articleFooter.id=\"readFooter\";articleFooter.innerHTML=[\"<div id=\'rdb-footer-print\'>\",\"</div>\",\"<div id=\'rdb-footer-wrapper\'>\",\"</div>\"].join(\'\');return articleFooter;},prepDocument:function(){if(document.body===null){var body=document.createElement(\"body\");try{document.body=body;}catch(e){document.documentElement.appendChild(body);}}var metas = document.getElementsByTagName(\'meta\');for (i=0; i<metas.length; i++) { metas[i].parentElement.removeChild(metas[i]); }var meta = document.createElement(\'meta\');meta.setAttribute(\'name\', \'viewport\');meta.setAttribute(\'content\', \'width=device-width\');document.getElementsByTagName(\'head\')[0].appendChild(meta);document.body.id=\"readabilityBody\";var frames=document.getElementsByTagName(\'frame\');if(frames.length>0){var bestFrame=null;var bestFrameSize=0;var biggestFrameSize=0;for(var frameIndex=0;frameIndex<frames.length;frameIndex++){var frameSize=frames[frameIndex].offsetWidth+frames[frameIndex].offsetHeight;var canAccessFrame=false;try{frames[frameIndex].contentWindow.document.body;canAccessFrame=true;}catch(eFrames){}if(frameSize>biggestFrameSize){biggestFrameSize=frameSize;readability.biggestFrame=frames[frameIndex];}if(canAccessFrame&&frameSize>bestFrameSize){readability.frameHack=true;bestFrame=frames[frameIndex];bestFrameSize=frameSize;}}if(bestFrame){var newBody=document.createElement(\'body\');newBody.innerHTML=bestFrame.contentWindow.document.body.innerHTML;newBody.style.overflow=\'scroll\';document.body=newBody;var frameset=document.getElementsByTagName(\'frameset\')[0];if(frameset){frameset.parentNode.removeChild(frameset);}}}for(var k=0;k<document.styleSheets.length;k++){if(document.styleSheets[k].href!==null&&document.styleSheets[k].href.lastIndexOf(\"readability\")==-1){document.styleSheets[k].disabled=true;}}var styleTags=document.getElementsByTagName(\"style\");for(var st=0;st<styleTags.length;st++){styleTags[st].textContent=\"\";}document.body.innerHTML=document.body.innerHTML.replace(readability.regexps.replaceFonts,\'<$1span>\');},addFootnotes:function(articleContent){var footnotesWrapper=document.getElementById(\'readability-footnotes\'),articleFootnotes=document.getElementById(\'readability-footnotes-list\');if(!footnotesWrapper){footnotesWrapper=document.createElement(\"div\");footnotesWrapper.id=\'readability-footnotes\';footnotesWrapper.innerHTML=\'<h3>References</h3>\';footnotesWrapper.style.display=\'none\';articleFootnotes=document.createElement(\'ol\');articleFootnotes.id=\'readability-footnotes-list\';footnotesWrapper.appendChild(articleFootnotes);var readFooter=document.getElementById(\'readFooter\');if(readFooter){readFooter.parentNode.insertBefore(footnotesWrapper,readFooter);}}var articleLinks=articleContent.getElementsByTagName(\'a\');var linkCount=articleFootnotes.getElementsByTagName(\'li\').length;for(var i=0;i<articleLinks.length;i++){var articleLink=articleLinks[i],footnoteLink=articleLink.cloneNode(true),refLink=document.createElement(\'a\'),footnote=document.createElement(\'li\'),linkDomain=footnoteLink.host?footnoteLink.host:document.location.host,linkText=readability.getInnerText(articleLink);if(articleLink.className&&articleLink.className.indexOf(\'readability-DoNotFootnote\')!==-1||linkText.match(readability.regexps.skipFootnoteLink)){continue;}linkCount++;refLink.href=\'#readabilityFootnoteLink-\'+linkCount;refLink.innerHTML=\'<small><sup>[\'+linkCount+\']</sup></small>\';refLink.className=\'readability-DoNotFootnote\';try{refLink.style.color=\'inherit\';}catch(e){}if(articleLink.parentNode.lastChild==articleLink){articleLink.parentNode.appendChild(refLink);}else{articleLink.parentNode.insertBefore(refLink,articleLink.nextSibling);}articleLink.name=\'readabilityLink-\'+linkCount;try{articleLink.style.color=\'inherit\';}catch(e){}footnote.innerHTML=\"<small><sup><a href=\'#readabilityLink-\"+linkCount+\"\' title=\'Jump to Link in Article\'>^</a></sup></small> \";footnoteLink.innerHTML=(footnoteLink.title?footnoteLink.title:linkText);footnoteLink.name=\'readabilityFootnoteLink-\'+linkCount;footnote.appendChild(footnoteLink);footnote.innerHTML=footnote.innerHTML+\"<small> (\"+linkDomain+\")</small>\";articleFootnotes.appendChild(footnote);}if(linkCount>0){footnotesWrapper.style.display=\'block\';}},prepArticle:function(articleContent){readability.cleanStyles(articleContent);readability.cleanConditionally(articleContent,\"form\");readability.clean(articleContent,\"object\");readability.clean(articleContent,\"h1\");if(articleContent.getElementsByTagName(\'h2\').length==1){readability.clean(articleContent,\"h2\");}readability.clean(articleContent,\"iframe\");readability.cleanHeaders(articleContent);readability.cleanConditionally(articleContent,\"table\");readability.cleanConditionally(articleContent,\"ul\");readability.cleanConditionally(articleContent,\"div\");var articleParagraphs=articleContent.getElementsByTagName(\'p\');for(var i=articleParagraphs.length-1;i>=0;i--){var imgCount=articleParagraphs[i].getElementsByTagName(\'img\').length;var embedCount=articleParagraphs[i].getElementsByTagName(\'embed\').length;var objectCount=articleParagraphs[i].getElementsByTagName(\'object\').length;if(imgCount===0&&embedCount===0&&objectCount===0&&readability.getInnerText(articleParagraphs[i],false)==\'\'){articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);}}try{articleContent.innerHTML=articleContent.innerHTML.replace(/<br[^>]*>\\s*<p/gi,\'<p\');}catch(e){}},initializeNode:function(node){node.readability={\"contentScore\":0};switch(node.tagName){case\'DIV\':node.readability.contentScore+=5;break;case\'PRE\':case\'TD\':case\'BLOCKQUOTE\':node.readability.contentScore+=3;break;case\'ADDRESS\':case\'OL\':case\'UL\':case\'DL\':case\'DD\':case\'DT\':case\'LI\':case\'FORM\':node.readability.contentScore-=3;break;case\'H1\':case\'H2\':case\'H3\':case\'H4\':case\'H5\':case\'H6\':case\'TH\':node.readability.contentScore-=5;break;}node.readability.contentScore+=readability.getClassWeight(node);},grabArticle:function(page){var stripUnlikelyCandidates=readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS),isPaging=(page!==null)?true:false;page=page?page:document.body;var pageCacheHtml=page.innerHTML;var allElements=page.getElementsByTagName(\'*\');var node=null;var nodesToScore=[];for(var nodeIndex=0;(node=allElements[nodeIndex]);nodeIndex++){if(stripUnlikelyCandidates){var unlikelyMatchString=node.className+node.id;if((unlikelyMatchString.search(readability.regexps.unlikelyCandidates)!==-1&&unlikelyMatchString.search(readability.regexps.okMaybeItsACandidate)==-1&&node.tagName!==\"BODY\")){node.parentNode.removeChild(node);nodeIndex--;continue;}}if(node.tagName===\"P\"||node.tagName===\"TD\"||node.tagName===\"PRE\"){nodesToScore[nodesToScore.length]=node;}if(node.tagName===\"DIV\"){if(node.innerHTML.search(readability.regexps.divToPElements)===-1){var newNode=document.createElement(\'p\');try{newNode.innerHTML=node.innerHTML;node.parentNode.replaceChild(newNode,node);nodeIndex--;nodesToScore[nodesToScore.length]=node;}catch(e){}}else{for(var i=0,il=node.childNodes.length;i<il;i++){var childNode=node.childNodes[i];if(childNode.nodeType==3){var p=document.createElement(\'p\');p.innerHTML=childNode.nodeValue;p.style.display=\'inline\';p.className=\'readability-styled\';childNode.parentNode.replaceChild(p,childNode);}}}}}var candidates=[];for(var pt=0;pt<nodesToScore.length;pt++){var parentNode=nodesToScore[pt].parentNode;var grandParentNode=parentNode?parentNode.parentNode:null;var innerText=readability.getInnerText(nodesToScore[pt]);if(!parentNode||typeof(parentNode.tagName)==\'undefined\'){continue;}if(innerText.length<25){continue;}if(typeof parentNode.readability==\'undefined\'){readability.initializeNode(parentNode);candidates.push(parentNode);}if(grandParentNode&&typeof(grandParentNode.readability)==\'undefined\'&&typeof(grandParentNode.tagName)!=\'undefined\'){readability.initializeNode(grandParentNode);candidates.push(grandParentNode);}var contentScore=0;contentScore++;contentScore+=innerText.split(\',\').length;contentScore+=Math.min(Math.floor(innerText.length/100),3);parentNode.readability.contentScore+=contentScore;if(grandParentNode){grandParentNode.readability.contentScore+=contentScore/2;}}var topCandidate=null;for(var c=0,cl=candidates.length;c<cl;c++){candidates[c].readability.contentScore=candidates[c].readability.contentScore*(1-readability.getLinkDensity(candidates[c]));if(!topCandidate||candidates[c].readability.contentScore>topCandidate.readability.contentScore){topCandidate=candidates[c];}}if(topCandidate===null||topCandidate.tagName==\"BODY\"){topCandidate=document.createElement(\"div\");topCandidate.innerHTML=page.innerHTML;page.innerHTML=\"\";page.appendChild(topCandidate);readability.initializeNode(topCandidate);}var articleContent=document.createElement(\"div\");if(isPaging){articleContent.id=\"readability-content\";}var siblingScoreThreshold=Math.max(10,topCandidate.readability.contentScore*0.2);var siblingNodes=topCandidate.parentNode.childNodes;for(var s=0,sl=siblingNodes.length;s<sl;s++){var siblingNode=siblingNodes[s];var append=false;if(!siblingNode){continue;}if(siblingNode===topCandidate){append=true;}var contentBonus=0;if(siblingNode.className==topCandidate.className&&topCandidate.className!=\"\"){contentBonus+=topCandidate.readability.contentScore*0.2;}if(typeof siblingNode.readability!=\'undefined\'&&(siblingNode.readability.contentScore+contentBonus)>=siblingScoreThreshold){append=true;}if(siblingNode.nodeName==\"P\"){var linkDensity=readability.getLinkDensity(siblingNode);var nodeContent=readability.getInnerText(siblingNode);var nodeLength=nodeContent.length;if(nodeLength>80&&linkDensity<0.25){append=true;}else if(nodeLength<80&&linkDensity===0&&nodeContent.search(/\\.( |$)/)!==-1){append=true;}}if(append){var nodeToAppend=null;if(siblingNode.nodeName!=\"DIV\"&&siblingNode.nodeName!=\"P\"){nodeToAppend=document.createElement(\"div\");try{nodeToAppend.id=siblingNode.id;nodeToAppend.innerHTML=siblingNode.innerHTML;}catch(er){nodeToAppend=siblingNode;s--;sl--;}}else{nodeToAppend=siblingNode;s--;sl--;}nodeToAppend.className=\"\";articleContent.appendChild(nodeToAppend);}}readability.prepArticle(articleContent);if(readability.curPageNum===1){articleContent.innerHTML=\'<div id=\"readability-page-1\" class=\"page\">\'+articleContent.innerHTML+\'</div>\';}if(readability.getInnerText(articleContent,false).length<250){page.innerHTML=pageCacheHtml;if(readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS)){readability.removeFlag(readability.FLAG_STRIP_UNLIKELYS);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){readability.removeFlag(readability.FLAG_WEIGHT_CLASSES);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){readability.removeFlag(readability.FLAG_CLEAN_CONDITIONALLY);return readability.grabArticle(page);}else{return null;}}return articleContent;},removeScripts:function(doc){var scripts=doc.getElementsByTagName(\'script\');for(var i=scripts.length-1;i>=0;i--){if(typeof(scripts[i].src)==\"undefined\"||(scripts[i].src.indexOf(\'readability\')==-1&&scripts[i].src.indexOf(\'typekit\')==-1)){scripts[i].nodeValue=\"\";scripts[i].removeAttribute(\'src\');if(scripts[i].parentNode){scripts[i].parentNode.removeChild(scripts[i]);}}}},getInnerText:function(e,normalizeSpaces){var textContent=\"\";if(typeof(e.textContent)==\"undefined\"&&typeof(e.innerText)==\"undefined\"){return\"\";}normalizeSpaces=(typeof normalizeSpaces==\'undefined\')?true:normalizeSpaces;if(navigator.appName==\"Microsoft Internet Explorer\"){textContent=e.innerText.replace(readability.regexps.trim,\"\");}else{textContent=e.textContent.replace(readability.regexps.trim,\"\");}if(normalizeSpaces){return textContent.replace(readability.regexps.normalize,\" \");}else{return textContent;}},getCharCount:function(e,s){s=s||\",\";return readability.getInnerText(e).split(s).length-1;},cleanStyles:function(e){e=e||document;var cur=e.firstChild;if(!e){return;}if(typeof e.removeAttribute==\'function\'&&e.className!=\'readability-styled\'){e.removeAttribute(\'style\');}while(cur!==null){if(cur.nodeType==1){if(cur.className!=\"readability-styled\"){cur.removeAttribute(\"style\");}readability.cleanStyles(cur);}cur=cur.nextSibling;}},getLinkDensity:function(e){var links=e.getElementsByTagName(\"a\");var textLength=readability.getInnerText(e).length;var linkLength=0;for(var i=0,il=links.length;i<il;i++){linkLength+=readability.getInnerText(links[i]).length;}return linkLength/textLength;},findBaseUrl:function(){var noUrlParams=window.location.pathname.split(\"?\")[0],urlSlashes=noUrlParams.split(\"/\").reverse(),cleanedSegments=[],possibleType=\"\";for(var i=0,slashLen=urlSlashes.length;i<slashLen;i++){var segment=urlSlashes[i];if(segment.indexOf(\".\")!==-1){possibleType=segment.split(\".\")[1];if(!possibleType.match(/[^a-zA-Z]/)){segment=segment.split(\".\")[0];}}if(segment.indexOf(\',00\')!==-1){segment=segment.replace(\',00\',\'\');}if(segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i)&&((i===1)||(i===0))){segment=segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i,\"\");}del=false;if(i<2&&segment.match(/^\\d{1,2}$/)){del=true;}if(i===0&&segment.toLowerCase()==\"index\")del=true;if(i<2&&segment.length<3&&!urlSlashes[0].match(/[a-z]/i))del=true;if(!del){cleanedSegments.push(segment);}}return window.location.protocol+\"//\"+window.location.host+cleanedSegments.reverse().join(\"/\");},xhr:function(){if(typeof XMLHttpRequest!==\'undefined\'&&(window.location.protocol!==\'file:\'||!window.ActiveXObject)){return new XMLHttpRequest();}else{try{return new ActiveXObject(\'Msxml2.XMLHTTP.6.0\');}catch(sixerr){}try{return new ActiveXObject(\'Msxml2.XMLHTTP.3.0\');}catch(threrr){}try{return new ActiveXObject(\'Msxml2.XMLHTTP\');}catch(err){}}return false;},successfulRequest:function(request){return(request.status>=200&&request.status<300)||request.status==304||(request.status===0&&request.responseText);},ajax:function(url,options){var request=readability.xhr();function respondToReadyState(readyState){if(request.readyState==4){if(readability.successfulRequest(request)){if(options.success){options.success(request);}}else{if(options.error){options.error(request);}}}}if(typeof options===\'undefined\'){options={};}request.onreadystatechange=respondToReadyState;request.open(\'get\',url,true);request.setRequestHeader(\'Accept\',\'text/html\');try{request.send(options.postBody);}catch(e){if(options.error){options.error();}}return request;},curPageNum:1,getClassWeight:function(e){if(!readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){return 0;}var weight=0;if(typeof(e.className)===\'string\'&&e.className!=\'\'){if(e.className.search(readability.regexps.negative)!==-1){weight-=25;}if(e.className.search(readability.regexps.positive)!==-1){weight+=25;}}if(typeof(e.id)===\'string\'&&e.id!=\'\'){if(e.id.search(readability.regexps.negative)!==-1){weight-=25;}if(e.id.search(readability.regexps.positive)!==-1){weight+=25;}}return weight;},nodeIsVisible:function(node){return(node.offsetWidth!==0||node.offsetHeight!==0)&&node.style.display.toLowerCase()!==\'none\';},killBreaks:function(e){try{e.innerHTML=e.innerHTML.replace(readability.regexps.killBreaks,\'<br />\');}catch(eBreaks){}},clean:function(e,tag){var targetList=e.getElementsByTagName(tag);var isEmbed=(tag==\'object\'||tag==\'embed\');for(var y=targetList.length-1;y>=0;y--){if(isEmbed){var attributeValues=\"\";for(var i=0,il=targetList[y].attributes.length;i<il;i++){attributeValues+=targetList[y].attributes[i].value+\'|\';}if(attributeValues.search(readability.regexps.videos)!==-1){continue;}if(targetList[y].innerHTML.search(readability.regexps.videos)!==-1){continue;}}targetList[y].parentNode.removeChild(targetList[y]);}},cleanConditionally:function(e,tag){if(!readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){return;}var tagsList=e.getElementsByTagName(tag);var curTagsLength=tagsList.length;for(var i=curTagsLength-1;i>=0;i--){var weight=readability.getClassWeight(tagsList[i]);var contentScore=(typeof tagsList[i].readability!=\'undefined\')?tagsList[i].readability.contentScore:0;if(weight+contentScore<0){tagsList[i].parentNode.removeChild(tagsList[i]);}else if(readability.getCharCount(tagsList[i],\',\')<10){var p=tagsList[i].getElementsByTagName(\"p\").length;var img=tagsList[i].getElementsByTagName(\"img\").length;var li=tagsList[i].getElementsByTagName(\"li\").length-100;var input=tagsList[i].getElementsByTagName(\"input\").length;var embedCount=0;var embeds=tagsList[i].getElementsByTagName(\"embed\");for(var ei=0,il=embeds.length;ei<il;ei++){if(embeds[ei].src.search(readability.regexps.videos)==-1){embedCount++;}}var linkDensity=readability.getLinkDensity(tagsList[i]);var contentLength=readability.getInnerText(tagsList[i]).length;var toRemove=false;if(img>p){toRemove=true;}else if(li>p&&tag!=\"ul\"&&tag!=\"ol\"){toRemove=true;}else if(input>Math.floor(p/3)){toRemove=true;}else if(contentLength<25&&(img===0||img>2)){toRemove=true;}else if(weight<25&&linkDensity>0.2){toRemove=true;}else if(weight>=25&&linkDensity>0.5){toRemove=true;}else if((embedCount==1&&contentLength<75)||embedCount>1){toRemove=true;}if(toRemove){tagsList[i].parentNode.removeChild(tagsList[i]);}}}},cleanHeaders:function(e){for(var headerIndex=1;headerIndex<3;headerIndex++){var headers=e.getElementsByTagName(\'h\'+headerIndex);for(var i=headers.length-1;i>=0;i--){if(readability.getClassWeight(headers[i])<0||readability.getLinkDensity(headers[i])>0.33){headers[i].parentNode.removeChild(headers[i]);}}}},easeInOut:function(start,end,totalSteps,actualStep){var delta=end-start;if((actualStep/=totalSteps/2)<1){return delta/2*actualStep*actualStep+start;}return-delta/2*((--actualStep)*(actualStep-2)-1)+start;},scrollTop:function(scroll){var setScroll=typeof scroll!=\'undefined\';if(setScroll){return window.scrollTo(0,scroll);}if(typeof window.pageYOffset!=\'undefined\'){return window.pageYOffset;}else if(document.documentElement.clientHeight){return document.documentElement.scrollTop;}else{return document.body.scrollTop;}},curScrollStep:0,scrollTo:function(scrollStart,scrollEnd,steps,interval){if((scrollStart<scrollEnd&&readability.scrollTop()<scrollEnd)||(scrollStart>scrollEnd&&readability.scrollTop()>scrollEnd)){readability.curScrollStep++;if(readability.curScrollStep>steps){return;}var oldScrollTop=readability.scrollTop();readability.scrollTop(readability.easeInOut(scrollStart,scrollEnd,steps,readability.curScrollStep));if(oldScrollTop==readability.scrollTop()){return;}window.setTimeout(function(){readability.scrollTo(scrollStart,scrollEnd,steps,interval);},interval);}},removeFrame:function(){readability.iframeLoads++;if(readability.iframeLoads>3){var emailContainer=document.getElementById(\'email-container\');if(null!==emailContainer){emailContainer.parentNode.removeChild(emailContainer);}readability.iframeLoads=0;}},htmlspecialchars:function(s){if(typeof(s)==\"string\"){s=s.replace(/&/g,\"&amp;\");s=s.replace(/\"/g,\"&quot;\");s=s.replace(/\'/g,\"&#039;\");s=s.replace(/</g,\"&lt;\");s=s.replace(/>/g,\"&gt;\");}return s;},flagIsActive:function(flag){return(readability.flags&flag)>0;},addFlag:function(flag){readability.flags=readability.flags|flag;},removeFlag:function(flag){readability.flags=readability.flags&~flag;},addCss:function(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);},setTheme:function(theme){document.body.setAttribute(\"class\", theme);}};readability.init();"

    goto :goto_1

    :cond_4
    const-string v2, "javascript:readConvertLinksToFootnotes=false;readStyle=\'style-newspaper\';readSize=\'size-medium\';readMargin=\'margin-x-narrow\';var readability={iframeLoads:0,convertLinksToFootnotes:false,reversePageScroll:false,frameHack:false,biggestFrame:false,bodyCache:null,flags:0x1|0x2|0x4,FLAG_STRIP_UNLIKELYS:0x1,FLAG_WEIGHT_CLASSES:0x2,FLAG_CLEAN_CONDITIONALLY:0x4,maxPages:30,parsedPages:{},pageETags:{},regexps:{unlikelyCandidates:/combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,okMaybeItsACandidate:/and|article|body|column|main|shadow/i,positive:/article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,negative:/combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|tool|widget/i,extraneous:/print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single/i,divToPElements:/<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,replaceBrs:/(<br[^>]*>[ \\n\\r\\t]*){2,}/gi,replaceFonts:/<(\\/?)font[^>]*>/gi,trim:/^\\s+|\\s+$/g,normalize:/\\s{2,}/g,killBreaks:/(<br\\s*\\/?>(\\s|&nbsp;?)*){1,}/g,videos:/http:\\/\\/(www\\.)?(youtube|vimeo)\\.com/i,skipFootnoteLink:/^\\s*(\\[?[a-z0-9]{1,2}\\]?|^|edit|citation needed)\\s*$/i,nextLink:/(next|weiter|continue|>([^\\|]|$)|\u00bb([^\\|]|$))/i,prevLink:/(prev|earl|old|new|<|\u00ab)/i},init:function(){window.onload=window.onunload=function(){};readability.removeScripts(document);if(document.body&&!readability.bodyCache){readability.bodyCache=document.body.innerHTML;}readability.parsedPages[window.location.href.replace(/\\/$/,\'\')]=true;readability.prepDocument();var overlay=document.createElement(\"div\");var innerDiv=document.createElement(\"div\");var articleTitle=readability.getArticleTitle();var articleContent=readability.grabArticle();var articleFooter=readability.getArticleFooter();if(!articleContent){articleContent=document.createElement(\"div\");articleContent.id=\"readability-content\";articleContent.innerHTML=[\"<p>Sorry, this page was unable to parse for the content.</p><div class=\'box\'><a href=\'readability://\'>Turn off reading mode</a></div>\"].join(\'\');}overlay.id=\"readOverlay\";innerDiv.id=\"readInner\";document.body.className=readStyle;document.dir=readability.getSuggestedDirection(articleTitle.innerHTML);if(readStyle==\"style-athelas\"||readStyle==\"style-apertura\"){overlay.className=readStyle+\" rdbTypekit\";}else{overlay.className=readStyle;}innerDiv.className=readMargin+\" \"+readSize;if(typeof(readConvertLinksToFootnotes)!==\'undefined\'&&readConvertLinksToFootnotes===true){readability.convertLinksToFootnotes=true;}innerDiv.appendChild(articleTitle);innerDiv.appendChild(articleContent);innerDiv.appendChild(articleFooter);overlay.appendChild(innerDiv);document.body.innerHTML=\"\";document.body.insertBefore(overlay,document.body.firstChild);document.body.removeAttribute(\'style\');if(readability.frameHack){var readOverlay=document.getElementById(\'readOverlay\');readOverlay.style.height=\'100%\';readOverlay.style.overflow=\'auto\';}if((window.location.protocol+\"//\"+window.location.host+\"/\")==window.location.href){innerDiv.insertBefore(articleContent);}readability.postProcessContent(articleContent);window.scrollTo(0,0);},postProcessContent:function(articleContent){if(readability.convertLinksToFootnotes&&!window.location.href.match(/wikipedia\\.org/g)){readability.addFootnotes(articleContent);}readability.fixImageFloats(articleContent);},fixImageFloats:function(articleContent){var imageWidthThreshold=Math.min(articleContent.offsetWidth,800)*0.55,images=articleContent.getElementsByTagName(\'img\');for(var i=0,il=images.length;i<il;i++){var image=images[i];if(image.offsetWidth>imageWidthThreshold){image.className+=\" blockImage\";}}},getSuggestedDirection:function(text){function sanitizeText(){return text.replace(/@\\w+/,\"\");}function countMatches(match){var matches=text.match(new RegExp(match,\"g\"));return matches!=null?matches.length:0;}function isRTL(){var count_heb=countMatches(\"[\\\\u05B0-\\\\u05F4\\\\uFB1D-\\\\uFBF4]\");var count_arb=countMatches(\"[\\\\u060C-\\\\u06FE\\\\uFB50-\\\\uFEFC]\");return(count_heb+count_arb)*100/text.length>20;}text=sanitizeText(text);return isRTL()?\"rtl\":\"ltr\";},getArticleTitle:function(){var curTitle=\"\",origTitle=\"\";try{curTitle=origTitle=document.title;if(typeof curTitle!=\"string\"){curTitle=origTitle=readability.getInnerText(document.getElementsByTagName(\'title\')[0]);}}catch(e){}if(curTitle.match(/ [\\|\\-] /)){curTitle=origTitle.replace(/(.*)[\\|\\-] .*/gi,\'$1\');if(curTitle.split(\' \').length<3){curTitle=origTitle.replace(/[^\\|\\-]*[\\|\\-](.*)/gi,\'$1\');}}else if(curTitle.indexOf(\': \')!==-1){curTitle=origTitle.replace(/.*:(.*)/gi,\'$1\');if(curTitle.split(\' \').length<3){curTitle=origTitle.replace(/[^:]*[:](.*)/gi,\'$1\');}}else if(curTitle.length>150||curTitle.length<15){var hOnes=document.getElementsByTagName(\'h1\');if(hOnes.length==1){curTitle=readability.getInnerText(hOnes[0]);}}curTitle=curTitle.replace(readability.regexps.trim,\"\");if(curTitle.split(\' \').length<=4){curTitle=origTitle;}var articleTitle=document.createElement(\"h1\");articleTitle.innerHTML=curTitle;return articleTitle;},getArticleFooter:function(){var articleFooter=document.createElement(\"div\");articleFooter.id=\"readFooter\";articleFooter.innerHTML=[\"<div id=\'rdb-footer-print\'>\",\"</div>\",\"<div id=\'rdb-footer-wrapper\'>\",\"</div>\"].join(\'\');return articleFooter;},prepDocument:function(){if(document.body===null){var body=document.createElement(\"body\");try{document.body=body;}catch(e){document.documentElement.appendChild(body);}}var metas = document.getElementsByTagName(\'meta\');for (i=0; i<metas.length; i++) { metas[i].parentElement.removeChild(metas[i]); }var meta = document.createElement(\'meta\');meta.setAttribute(\'name\', \'viewport\');meta.setAttribute(\'content\', \'width=device-width\');document.getElementsByTagName(\'head\')[0].appendChild(meta);document.body.id=\"readabilityBody\";var frames=document.getElementsByTagName(\'frame\');if(frames.length>0){var bestFrame=null;var bestFrameSize=0;var biggestFrameSize=0;for(var frameIndex=0;frameIndex<frames.length;frameIndex++){var frameSize=frames[frameIndex].offsetWidth+frames[frameIndex].offsetHeight;var canAccessFrame=false;try{frames[frameIndex].contentWindow.document.body;canAccessFrame=true;}catch(eFrames){}if(frameSize>biggestFrameSize){biggestFrameSize=frameSize;readability.biggestFrame=frames[frameIndex];}if(canAccessFrame&&frameSize>bestFrameSize){readability.frameHack=true;bestFrame=frames[frameIndex];bestFrameSize=frameSize;}}if(bestFrame){var newBody=document.createElement(\'body\');newBody.innerHTML=bestFrame.contentWindow.document.body.innerHTML;newBody.style.overflow=\'scroll\';document.body=newBody;var frameset=document.getElementsByTagName(\'frameset\')[0];if(frameset){frameset.parentNode.removeChild(frameset);}}}for(var k=0;k<document.styleSheets.length;k++){if(document.styleSheets[k].href!==null&&document.styleSheets[k].href.lastIndexOf(\"readability\")==-1){document.styleSheets[k].disabled=true;}}var styleTags=document.getElementsByTagName(\"style\");for(var st=0;st<styleTags.length;st++){styleTags[st].textContent=\"\";}document.body.innerHTML=document.body.innerHTML.replace(readability.regexps.replaceFonts,\'<$1span>\');},addFootnotes:function(articleContent){var footnotesWrapper=document.getElementById(\'readability-footnotes\'),articleFootnotes=document.getElementById(\'readability-footnotes-list\');if(!footnotesWrapper){footnotesWrapper=document.createElement(\"div\");footnotesWrapper.id=\'readability-footnotes\';footnotesWrapper.innerHTML=\'<h3>References</h3>\';footnotesWrapper.style.display=\'none\';articleFootnotes=document.createElement(\'ol\');articleFootnotes.id=\'readability-footnotes-list\';footnotesWrapper.appendChild(articleFootnotes);var readFooter=document.getElementById(\'readFooter\');if(readFooter){readFooter.parentNode.insertBefore(footnotesWrapper,readFooter);}}var articleLinks=articleContent.getElementsByTagName(\'a\');var linkCount=articleFootnotes.getElementsByTagName(\'li\').length;for(var i=0;i<articleLinks.length;i++){var articleLink=articleLinks[i],footnoteLink=articleLink.cloneNode(true),refLink=document.createElement(\'a\'),footnote=document.createElement(\'li\'),linkDomain=footnoteLink.host?footnoteLink.host:document.location.host,linkText=readability.getInnerText(articleLink);if(articleLink.className&&articleLink.className.indexOf(\'readability-DoNotFootnote\')!==-1||linkText.match(readability.regexps.skipFootnoteLink)){continue;}linkCount++;refLink.href=\'#readabilityFootnoteLink-\'+linkCount;refLink.innerHTML=\'<small><sup>[\'+linkCount+\']</sup></small>\';refLink.className=\'readability-DoNotFootnote\';try{refLink.style.color=\'inherit\';}catch(e){}if(articleLink.parentNode.lastChild==articleLink){articleLink.parentNode.appendChild(refLink);}else{articleLink.parentNode.insertBefore(refLink,articleLink.nextSibling);}articleLink.name=\'readabilityLink-\'+linkCount;try{articleLink.style.color=\'inherit\';}catch(e){}footnote.innerHTML=\"<small><sup><a href=\'#readabilityLink-\"+linkCount+\"\' title=\'Jump to Link in Article\'>^</a></sup></small> \";footnoteLink.innerHTML=(footnoteLink.title?footnoteLink.title:linkText);footnoteLink.name=\'readabilityFootnoteLink-\'+linkCount;footnote.appendChild(footnoteLink);footnote.innerHTML=footnote.innerHTML+\"<small> (\"+linkDomain+\")</small>\";articleFootnotes.appendChild(footnote);}if(linkCount>0){footnotesWrapper.style.display=\'block\';}},prepArticle:function(articleContent){readability.cleanStyles(articleContent);readability.cleanConditionally(articleContent,\"form\");readability.clean(articleContent,\"object\");readability.clean(articleContent,\"h1\");if(articleContent.getElementsByTagName(\'h2\').length==1){readability.clean(articleContent,\"h2\");}readability.clean(articleContent,\"iframe\");readability.cleanHeaders(articleContent);readability.cleanConditionally(articleContent,\"table\");readability.cleanConditionally(articleContent,\"ul\");readability.cleanConditionally(articleContent,\"div\");var articleParagraphs=articleContent.getElementsByTagName(\'p\');for(var i=articleParagraphs.length-1;i>=0;i--){var imgCount=articleParagraphs[i].getElementsByTagName(\'img\').length;var embedCount=articleParagraphs[i].getElementsByTagName(\'embed\').length;var objectCount=articleParagraphs[i].getElementsByTagName(\'object\').length;if(imgCount===0&&embedCount===0&&objectCount===0&&readability.getInnerText(articleParagraphs[i],false)==\'\'){articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);}}try{articleContent.innerHTML=articleContent.innerHTML.replace(/<br[^>]*>\\s*<p/gi,\'<p\');}catch(e){}},initializeNode:function(node){node.readability={\"contentScore\":0};switch(node.tagName){case\'DIV\':node.readability.contentScore+=5;break;case\'PRE\':case\'TD\':case\'BLOCKQUOTE\':node.readability.contentScore+=3;break;case\'ADDRESS\':case\'OL\':case\'UL\':case\'DL\':case\'DD\':case\'DT\':case\'LI\':case\'FORM\':node.readability.contentScore-=3;break;case\'H1\':case\'H2\':case\'H3\':case\'H4\':case\'H5\':case\'H6\':case\'TH\':node.readability.contentScore-=5;break;}node.readability.contentScore+=readability.getClassWeight(node);},grabArticle:function(page){var stripUnlikelyCandidates=readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS),isPaging=(page!==null)?true:false;page=page?page:document.body;var pageCacheHtml=page.innerHTML;var allElements=page.getElementsByTagName(\'*\');var node=null;var nodesToScore=[];for(var nodeIndex=0;(node=allElements[nodeIndex]);nodeIndex++){if(stripUnlikelyCandidates){var unlikelyMatchString=node.className+node.id;if((unlikelyMatchString.search(readability.regexps.unlikelyCandidates)!==-1&&unlikelyMatchString.search(readability.regexps.okMaybeItsACandidate)==-1&&node.tagName!==\"BODY\")){node.parentNode.removeChild(node);nodeIndex--;continue;}}if(node.tagName===\"P\"||node.tagName===\"TD\"||node.tagName===\"PRE\"){nodesToScore[nodesToScore.length]=node;}if(node.tagName===\"DIV\"){if(node.innerHTML.search(readability.regexps.divToPElements)===-1){var newNode=document.createElement(\'p\');try{newNode.innerHTML=node.innerHTML;node.parentNode.replaceChild(newNode,node);nodeIndex--;nodesToScore[nodesToScore.length]=node;}catch(e){}}else{for(var i=0,il=node.childNodes.length;i<il;i++){var childNode=node.childNodes[i];if(childNode.nodeType==3){var p=document.createElement(\'p\');p.innerHTML=childNode.nodeValue;p.style.display=\'inline\';p.className=\'readability-styled\';childNode.parentNode.replaceChild(p,childNode);}}}}}var candidates=[];for(var pt=0;pt<nodesToScore.length;pt++){var parentNode=nodesToScore[pt].parentNode;var grandParentNode=parentNode?parentNode.parentNode:null;var innerText=readability.getInnerText(nodesToScore[pt]);if(!parentNode||typeof(parentNode.tagName)==\'undefined\'){continue;}if(innerText.length<25){continue;}if(typeof parentNode.readability==\'undefined\'){readability.initializeNode(parentNode);candidates.push(parentNode);}if(grandParentNode&&typeof(grandParentNode.readability)==\'undefined\'&&typeof(grandParentNode.tagName)!=\'undefined\'){readability.initializeNode(grandParentNode);candidates.push(grandParentNode);}var contentScore=0;contentScore++;contentScore+=innerText.split(\',\').length;contentScore+=Math.min(Math.floor(innerText.length/100),3);parentNode.readability.contentScore+=contentScore;if(grandParentNode){grandParentNode.readability.contentScore+=contentScore/2;}}var topCandidate=null;for(var c=0,cl=candidates.length;c<cl;c++){candidates[c].readability.contentScore=candidates[c].readability.contentScore*(1-readability.getLinkDensity(candidates[c]));if(!topCandidate||candidates[c].readability.contentScore>topCandidate.readability.contentScore){topCandidate=candidates[c];}}if(topCandidate===null||topCandidate.tagName==\"BODY\"){topCandidate=document.createElement(\"div\");topCandidate.innerHTML=page.innerHTML;page.innerHTML=\"\";page.appendChild(topCandidate);readability.initializeNode(topCandidate);}var articleContent=document.createElement(\"div\");if(isPaging){articleContent.id=\"readability-content\";}var siblingScoreThreshold=Math.max(10,topCandidate.readability.contentScore*0.2);var siblingNodes=topCandidate.parentNode.childNodes;for(var s=0,sl=siblingNodes.length;s<sl;s++){var siblingNode=siblingNodes[s];var append=false;if(!siblingNode){continue;}if(siblingNode===topCandidate){append=true;}var contentBonus=0;if(siblingNode.className==topCandidate.className&&topCandidate.className!=\"\"){contentBonus+=topCandidate.readability.contentScore*0.2;}if(typeof siblingNode.readability!=\'undefined\'&&(siblingNode.readability.contentScore+contentBonus)>=siblingScoreThreshold){append=true;}if(siblingNode.nodeName==\"P\"){var linkDensity=readability.getLinkDensity(siblingNode);var nodeContent=readability.getInnerText(siblingNode);var nodeLength=nodeContent.length;if(nodeLength>80&&linkDensity<0.25){append=true;}else if(nodeLength<80&&linkDensity===0&&nodeContent.search(/\\.( |$)/)!==-1){append=true;}}if(append){var nodeToAppend=null;if(siblingNode.nodeName!=\"DIV\"&&siblingNode.nodeName!=\"P\"){nodeToAppend=document.createElement(\"div\");try{nodeToAppend.id=siblingNode.id;nodeToAppend.innerHTML=siblingNode.innerHTML;}catch(er){nodeToAppend=siblingNode;s--;sl--;}}else{nodeToAppend=siblingNode;s--;sl--;}nodeToAppend.className=\"\";articleContent.appendChild(nodeToAppend);}}readability.prepArticle(articleContent);if(readability.curPageNum===1){articleContent.innerHTML=\'<div id=\"readability-page-1\" class=\"page\">\'+articleContent.innerHTML+\'</div>\';}if(readability.getInnerText(articleContent,false).length<250){page.innerHTML=pageCacheHtml;if(readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS)){readability.removeFlag(readability.FLAG_STRIP_UNLIKELYS);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){readability.removeFlag(readability.FLAG_WEIGHT_CLASSES);return readability.grabArticle(page);}else if(readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){readability.removeFlag(readability.FLAG_CLEAN_CONDITIONALLY);return readability.grabArticle(page);}else{return null;}}return articleContent;},removeScripts:function(doc){var scripts=doc.getElementsByTagName(\'script\');for(var i=scripts.length-1;i>=0;i--){if(typeof(scripts[i].src)==\"undefined\"||(scripts[i].src.indexOf(\'readability\')==-1&&scripts[i].src.indexOf(\'typekit\')==-1)){scripts[i].nodeValue=\"\";scripts[i].removeAttribute(\'src\');if(scripts[i].parentNode){scripts[i].parentNode.removeChild(scripts[i]);}}}},getInnerText:function(e,normalizeSpaces){var textContent=\"\";if(typeof(e.textContent)==\"undefined\"&&typeof(e.innerText)==\"undefined\"){return\"\";}normalizeSpaces=(typeof normalizeSpaces==\'undefined\')?true:normalizeSpaces;if(navigator.appName==\"Microsoft Internet Explorer\"){textContent=e.innerText.replace(readability.regexps.trim,\"\");}else{textContent=e.textContent.replace(readability.regexps.trim,\"\");}if(normalizeSpaces){return textContent.replace(readability.regexps.normalize,\" \");}else{return textContent;}},getCharCount:function(e,s){s=s||\",\";return readability.getInnerText(e).split(s).length-1;},cleanStyles:function(e){e=e||document;var cur=e.firstChild;if(!e){return;}if(typeof e.removeAttribute==\'function\'&&e.className!=\'readability-styled\'){e.removeAttribute(\'style\');}while(cur!==null){if(cur.nodeType==1){if(cur.className!=\"readability-styled\"){cur.removeAttribute(\"style\");}readability.cleanStyles(cur);}cur=cur.nextSibling;}},getLinkDensity:function(e){var links=e.getElementsByTagName(\"a\");var textLength=readability.getInnerText(e).length;var linkLength=0;for(var i=0,il=links.length;i<il;i++){linkLength+=readability.getInnerText(links[i]).length;}return linkLength/textLength;},findBaseUrl:function(){var noUrlParams=window.location.pathname.split(\"?\")[0],urlSlashes=noUrlParams.split(\"/\").reverse(),cleanedSegments=[],possibleType=\"\";for(var i=0,slashLen=urlSlashes.length;i<slashLen;i++){var segment=urlSlashes[i];if(segment.indexOf(\".\")!==-1){possibleType=segment.split(\".\")[1];if(!possibleType.match(/[^a-zA-Z]/)){segment=segment.split(\".\")[0];}}if(segment.indexOf(\',00\')!==-1){segment=segment.replace(\',00\',\'\');}if(segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i)&&((i===1)||(i===0))){segment=segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i,\"\");}del=false;if(i<2&&segment.match(/^\\d{1,2}$/)){del=true;}if(i===0&&segment.toLowerCase()==\"index\")del=true;if(i<2&&segment.length<3&&!urlSlashes[0].match(/[a-z]/i))del=true;if(!del){cleanedSegments.push(segment);}}return window.location.protocol+\"//\"+window.location.host+cleanedSegments.reverse().join(\"/\");},xhr:function(){if(typeof XMLHttpRequest!==\'undefined\'&&(window.location.protocol!==\'file:\'||!window.ActiveXObject)){return new XMLHttpRequest();}else{try{return new ActiveXObject(\'Msxml2.XMLHTTP.6.0\');}catch(sixerr){}try{return new ActiveXObject(\'Msxml2.XMLHTTP.3.0\');}catch(threrr){}try{return new ActiveXObject(\'Msxml2.XMLHTTP\');}catch(err){}}return false;},successfulRequest:function(request){return(request.status>=200&&request.status<300)||request.status==304||(request.status===0&&request.responseText);},ajax:function(url,options){var request=readability.xhr();function respondToReadyState(readyState){if(request.readyState==4){if(readability.successfulRequest(request)){if(options.success){options.success(request);}}else{if(options.error){options.error(request);}}}}if(typeof options===\'undefined\'){options={};}request.onreadystatechange=respondToReadyState;request.open(\'get\',url,true);request.setRequestHeader(\'Accept\',\'text/html\');try{request.send(options.postBody);}catch(e){if(options.error){options.error();}}return request;},curPageNum:1,getClassWeight:function(e){if(!readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)){return 0;}var weight=0;if(typeof(e.className)===\'string\'&&e.className!=\'\'){if(e.className.search(readability.regexps.negative)!==-1){weight-=25;}if(e.className.search(readability.regexps.positive)!==-1){weight+=25;}}if(typeof(e.id)===\'string\'&&e.id!=\'\'){if(e.id.search(readability.regexps.negative)!==-1){weight-=25;}if(e.id.search(readability.regexps.positive)!==-1){weight+=25;}}return weight;},nodeIsVisible:function(node){return(node.offsetWidth!==0||node.offsetHeight!==0)&&node.style.display.toLowerCase()!==\'none\';},killBreaks:function(e){try{e.innerHTML=e.innerHTML.replace(readability.regexps.killBreaks,\'<br />\');}catch(eBreaks){}},clean:function(e,tag){var targetList=e.getElementsByTagName(tag);var isEmbed=(tag==\'object\'||tag==\'embed\');for(var y=targetList.length-1;y>=0;y--){if(isEmbed){var attributeValues=\"\";for(var i=0,il=targetList[y].attributes.length;i<il;i++){attributeValues+=targetList[y].attributes[i].value+\'|\';}if(attributeValues.search(readability.regexps.videos)!==-1){continue;}if(targetList[y].innerHTML.search(readability.regexps.videos)!==-1){continue;}}targetList[y].parentNode.removeChild(targetList[y]);}},cleanConditionally:function(e,tag){if(!readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)){return;}var tagsList=e.getElementsByTagName(tag);var curTagsLength=tagsList.length;for(var i=curTagsLength-1;i>=0;i--){var weight=readability.getClassWeight(tagsList[i]);var contentScore=(typeof tagsList[i].readability!=\'undefined\')?tagsList[i].readability.contentScore:0;if(weight+contentScore<0){tagsList[i].parentNode.removeChild(tagsList[i]);}else if(readability.getCharCount(tagsList[i],\',\')<10){var p=tagsList[i].getElementsByTagName(\"p\").length;var img=tagsList[i].getElementsByTagName(\"img\").length;var li=tagsList[i].getElementsByTagName(\"li\").length-100;var input=tagsList[i].getElementsByTagName(\"input\").length;var embedCount=0;var embeds=tagsList[i].getElementsByTagName(\"embed\");for(var ei=0,il=embeds.length;ei<il;ei++){if(embeds[ei].src.search(readability.regexps.videos)==-1){embedCount++;}}var linkDensity=readability.getLinkDensity(tagsList[i]);var contentLength=readability.getInnerText(tagsList[i]).length;var toRemove=false;if(img>p){toRemove=true;}else if(li>p&&tag!=\"ul\"&&tag!=\"ol\"){toRemove=true;}else if(input>Math.floor(p/3)){toRemove=true;}else if(contentLength<25&&(img===0||img>2)){toRemove=true;}else if(weight<25&&linkDensity>0.2){toRemove=true;}else if(weight>=25&&linkDensity>0.5){toRemove=true;}else if((embedCount==1&&contentLength<75)||embedCount>1){toRemove=true;}if(toRemove){tagsList[i].parentNode.removeChild(tagsList[i]);}}}},cleanHeaders:function(e){for(var headerIndex=1;headerIndex<3;headerIndex++){var headers=e.getElementsByTagName(\'h\'+headerIndex);for(var i=headers.length-1;i>=0;i--){if(readability.getClassWeight(headers[i])<0||readability.getLinkDensity(headers[i])>0.33){headers[i].parentNode.removeChild(headers[i]);}}}},easeInOut:function(start,end,totalSteps,actualStep){var delta=end-start;if((actualStep/=totalSteps/2)<1){return delta/2*actualStep*actualStep+start;}return-delta/2*((--actualStep)*(actualStep-2)-1)+start;},scrollTop:function(scroll){var setScroll=typeof scroll!=\'undefined\';if(setScroll){return window.scrollTo(0,scroll);}if(typeof window.pageYOffset!=\'undefined\'){return window.pageYOffset;}else if(document.documentElement.clientHeight){return document.documentElement.scrollTop;}else{return document.body.scrollTop;}},curScrollStep:0,scrollTo:function(scrollStart,scrollEnd,steps,interval){if((scrollStart<scrollEnd&&readability.scrollTop()<scrollEnd)||(scrollStart>scrollEnd&&readability.scrollTop()>scrollEnd)){readability.curScrollStep++;if(readability.curScrollStep>steps){return;}var oldScrollTop=readability.scrollTop();readability.scrollTop(readability.easeInOut(scrollStart,scrollEnd,steps,readability.curScrollStep));if(oldScrollTop==readability.scrollTop()){return;}window.setTimeout(function(){readability.scrollTo(scrollStart,scrollEnd,steps,interval);},interval);}},removeFrame:function(){readability.iframeLoads++;if(readability.iframeLoads>3){var emailContainer=document.getElementById(\'email-container\');if(null!==emailContainer){emailContainer.parentNode.removeChild(emailContainer);}readability.iframeLoads=0;}},htmlspecialchars:function(s){if(typeof(s)==\"string\"){s=s.replace(/&/g,\"&amp;\");s=s.replace(/\"/g,\"&quot;\");s=s.replace(/\'/g,\"&#039;\");s=s.replace(/</g,\"&lt;\");s=s.replace(/>/g,\"&gt;\");}return s;},flagIsActive:function(flag){return(readability.flags&flag)>0;},addFlag:function(flag){readability.flags=readability.flags|flag;},removeFlag:function(flag){readability.flags=readability.flags&~flag;},addCss:function(cssCode){var styleElement = document.createElement(\"style\");styleElement.type=\"text/css\";if(styleElement.styleSheet){styleElement.styleSheet.cssText = cssCode;}else{styleElement.appendChild(document.createTextNode(cssCode));}document.getElementsByTagName(\"head\")[0].appendChild(styleElement);},setTheme:function(theme){document.body.setAttribute(\"class\", theme);}};readability.init();"

    :goto_1
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "readability.addCss(\'p:empty,li:empty{display:none}body {margin:0;padding:0;line-height:1.4em;color:#464646;background:#f9f9f9;}body.dark {color:#eee;background:#1f1f1f;}body.black {color:#f9f9f9;background:#000;}body.sepia {color:#444;background:#d4cfca;}"

    .line 8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_5

    const-string v0, "#readInner {margin:60px 40px 60px 40px;}"

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const-string v0, "#readInner {margin:50px 25px 50px 25px;}"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v0, "#readInner {margin:50px 15px 50px 10px;}"

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, "#readHeader a, #readInner a{color:#1E83CB;text-decoration:none}#readInner h1{display:block;width:100%;margin:0 0 5px 0;padding: 0 0 5px 0;font-size:1.2em;line-height:1.1em;}#readInner .box{width:93%;text-align:center;background:#eee;margin-right:5px;padding:10px;}#readInner .spAuthor{font-size:.8em;line-height:1.1em}#readInner #spIntroTeaser {font-weight:bold}#readInner img {max-width:100%;height:auto;width:auto;}#readInner blockquote{margin-left:3em;margin-right:3em}#readability-inner *{margin-bottom:16px;border:none;background:none}.size-medium{font-size:1em}\');"

    .line 12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    goto :goto_5

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->d()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h(Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V

    goto :goto_4

    .line 18
    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :goto_4
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->i:Z

    .line 20
    iput-boolean v1, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->j:Z

    :cond_a
    :goto_5
    return-void
.end method

.method public final x(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->w(Landroid/webkit/WebView;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-eqz v1, :cond_3

    const v2, 0x7f080178

    const v3, 0x7f1101c7

    .line 6
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Loy6;

    invoke-direct {v5, p1, v2, v3}, Loy6;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-virtual {v0}, Lcom/noinnion/android/reader/ui/widget/ItemWebView;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lap6;->k:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 10
    new-instance v2, Lox6$a;

    invoke-direct {v2}, Lox6$a;-><init>()V

    .line 11
    iput-boolean v3, v2, Lox6$a;->d:Z

    .line 12
    iput-boolean v3, v2, Lox6$a;->a:Z

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Lox6$a;->b(Ljava/util/List;)Lox6$a;

    .line 14
    invoke-virtual {v2}, Lox6$a;->a()Lox6;

    move-result-object v2

    const-string v3, "url"

    .line 15
    invoke-static {p1, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v3, Lpx6;

    invoke-direct {v3, p1, v2}, Lpx6;-><init>(Ljava/lang/String;Lox6;)V

    .line 17
    new-instance v2, Lmh7;

    invoke-direct {v2, v3}, Lmh7;-><init>(Ljava/util/concurrent/Callable;)V

    const-string v3, "Single.fromCallable {\n  \u2026l(url, options)\n        }"

    .line 18
    invoke-static {v2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v3, Lej7;->c:Lzb7;

    const-string v4, "scheduler is null"

    .line 20
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    new-instance v4, Lrh7;

    invoke-direct {v4, v2, v3}, Lrh7;-><init>(Lec7;Lzb7;)V

    .line 22
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v2

    invoke-virtual {v4, v2}, Lac7;->f(Lzb7;)Lac7;

    move-result-object v2

    .line 23
    new-instance v3, Lrq6;

    invoke-direct {v3, v1, p1}, Lrq6;-><init>(Lap6;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lac7;->e(Luc7;)Lac7;

    move-result-object p1

    const-string v1, "HtmlExtractorUtils.extra\u2026   item\n                }"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lsq6;

    invoke-direct {v1, p0, v0}, Lsq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V

    .line 25
    new-instance v0, Ltq6;

    invoke-direct {v0, p0}, Ltq6;-><init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V

    .line 26
    invoke-static {p1, v0, v1}, Lbj7;->f(Lac7;Lpl7;Lpl7;)Lic7;

    move-result-object p1

    const-string v0, "$this$addTo"

    .line 27
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposable"

    .line 28
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lrw6;->e:Lhc7;

    invoke-virtual {v0, p1}, Lhc7;->b(Lic7;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->h:Lap6$a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->j:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public final z(I)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz p1, :cond_2

    iget p1, p1, Lkw6;->q:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_2
    const-string p1, "mReadingOptions"

    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
