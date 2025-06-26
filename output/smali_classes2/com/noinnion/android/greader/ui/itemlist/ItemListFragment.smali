.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$i;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$h;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$d;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$l;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;,
        Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;
    }
.end annotation


# instance fields
.field public e:Ler6;

.field public f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

.field public g:Landroidx/recyclerview/widget/RecyclerView$m;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:J

.field public p:J

.field public q:Lhr6;

.field public r:Landroid/content/BroadcastReceiver;

.field public s:Z

.field public vEmptyMessage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034b
    .end annotation
.end field

.field public vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034c
    .end annotation
.end field

.field public vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090351
    .end annotation
.end field

.field public vProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090354
    .end annotation
.end field

.field public vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090355
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i:Z

    .line 4
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    .line 5
    iput v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->k:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l:Z

    .line 7
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m:Z

    .line 8
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n:Z

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->o:J

    .line 10
    iput-wide v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->p:J

    .line 11
    new-instance v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r:Landroid/content/BroadcastReceiver;

    .line 12
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyo6;->h(Landroid/content/Context;Z)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lxq6;

    invoke-direct {v1, p0}, Lxq6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(JILandroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p1, p2, v1}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1, v1}, Ln56;->O1(Landroid/app/Activity;Lap6;Z)V

    goto/16 :goto_3

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 7
    invoke-static {p3}, Liw6;->J(Landroid/content/Context;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_4

    .line 8
    iget-boolean p2, p1, Lap6;->s:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lap6;->t:I

    const/4 p3, 0x3

    if-lt p2, p3, :cond_3

    const-string p2, "cache://"

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p1, Lap6;->k:Ljava/lang/String;

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-wide v0, p1, Lap6;->e:J

    iget-object p1, p1, Lap6;->h:Ljava/lang/String;

    invoke-static {p3, v0, v1, p2, p1}, Ln56;->V1(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p2

    iget-object p3, p1, Lap6;->h:Ljava/lang/String;

    iget-object p1, p1, Lap6;->k:Ljava/lang/String;

    new-instance p4, Lzq6;

    invoke-direct {p4, p0}, Lzq6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    const-string v0, "gReader"

    .line 12
    invoke-static {p2, p3, p1, v0, p4}, Luw6;->e(Lwb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luw6$c;)V

    goto/16 :goto_3

    .line 13
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object v1

    iget-object v3, p1, Lap6;->h:Ljava/lang/String;

    iget-object v4, p1, Lap6;->k:Ljava/lang/String;

    new-instance v6, Lar6;

    invoke-direct {v6, p0}, Lar6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    const-string v2, "7fnd4H0ZTH078G9880A5166Da2g3T143"

    const-string v5, "gReader"

    .line 14
    invoke-static/range {v1 .. v6}, Lvw6;->e(Lwb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvw6$c;)V

    goto/16 :goto_3

    .line 15
    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lap6;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lap6;->k:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Ln56;->R1(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 17
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p1, Lap6;->h:Ljava/lang/String;

    iget-object p1, p1, Lap6;->k:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Ln56;->Q1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object p4, p1, Lap6;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Liw6;->Q(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p3, p4, v2}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 19
    iget-boolean p3, p1, Lap6;->v:Z

    if-nez p3, :cond_7

    new-array p3, v1, [J

    .line 20
    iget-wide v2, p1, Lap6;->e:J

    aput-wide v2, p3, v0

    new-array p4, v1, [J

    iget-wide v1, p1, Lap6;->g:J

    aput-wide v1, p4, v0

    invoke-virtual {p0, p3, p2, p4}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_3

    .line 21
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s(Lap6;)V

    goto :goto_3

    .line 22
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->t(Lap6;)V

    .line 23
    invoke-virtual {p4}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 24
    :pswitch_a
    invoke-virtual {p4}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_5

    new-array p2, v1, [J

    .line 25
    iget-wide v2, p1, Lap6;->e:J

    aput-wide v2, p2, v0

    new-array p3, v1, [J

    aput-wide v2, p3, v0

    new-array v2, v1, [J

    iget-wide v3, p1, Lap6;->g:J

    aput-wide v3, v2, v0

    invoke-virtual {p0, p2, p3, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_1

    :cond_5
    new-array p2, v1, [J

    .line 26
    iget-wide v2, p1, Lap6;->e:J

    aput-wide v2, p2, v0

    new-array p3, v1, [J

    iget-wide v2, p1, Lap6;->g:J

    aput-wide v2, p3, v0

    invoke-virtual {p0, p2, p3}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j([J[J)V

    .line 27
    :goto_1
    invoke-virtual {p4}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 28
    :pswitch_b
    invoke-virtual {p4}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_6

    new-array p3, v1, [J

    .line 29
    iget-wide v2, p1, Lap6;->e:J

    aput-wide v2, p3, v0

    new-array v2, v1, [J

    iget-wide v3, p1, Lap6;->g:J

    aput-wide v3, v2, v0

    invoke-virtual {p0, p2, p3, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_2

    :cond_6
    new-array p3, v1, [J

    .line 30
    iget-wide v2, p1, Lap6;->e:J

    aput-wide v2, p3, v0

    new-array v2, v1, [J

    iget-wide v3, p1, Lap6;->g:J

    aput-wide v3, v2, v0

    invoke-virtual {p0, p3, p2, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    .line 31
    :goto_2
    invoke-virtual {p4}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p4, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e(Lap6;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s(Lap6;)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->t(Lap6;)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->u(Lap6;)V

    goto :goto_1

    :cond_4
    new-array p2, v0, [J

    .line 5
    iget-wide v1, p1, Lap6;->e:J

    const/4 v3, 0x0

    aput-wide v1, p2, v3

    .line 6
    iget-wide v1, p1, Lap6;->g:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v1, v4

    if-lez v7, :cond_5

    new-array v0, v0, [J

    aput-wide v1, v0, v3

    goto :goto_0

    :cond_5
    move-object v0, v6

    .line 7
    :goto_0
    iget-boolean p1, p1, Lap6;->v:Z

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p0, v6, p2, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p0, p2, v6, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    :cond_7
    :goto_1
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->s:Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    .line 3
    iput p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->k:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ler6;->b()V

    .line 7
    :cond_0
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lhz6;->b:Lkz6;

    .line 9
    iget-object v0, p1, Lkz6;->a:Liz6;

    iget-boolean v0, v0, Liz6;->d:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p1, Lkz6;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 11
    :cond_1
    iget-object v0, p1, Lkz6;->a:Liz6;

    iget-boolean v0, v0, Liz6;->e:Z

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p1, Lkz6;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 13
    :cond_2
    iget-object v0, p1, Lkz6;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object p1, p1, Lkz6;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    invoke-virtual {p1}, Lep6;->O()V

    :cond_3
    return-void
.end method

.method public final i(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700c9

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;

    invoke-direct {v2, p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$b;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;I)V

    .line 6
    iput-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v0, p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 14
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public j([J[J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lep6;->B([J[J[JZZ)V

    return-void
.end method

.method public final l(II)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 3
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    add-int v4, p1, v2

    invoke-virtual {v3, v4}, Lt27;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "_id"

    .line 4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "read"

    .line 5
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "keep_unread"

    .line 6
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_id"

    .line 7
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 8
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 9
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    invoke-static {v0}, Ln56;->A(Ljava/util/List;)[J

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v5

    const/4 v6, 0x1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lep6;->B([J[J[JZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public m([J[J[J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lep6;->B([J[J[JZZ)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1(I)V

    :cond_2
    return-void
.end method

.method public o(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 3
    :cond_1
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget p1, p1, Lhw6;->p:I

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Ler6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ler6;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    new-instance v1, Lfr6;

    invoke-direct {v1, p0}, Lfr6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    new-instance v0, Lt07$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lt07$b;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lt07$b;->e:Z

    const v3, 0x7f0c0067

    .line 8
    iput v3, v0, Lt07$b;->b:I

    .line 9
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-object v3, v0, Lt07$b;->c:Landroid/view/ViewGroup;

    .line 11
    new-instance v3, Lt07;

    invoke-direct {v3, v0}, Lt07;-><init>(Lt07$b;)V

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 13
    iput-object v3, v0, Ler6;->q:Lt07;

    .line 14
    new-instance v4, Ldr6;

    invoke-direct {v4, v0, v3}, Ldr6;-><init>(Ler6;Lt07;)V

    .line 15
    iput-object v4, v3, Lt07;->m:Lt07$d;

    .line 16
    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$c;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 17
    iput-object v3, v0, Ler6;->s:Lbn6;

    .line 18
    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 19
    iput-object v3, v0, Ler6;->t:Lbn6;

    .line 20
    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$d;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$d;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 21
    iput-object v3, v0, Ler6;->u:Lbn6;

    .line 22
    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$h;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$h;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 23
    iput-object v3, v0, Ler6;->v:Lbn6;

    .line 24
    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$e;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 25
    iget-object v0, v0, Ler6;->r:Lan6;

    const-string v4, "EVENT_ITEM_LEFT_SWIPE_ACTION"

    invoke-virtual {v0, v4, v3}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 26
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    new-instance v3, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$i;

    invoke-direct {v3, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$i;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, v0, Ler6;->r:Lan6;

    const-string v4, "EVENT_ITEM_RIGHT_SWIPE_ACTION"

    invoke-virtual {v0, v4, v3}, Lan6;->a(Ljava/lang/String;Lbn6;)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c0064

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0xc8

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v3, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iput-object v3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    .line 34
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->addFooterView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    if-eqz p1, :cond_0

    const-string v0, "cursorPosition"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->h:I

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lon6;->a:Lew6;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lew6;->g:J

    .line 39
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i:Z

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lwq6;

    invoke-direct {v0, p0}, Lwq6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    :goto_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lgr6;

    invoke-direct {v0, p0}, Lgr6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090122

    if-eq v1, v2, :cond_3

    const v2, 0x7f09017e

    if-eq v1, v2, :cond_1

    const v3, 0x7f090271

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget v0, v0, Lhw6;->q:I

    goto :goto_0

    :cond_2
    iget v0, v0, Lhw6;->r:I

    :goto_0
    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->d(JILandroid/view/View;)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST_POSITION"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 8
    invoke-static {p1}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->n:Z

    const-string v0, "item_list_mark_read_on_scroll"

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v0, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i:Z

    .line 11
    new-instance v0, Lhr6;

    invoke-direct {v0, p1}, Lhr6;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q:Lhr6;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0065

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    invoke-static {p2}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    iget p2, p2, Lhw6;->c:I

    invoke-virtual {p0, p2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->i(I)V

    .line 6
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {p2}, Ljw6;->d(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 7
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vListSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 8
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {p2}, Ljw6;->d(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vEmptySwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v1

    invoke-virtual {v1}, Lep6;->O()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v1, v0}, Lt27;->changeCursor(Landroid/database/Cursor;)V

    .line 7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l:Z

    .line 3
    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {v0}, Landroid/support/v7/widget/LayoutManagerHelper;->getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result v0

    const-string v1, "cursorPosition"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q:Lhr6;

    new-instance v1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$f;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    .line 3
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v0, v2, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q:Lhr6;

    invoke-virtual {v0}, Lvm6;->b()V

    return-void
.end method

.method public p(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v2, :cond_3

    .line 3
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget p1, p1, Lhw6;->p:I

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p1}, Landroid/support/v7/widget/LayoutManagerHelper;->getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {v0}, Landroid/support/v7/widget/LayoutManagerHelper;->getLastVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    return v4

    :cond_3
    const/16 v2, 0x19

    if-ne p1, v2, :cond_6

    .line 7
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget p1, p1, Lhw6;->p:I

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0, v4}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q(Z)V

    return v4

    .line 9
    :cond_5
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q(Z)V

    return v4

    :cond_6
    :goto_1
    return v1
.end method

.method public q(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {v0}, Landroid/support/v7/widget/LayoutManagerHelper;->getLastVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result v0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-static {p1}, Landroid/support/v7/widget/LayoutManagerHelper;->getFirstVisiblePosition(Landroidx/recyclerview/widget/RecyclerView$m;)I

    move-result p1

    sub-int v1, v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v2}, Lt27;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l(II)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {v0}, Lt27;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->k0(II)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->f:Landroid/support/v7/widget/HeaderViewRecyclerAdapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/HeaderViewRecyclerAdapter;->getFooterCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnr6;

    iget-wide v1, p1, Lnr6;->e:J

    .line 12
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    invoke-virtual {p1}, Lt27;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lt27;->getItemId(I)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->vRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/home/HomeActivity;->T(Landroid/app/Activity;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/home/HomeActivity;->T(Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public r(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->l:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m:Z

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q:Lhr6;

    invoke-virtual {p1}, Lvm6;->a()V

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->q:Lhr6;

    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {p1, v0}, Lvm6;->e(Ljava/lang/Object;)J

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->e:Ler6;

    .line 7
    iput-boolean p2, p1, Ler6;->p:Z

    return-void
.end method

.method public final s(Lap6;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lap6;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->v(Lap6;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p1, Lap6;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->L1(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final t(Lap6;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v1

    iget-boolean v2, p1, Lap6;->r:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v2}, Lep6;->j(Lap6;Z)V

    .line 4
    iget-boolean v1, p1, Lap6;->r:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lap6;->s:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    iget-boolean v0, v0, Lhw6;->u:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p1, Lap6;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->L1(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u(Lap6;)V
    .locals 9

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 1
    iget-wide v2, p1, Lap6;->e:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x0

    .line 2
    iget-wide v5, p1, Lap6;->g:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    new-array v2, v0, [J

    aput-wide v5, v2, v4

    .line 3
    :cond_0
    iget-boolean p1, p1, Lap6;->u:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v1, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j([J[J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v(Lap6;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lap6;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Liw6;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lap6;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ln56;->E0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v2}, Lhy6;->c(Ljava/io/File;)V

    .line 7
    :cond_1
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    iget-wide v1, p1, Lap6;->e:J

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lep6;->h(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
