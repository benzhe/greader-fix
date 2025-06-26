.class public Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lnr6;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lnr6;

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment$g;->a:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 6
    iget-wide v3, p1, Lnr6;->e:J

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 p1, 0x1

    .line 7
    invoke-static {v5, v3, v4, p1}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 8
    :cond_2
    new-instance v6, Lro$c;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Lro$c;-><init>(Landroid/app/Activity;)V

    .line 9
    iget-object v0, v2, Lap6;->h:Ljava/lang/String;

    .line 10
    iput-object v0, v6, Lro$c;->d:Ljava/lang/CharSequence;

    .line 11
    iget-boolean v0, v2, Lap6;->v:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    const v7, 0x7f11019f

    .line 12
    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    const v7, 0x7f11019c

    .line 13
    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    :goto_0
    const/4 v0, 0x6

    const v7, 0x7f11019d

    .line 14
    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 15
    iget-boolean v0, v2, Lap6;->u:Z

    const/4 v7, 0x3

    if-eqz v0, :cond_4

    const v0, 0x7f1101aa

    .line 16
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_1

    :cond_4
    const v0, 0x7f110199

    .line 17
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    :goto_1
    const v0, 0x7f110352

    .line 18
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 19
    iget-boolean p1, v2, Lap6;->s:Z

    if-eqz p1, :cond_5

    const/16 p1, 0xf

    const v0, 0x7f1101b8

    .line 20
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_2

    :cond_5
    const/16 p1, 0xd

    const v0, 0x7f1101ae

    .line 21
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 22
    :goto_2
    sget-object p1, Lon6;->a:Lew6;

    iget-boolean p1, p1, Lew6;->d:Z

    if-eqz p1, :cond_6

    const/16 p1, 0x10

    const v0, 0x7f1101b9

    .line 23
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_3

    :cond_6
    const/16 p1, 0xe

    const v0, 0x7f1101af

    .line 24
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 25
    :goto_3
    invoke-virtual {v2}, Lap6;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x11

    const v0, 0x7f1100c6

    .line 26
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 27
    :cond_7
    iget-boolean p1, v2, Lap6;->r:Z

    const/16 v0, 0xb

    if-eqz p1, :cond_8

    const p1, 0x7f1101ab

    .line 28
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_4

    :cond_8
    const p1, 0x7f110188

    .line 29
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    :goto_4
    const/16 p1, 0xc

    const v0, 0x7f1101b4

    .line 30
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 31
    new-instance p1, Lyq6;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lyq6;-><init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;Lap6;JLandroid/content/Context;)V

    .line 32
    iput-object p1, v6, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-virtual {v6}, Lro$c;->d()Lro;

    :cond_9
    :goto_5
    return-void
.end method
