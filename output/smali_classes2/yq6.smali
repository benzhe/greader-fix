.class public final synthetic Lyq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

.field public final synthetic f:Lap6;

.field public final synthetic g:J

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lap6;JLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iput-object p2, p0, Lyq6;->f:Lap6;

    iput-wide p3, p0, Lyq6;->g:J

    iput-object p5, p0, Lyq6;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Lyq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    iget-object v0, p0, Lyq6;->f:Lap6;

    iget-wide v1, p0, Lyq6;->g:J

    iget-object v3, p0, Lyq6;->h:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-eq p2, v4, :cond_5

    const/4 v5, 0x3

    if-eq p2, v5, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq p2, v5, :cond_3

    const/4 v5, 0x5

    if-eq p2, v5, :cond_2

    const/4 v5, 0x6

    if-eq p2, v5, :cond_1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v1, v2, v7}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Ln56;->U1(Landroid/app/Activity;Lap6;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    new-instance p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$l;

    invoke-direct {p2, p1, v6}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$l;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    new-array p1, v4, [Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v7

    .line 6
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {p2, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, v1, v2, v7}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->v(Lap6;)V

    .line 10
    invoke-virtual {p1, v7, v7}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->r(ZZ)V

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;

    invoke-direct {p2, p1, v6}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$k;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    new-array p1, v4, [Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v7

    .line 12
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 13
    invoke-virtual {p2, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ln56;->L1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->d(Lwb;J)V

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->t(Lap6;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance p2, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;

    invoke-direct {p2, p1, v6}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$j;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V

    new-array p1, v4, [Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v7

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    new-array p2, v4, [J

    aput-wide v1, p2, v7

    new-array v1, v4, [J

    .line 18
    iget-wide v2, v0, Lap6;->g:J

    aput-wide v2, v1, v7

    invoke-virtual {p1, v6, p2, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [J

    aput-wide v1, p2, v7

    new-array v1, v4, [J

    .line 19
    iget-wide v2, v0, Lap6;->g:J

    aput-wide v2, v1, v7

    invoke-virtual {p1, p2, v6, v1}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->m([J[J[J)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->u(Lap6;)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v4}, Ln56;->O1(Landroid/app/Activity;Lap6;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
